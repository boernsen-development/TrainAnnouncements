local util = {}

function util.pad_left_string(str, len, char)
    if char == nil
    then
        char = ' '
    end
    return string.rep(char, len - #str) .. str
end

function util.index_of(elem, list)
    local current_index = nil
    for i,e in ipairs(list) do
        if e == elem then
            current_index = i
            break
        end
    end
    return current_index
end

function util.seconds_to_ticks(seconds)
    return math.floor(seconds * 60)
end

function util.train_state_to_string(state)
    local train_state_strings =
    {
        [defines.train_state.on_the_path]           = "on_the_path",
        [defines.train_state.path_lost]             = "path_lost",
        [defines.train_state.no_schedule]           = "no_schedule",
        [defines.train_state.no_path]               = "no_path",
        [defines.train_state.arrive_signal]         = "arrive_signal",
        [defines.train_state.wait_signal]           = "wait_signal",
        [defines.train_state.arrive_station]        = "arrive_station",
        [defines.train_state.wait_station]          = "wait_station",
        [defines.train_state.manual_control_stop]   = "manual_control_stop",
        [defines.train_state.manual_control]        = "manual_control",
        [defines.train_state.destination_full]      = "destination_full"
    }

    if state
    then
        local string = train_state_strings[state]
        if string
        then
            return string
        else
            return "nil"
        end
    else
        return "nil"
    end
end

function util.get_players_mod_setting(player, name)
    if player and player.mod_settings and player.mod_settings[name]
    then
--          game.print("INFO: Getting mod setting " .. name .. " with value " .. player.mod_settings[name].value)
        return player.mod_settings[name].value
    else
--          game.print("ERROR: cannot find mod setting " .. name .. " for player " .. player.name)
        return nil
    end
end

function util.get_global_mod_setting(name)
    if settings.global[name]
    then
        return settings.global[name].value
    else
        return nil
    end
end

function util.get_train_for_player(player)
    if player.vehicle and player.vehicle.valid and player.vehicle.train and player.vehicle.train.valid
    then
        return player.vehicle.train
    else
        return nil
    end
end

function util.get_number_of_rails_to_next_stop(train)
    if train.path_end_stop and train.path
    then
        return train.path.size - train.path.current
    else
        return nil
    end
end

function util.is_approaching_final_station(train)
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

function util.get_number_of_approaching_station_in_schedule(train)
    if train.schedule and train.schedule.current and train.schedule.records
    then
        return train.schedule.current
    else
        return nil
    end
end


function util.get_number_of_stations_in_schedule(train)
    if train.schedule and train.schedule.records
    then
        return #(train.schedule.records)
    else
        return nil
    end
end

function util.get_next_station_name_for_player(player)
    local train = util.get_train_for_player(player)
    if train and train.path_end_stop and train.path_end_stop.backer_name
    then
        return train.path_end_stop.backer_name
    else
        return ""
    end
end

function util.corrected_train_stop_name(str)
    -- Source: https://wiki.factorio.com/Rich_text
    -- If the name contains symbols it looks like: [item=copper-plate]
    -- Therefore, replace this, so that it looks like: [img=item/copper-plate]
    if not string.find(str,"=")
    then
        return str
    else
        return string.gsub(string.gsub(str, "=", "/"), "%[", "[img=")
    end
end

return util
