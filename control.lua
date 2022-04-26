function pad_left(str, len, char)
    if char == nil
    then
        char = ' '
    end
    return string.rep(char, len - #str) .. str
end

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

function seconds_to_ticks(seconds)
    return math.floor(seconds * 60)
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
--         game.print("ERROR: cannot find mod setting " .. name .. " for player " .. player.name)
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
--         game.print("ERROR: announcement already scheduled for player " .. player.name)
    else
        local size_before = #(global.pending_players)
        table.insert(global.pending_players, player)
        table.insert(global.pending_announcement_sound_for_players, sound)
        table.insert(global.pending_announcement_tick_for_players, tick)
        local size_after = #(global.pending_players)
--         game.print(game.tick .. "Scheduled: " .. sound .. " for player " .. player.name .. " on tick " .. tick .. "(before: " .. size_before .. ", after: " .. size_after .. ")")
    end
end

function reset_pending_announcement(player)
    local player_index = index_of(player, global.pending_players)
    if player_index and player_index > 0
    then
--         local size_before = #(global.pending_players)
        table.remove(global.pending_players, player_index)
        table.remove(global.pending_announcement_sound_for_players, player_index)
        table.remove(global.pending_announcement_tick_for_players, player_index)
--         local size_after = #(global.pending_players)
--         game.print(game.tick .. "Reset pending player " .. player.name .. "(before: " .. size_before .. ", after: " .. size_after .. ")")
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
--         game.print(game.tick .. "got and removed: " .. announcement_sound)
    else
--         game.print(game.tick .. "ERROR: player not found in pending_players")
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
--             game.print(game.tick .. "Detected pending announcement on this tick")
            return true
        else
--             game.print(game.tick .. "Pending announcement for player found, but not on this tick")
        end
    else
--         game.print(game.tick .. "ERROR: player " .. player.name .. " not found in pending_players (" .. #(global.pending_players) .. ")")
    end
    return false
end

function check_and_set_minimum_ticks_between_announcements(player)
    local minSecondsBetweenAnnouncements = get_mod_setting(player, "train_announcements_minimum_seconds_between_announcements")
    if not minSecondsBetweenAnnouncements
    then
        minSecondsBetweenAnnouncements = 0.0
    end
    
    if global.previous_announcement_tick_for_players[player.name] == nil or game.tick >= global.previous_announcement_tick_for_players[player.name] + seconds_to_ticks(minSecondsBetweenAnnouncements)
    then
        global.previous_announcement_tick_for_players[player.name] = game.tick
        return true
    else
--         game.print("tick: " .. game.tick .. ", skipping sound as minimum ticks not passed -> probably a duplicate")
        return false
    end
end

function play_sound_for_player(player, sound)
--     game.print(game.tick .. "play: " .. sound)
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

function get_number_of_approaching_station(train)
    if train.schedule and train.schedule.current and train.schedule.records
    then
        return train.schedule.current
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

function needs_interruption_announcement(player)
    return has_entered_no_path_train_state(player)
end

function needs_station_announcement(player)
    local train = get_train_for_player(player)
    return train and train.valid and train_is_on_announcement_distance(train, player)
end

function get_announcement_for_player(player)
    local sounds = nil
    if needs_interruption_announcement(player)
    then
        sounds = {}
        sounds["jingle sound"] = get_mod_setting(player, "train_announcements_interruption_announcement_jingle_sound")
        sounds["sound"] = get_mod_setting(player, "train_announcements_interruption_announcement_sound")
        sounds["description"] = "interruption"
    elseif needs_station_announcement(player)
    then
        -- use #xx or final station setting if possible
        sounds = {}
        local train = get_train_for_player(player)
        if train and train.valid
        then
            if is_approaching_final_station(train)
            then
                sounds["jingle sound"] = get_mod_setting(player, "train_announcements_final_station_announcement_jingle_sound")
                sounds["sound"] = get_mod_setting(player, "train_announcements_final_station_announcement_sound")
                sounds["description"] = "final station"
            else
                local stationNumber = get_number_of_approaching_station(train)
                if stationNumber
                then
                    local stationNumberStr = pad_left(tostring(stationNumber), 2, "0")
                    sounds["jingle sound"] = get_mod_setting(player, "train_announcements_station_jingle_sound")
                    sounds["sound"] = get_mod_setting(player, "train_announcements_station" .. stationNumberStr .. "_announcement_sound")
                    sounds["description"] = "station" .. tostring(stationNumber)
                end
            end
        end
        
        -- fall back to defaults if necessary
        if not sounds["jingle sound"] or not game.is_valid_sound_path(sounds["jingle sound"])
        then
            sounds["jingle sound"] = get_mod_setting(player, "train_announcements_station_jingle_sound")
        end
        if not sounds["sound"] or not game.is_valid_sound_path(sounds["sound"])
        then
            sounds["sound"] = get_mod_setting(player, "train_announcements_station_announcement_sound")
        end
        if not sounds["description"] or sounds["description"] == ""
        then
--             game.print("ERROR: sound type was not given")
            sounds["description"] = "station"
        end
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

function print_message_to_player(player, announcement_description, announcement_sound)
    local print_message_enabled = get_mod_setting(player, "train_announcements_print_announcement_message_enabled")
    if not announcement_description or not print_message_enabled
    then
        return
    elseif announcement_description == "interruption"
    then
        player.print({"announcement-text.interruption"})
    elseif announcement_description == "final station"
    then
        player.print({"announcement-text.final_station", get_next_station_name_for_player(player)})
    elseif string.sub(announcement_description, 1, 7) == "station"
    then
        player.print({"announcement-text.station", get_next_station_name_for_player(player), string.sub(announcement_description, 8)})
    else
        --unknown announcement_description
--         game.print("ERROR: unknown sound description")
    end
end

function process_player(player)
    update_train_states_for_player(player)
    
    local announcement = get_announcement_for_player(player)
    if announcement and check_and_set_minimum_ticks_between_announcements(player)
    then
        reset_pending_announcement(player)
        
        local announcement_jingle_sound = announcement["jingle sound"]
        local announcement_sound = announcement["sound"]
        local announcement_description = announcement["description"]
        
        if announcement_description
        then
            print_message_to_player(player, announcement_description, announcement_sound)
        end

        if announcement_jingle_sound and game.is_valid_sound_path(announcement_jingle_sound)
        then
            play_sound_for_player(player, announcement_jingle_sound)
            local seconds_between_jingle_and_announcement = get_mod_setting(player, "train_announcements_seconds_between_jingle_and_announcement")
            if announcement_sound and game.is_valid_sound_path(announcement_sound) and seconds_between_jingle_and_announcement
            then
                schedule_announcement(player, announcement_sound, game.tick + seconds_to_ticks(seconds_between_jingle_and_announcement))
            else
--                 game.print("WARNING: announcement config invalid (announcement_sound=" .. announcement_sound .. ")")
            end
        elseif announcement_sound and game.is_valid_sound_path(announcement_sound)
        then
            play_sound_for_player(player, announcement_sound)
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
