local minimum_ticks_between_sounds = 120-- = 2 sec. at 60fps

function index_of(elem, list)
    local current_index = nil
    for i,e in ipairs(list) do
        if e == elem then
            current_index = i
            break
        end
    end
    return current_index
end

function train_state_to_string(state)
    if state
    then
        if state == defines.train_state.path_lost
        then
            return "path_lost"
        elseif state == defines.train_state.no_path
        then
            return "no_path"
        elseif state == defines.train_state.arrive_signal
        then
            return "arrive_signal"
        elseif state == defines.train_state.wait_signal
        then
            return "wait_signal"
        elseif state == defines.train_state.arrive_station
        then
            return "arrive_station"
        elseif state == defines.train_state.wait_station
        then
            return "wait_station"
        else
            return tostring(state)
        end
    else
        return "nil"
    end
end

function get_mod_setting(player, name)
    if player and player.mod_settings and player.mod_settings[name]
    then
--         game.print("INFO: Getting mod setting " .. name .. " with value " .. player.mod_settings[name].value)
        return player.mod_settings[name].value
    else
        game.print("ERROR: cannot find mod setting " .. name .. " for player " .. player.name)
        return nil
    end
end

function get_train_for_player(player)
    if player.vehicle and player.vehicle.valid and player.vehicle.train and player.vehicle.train.valid
    then
        return player.vehicle.train
    else
        return nil
    end
end

function get_rails_to_next_stop(train)
    if train.path_end_stop and train.path
    then
        return train.path.size - train.path.current
    else
        return nil
    end
end

function schedule_announcement(player, sound, tick)
    local player_index = index_of(player, global.pending_players)
    if player_index and player_index > 0
    then
        game.print("ERROR: announcement already scheduled for player " .. player.name)
    else
        table.insert(global.pending_players, player)
        table.insert(global.pending_announcement_sound_for_players, sound)
        table.insert(global.pending_announcement_tick_for_players, tick)
    end
end

function reset_pending_announcement(player)
    local player_index = index_of(player, global.pending_players)
    if player_index and player_index > 0
    then
        table.remove(global.pending_players, player_index)
        table.remove(global.pending_announcement_sound_for_players, player_index)
        table.remove(global.pending_announcement_tick_for_players, player_index)
    end
end

function get_and_remove_pending_announcement(player)
    local player_index = index_of(player, global.pending_players)
    local announcement_sound = nil
    if player_index and player_index > 0
    then
        announcement_sound = global.pending_announcement_sound_for_players[player_index]
        table.remove(global.pending_players, player_index)
        table.remove(global.pending_announcement_sound_for_players, player_index)
        table.remove(global.pending_announcement_tick_for_players, player_index)
    end
    return announcement_sound
end

function has_pending_announcement_on_tick(player, tick)
    local player_index = index_of(player, global.pending_players)
    if player_index and player_index > 0
    then
        local announcement_tick = global.pending_announcement_tick_for_players[player_index]
        if announcement_tick and announcement_tick == tick
        then
            return true
        end
    end
    return false
end

function minimum_ticks_between_announcements_reached(player)
    if global.previous_announcement_tick_for_players[player.name] == nil or game.tick >= global.previous_announcement_tick_for_players[player.name] + minimum_ticks_between_sounds
    then
        global.previous_announcement_tick_for_players[player.name] = game.tick
        return true
    else
        --game.print("tick: " .. game.tick .. ", skipping sound as minimum ticks not passed -> probably a duplicate")
        return false
    end
end

function play_sound_for_player(player, sound)
    local volume = get_mod_setting(player, "train_announcements_volume")
    local play_sound_enabled = get_mod_setting(player, "train_announcements_play_announcement_sound_enabled")
    if volume and volume > 0 and play_sound_enabled then
        player.play_sound({path = sound, volume_modifier = volume, override_sound_type = "alert"})
    end
end

function is_approaching_final_station(train)
    if train.path_end_stop and train.path_end_stop.backer_name and train.schedule and train.schedule.current and train.schedule.records
    then
        local lower_station_name = string.lower(train.path_end_stop.backer_name)
        return string.find(lower_station_name, "final")
            or string.find(lower_station_name, "1000km")
            or string.find(lower_station_name, "endstation")
            or train.schedule.current == #(train.schedule.records)
    else
        return nil
    end
end

function train_is_on_announcement_distance(train, player)
    local required_rails_to_next_stop = get_mod_setting(player, "train_announcements_number_of_rails_before_station")
    local actual_rails_to_next_stop = get_rails_to_next_stop(train)
    return actual_rails_to_next_stop and required_rails_to_next_stop and required_rails_to_next_stop > 0 and actual_rails_to_next_stop == required_rails_to_next_stop
end

function train_has_lost_path(train)
    if train.state and train.state == defines.train_state.path_lost
    then
        return true
    else
        return false
    end
end

function has_entered_no_path_train_state(player)
    return global.current_train_state_for_players[player.name] == defines.train_state.no_path and 
           global.current_train_state_for_players[player.name] ~= global.previous_train_state_for_players[player.name]
           
end

function needs_station_announcement(player)
    local train = get_train_for_player(player)
    return train and train.valid and train_is_on_announcement_distance(train, player)
end

function needs_final_station_announcement(player)
    local train = get_train_for_player(player)
    return train and train.valid and train_is_on_announcement_distance(train, player) and is_approaching_final_station(train)
end

function needs_interruption_announcement(player)
    return has_entered_no_path_train_state(player)
end

function get_jingle_and_announcement_sound_for_player(player)
    local sounds = {}
    if needs_interruption_announcement(player)
    then
        sounds["jingle"] = get_mod_setting(player, "train_announcements_interruption_jingle_sound")
        sounds["announcement"] = get_mod_setting(player, "train_announcements_interruption_announcement_sound")
        sounds["type"] = "interruption"
    elseif needs_final_station_announcement(player)
    then
        sounds["jingle"] = get_mod_setting(player, "train_announcements_final_station_jingle_sound")
        sounds["announcement"] = get_mod_setting(player, "train_announcements_final_station_announcement_sound")
        sounds["type"] = "final station"
    elseif needs_station_announcement(player)
    then
        sounds["jingle"] = get_mod_setting(player, "train_announcements_station_jingle_sound")
        sounds["announcement"] = get_mod_setting(player, "train_announcements_station_announcement_sound")
        sounds["type"] = "station"
    end
    return sounds
end

function update_train_states_for_player(player)
    global.previous_train_state_for_players[player.name] = global.current_train_state_for_players[player.name]
    
    local train = get_train_for_player(player)
    if train and train.valid
    then
        global.current_train_state_for_players[player.name] = train.state
    else
        global.current_train_state_for_players[player.name] = nil
    end
end

function get_next_station_name_for_player(player)
    local train = get_train_for_player(player)
    if train and train.path_end_stop and train.path_end_stop.backer_name
    then
        return train.path_end_stop.backer_name
    else
        return ""
    end
end

function print_message_to_player(player, type, announcement_sound)
    local print_message_enabled = get_mod_setting(player, "train_announcements_print_announcement_message_enabled")
    local message = "[img=entity/locomotive] " .. game.tick
    if not type or not print_message_enabled
    then
        return
    elseif type == "interruption"
    then
        player.print(message .. "[color=255,0,0]Train is interrupted![/color]")
    elseif type == "final station"
    then
        player.print(message .. "[color=255,0,0]Next station is final in schedule:[/color] " .. get_next_station_name_for_player(player))
    elseif type == "station"
    then
        player.print(message .. "[color=255,0,0]Next station:[/color] " .. get_next_station_name_for_player(player))
    else
        --unknown type
    end
end

function process_player(player)
    update_train_states_for_player(player)
    
    -- TODO: add #1..20 settings
    local sounds = get_jingle_and_announcement_sound_for_player(player)
    if sounds and (sounds["jingle"] or sounds["announcement"])
    then
        reset_pending_announcement(player)

        local jingle_sound = sounds["jingle"]
        local announcement_sound = sounds["announcement"]
        local seconds_to_wait = get_mod_setting(player, "train_announcements_seconds_between_jingle_and_announcement")
        
        if jingle_sound and game.is_valid_sound_path(jingle_sound)
        then
            if minimum_ticks_between_announcements_reached(player)
            then
                print_message_to_player(player, sounds["type"], announcement_sound)
                play_sound_for_player(player, jingle_sound)
                if announcement_sound and game.is_valid_sound_path(announcement_sound) and seconds_to_wait
                then
                    local ticks_to_wait = math.floor(seconds_to_wait * 60)
                    schedule_announcement(player, announcement_sound, game.tick + ticks_to_wait)
                else
                    -- game.print("WARNING: announcement config invalid (announcement_sound=" .. announcement_sound .. ")")
                end
            end
        elseif announcement_sound and game.is_valid_sound_path(announcement_sound)
        then
            if minimum_ticks_between_announcements_reached(player)
            then
                print_message_to_player(player, sounds["type"], announcement_sound)
                play_sound_for_player(player, announcement_sound)
            end
        end
    elseif has_pending_announcement_on_tick(player, game.tick)
    then
        local announcement_sound = get_and_remove_pending_announcement(player)
        play_sound_for_player(player, announcement_sound)
    end
end

function process_ontick_event(event)
    for _,player in pairs(game.players) do
        if player and player.valid
        then
            process_player(player)
        end
    end
end

script.on_event(defines.events.on_tick, function(event)
    if event
    then
        process_ontick_event(event)
    end
end)

function init_globals()
    if not global.pending_players
    then
        global.pending_players = {}
    end
    
    if not global.pending_announcement_sound_for_players
    then
        global.pending_announcement_sound_for_players = {}
    end

    if not global.pending_announcement_tick_for_players
    then
        global.pending_announcement_tick_for_players = {}
    end
    
    if not global.current_train_state_for_players
    then
        global.current_train_state_for_players = {}
    end

    if not global.previous_train_state_for_players
    then
        global.previous_train_state_for_players = {}
    end
    
    if not global.previous_announcement_tick_for_players
    then
        global.previous_announcement_tick_for_players = {}
    end
end

script.on_init(init_globals)
script.on_configuration_changed(init_globals)
