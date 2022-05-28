#!/bin/bash

# HOW TO USE:
# 
# Put all the desired sound files into the "sounds" subfolder, e.g.
#   sounds/jingles/my_jingle.ogg
#   sounds/stations/my/my_station.ogg
#   sounds/stations/my/my_otherstation.ogg
# 
# Then after running this script, you should see these options in Factorio:
#   <jingle setting> -> my_jingle
#   <station announcement setting> -> my/my_station
#   <station announcement setting> -> my/my_otherstation
# 
# MORE INFO:
# 
# This script generates a new data.lua and edits settings.lua and locale/en/locale.cfg according to sound files found in sub-directory sounds.
# 
# data.lua: is completely rewritten
# settings.lua: all lines starting with one the following are overwritten:
#   'allowed_values = {"back_on_path_'
#   'allowed_values = {"destination_full_'
#   'allowed_values = {"intermediate_'
#   'allowed_values = {"jingle_'
#   'allowed_values = {"no_path_'
#   'allowed_values = {"pleasant_journey_'
#   'allowed_values = {"station_' 
#   'allowed_values = {"wait_signal_'
# locale.cfg: all lines below '[string-mod-setting]' are overwritten
# 
# Before starting, BACKUPS are automatically created of all the files.

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
JINGLES_FULL_DIR=${SCRIPT_DIR}/sounds/jingles
STATIONS_FULL_DIR=${SCRIPT_DIR}/sounds/stations
STATION_DEFAULTS_FULL_DIR=${SCRIPT_DIR}/sounds/station_defaults
STATION_PREFIXES_FULL_DIR=${SCRIPT_DIR}/sounds/station_prefixes
DESTINATION_FULL_FULL_DIR=${SCRIPT_DIR}/sounds/destination_full
NO_PATH_FULL_DIR=${SCRIPT_DIR}/sounds/no_path
PLEASANT_JOURNEY_FULL_DIR=${SCRIPT_DIR}/sounds/pleasant_journey
WAIT_SIGNAL_FULL_DIR=${SCRIPT_DIR}/sounds/wait_signal
BACK_ON_PATH_FULL_DIR=${SCRIPT_DIR}/sounds/back_on_path
INTERMEDIATE_FULL_DIR=${SCRIPT_DIR}/sounds/intermediate

MOD_NAME=__TrainAnnouncements__
STATION_START_NUMBER=1
STATION_START_NUMBER=30

DATETIME=$(date +%Y%d%m_%H%M%S)
DATA_LUA=${SCRIPT_DIR}/data.lua
DATA_LUA_BACKUP=${DATA_LUA}.backup$DATETIME
SETTINGS_LUA=${SCRIPT_DIR}/settings.lua
SETTINGS_LUA_BACKUP=${SETTINGS_LUA}.backup$DATETIME
LOCALE_CFG=${SCRIPT_DIR}/locale/en/locale.cfg
LOCALE_CFG_BACKUP=${LOCALE_CFG}.backup$DATETIME

declare -a JINGLES_CODE_NAMES
declare -a JINGLES_GUI_NAMES
declare -a STATIONS_CODE_NAMES
declare -a STATIONS_GUI_NAMES
declare -a STATION_DEFAULTS_CODE_NAMES
declare -a STATION_DEFAULTS_GUI_NAMES
declare -a STATION_PREFIXES_CODE_NAMES
declare -a STATION_PREFIXES_GUI_NAMES
declare -a DESTINATION_FULL_CODE_NAMES
declare -a DESTINATION_FULL_GUI_NAMES
declare -a NO_PATH_CODE_NAMES
declare -a NO_PATH_GUI_NAMES
declare -a PLEASANT_JOURNEY_CODE_NAMES
declare -a PLEASANT_JOURNEY_GUI_NAMES
declare -a WAIT_SIGNAL_CODE_NAMES
declare -a WAIT_SIGNAL_GUI_NAMES
declare -a BACK_ON_PATH_CODE_NAMES
declare -a BACK_ON_PATH_GUI_NAMES
declare -a INTERMEDIATE_CODE_NAMES
declare -a INTERMEDIATE_GUI_NAMES

shopt -s extglob

print_array()
{
    local description=${1}
    local -n array=${2}
    
    echo "${description}: ${#array[@]}"
    for i in "${!array[@]}"; do
        echo "${array[$i]}"
    done
}

add_variations_entry_to_data_lua()
{
    local codename=${1}
    local all_sub_files=${2}
    local allow_random_repeat_value=${3}

    # make for loops iterate over lines delimited by \n
    local IFS=$'\n'
    
    echo "  {" >> ${DATA_LUA}
    echo "    type = \"sound\"," >> ${DATA_LUA}
    echo "    name = \"$codename\"," >> ${DATA_LUA}
    echo "    variations = {" >> ${DATA_LUA}
    for file in $all_sub_files
    do
        echo "      {filename = \"$MOD_NAME/${file:${#SCRIPT_DIR}+1}\"}," >> ${DATA_LUA}
    done
    echo "    }," >> ${DATA_LUA}
    echo "    category = \"alert\"," >> ${DATA_LUA}
    echo "    allow_random_repeat = $allow_random_repeat_value," >> ${DATA_LUA}
    echo "    audible_distance_modifier = 1e20" >> ${DATA_LUA}
    echo "  }," >> ${DATA_LUA}
}

add_to_data_lua_and_arrays_process_directory()
{
    local dir=${1}
    local original_dir=${2}
    local name_prefix=${3}
    local -n code_names_array=${4}
    local -n gui_names_array=${5}
    
    # make for loops iterate over lines delimited by \n
    local IFS=$'\n'

    # process subdirectories recursively
    local sub_dirs=$(find $dir -mindepth 1 -maxdepth 1 -type d | sort)
    for sub_dir in $sub_dirs
    do
        add_to_data_lua_and_arrays_process_directory $sub_dir/ ${2} ${3} ${4} ${5}
    done
    
    # process all files directly in the current folder
    local files=$(find $dir -maxdepth 1 -type f -iname "*.ogg" | sort)
    for file in $files
    do
        local file_name=${file:${#original_dir}+1}
        local file_name_no_ext=${file_name%.ogg}
        
        # remove the " (?.?? sec)" for the GUI
        local gui_name=$(echo "$file_name_no_ext" | sed -e 's/ ([[:digit:]]\+\.\?[[:digit:]]* sec)$//g')

        # make it lowercase and replace all non-alnum characters with underscore "_"
        # https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
        # ${parameter//pattern/string}
        local gui_name_lowercase=${file_name_no_ext,,}
        local code_name=$name_prefix${gui_name_lowercase//[![:alnum:].]/_}
        
        #echo "Code name $code_name"

        # store code_name in code_names_array (for settings.lua)
        code_names_array+=("${code_name}")
        gui_names_array+=("${gui_name}")

        # write data.lua
        #echo "data.lua.filename $MOD_NAME/${file:${#SCRIPT_DIR}+1}"
        echo "  {" >> ${DATA_LUA}
        echo "    type = \"sound\"," >> ${DATA_LUA}
        echo "    name = \"$code_name\"," >> ${DATA_LUA}
        echo "    filename = \"$MOD_NAME/${file:${#SCRIPT_DIR}+1}\"," >> ${DATA_LUA}
        echo "    category = \"alert\"," >> ${DATA_LUA}
        echo "    volume = 1.0," >> ${DATA_LUA}
        echo "    audible_distance_modifier = 1e20" >> ${DATA_LUA}
        echo "  }," >> ${DATA_LUA}
    done

    # for the rotating/random entries collect all files recursively from the current and all sub-folders
    local all_sub_files=$(find $dir -type f -iname "*.ogg" | sort)
    
    # the gui name should contain the sub-folder relative to the original_dir or be empty if it is the original_dir itself
    local guiname_prefix=${dir:${#original_dir}+1}
    
    # the code name prefix is derived from the gui name by replacing all non-alpha-numeric by an underscore "_" and prepending the name_prefix
    local codename_prefix=${name_prefix}${guiname_prefix//[![:alnum:]]/_}
    
    if [ "$name_prefix" != "jingle_" ]
    then
        # add entry "rotating"
        local rotating_codename="${codename_prefix}rotating"
        local rotating_guiname="${guiname_prefix}<Rotating>"
        add_variations_entry_to_data_lua $rotating_codename "${all_sub_files}" "false"
        code_names_array+=($rotating_codename)
        gui_names_array+=($rotating_guiname)

        # add entry "random"
        local random_codename="${codename_prefix}random"
        local random_guiname="${guiname_prefix}<Random>"
        add_variations_entry_to_data_lua $random_codename "${all_sub_files}" "true"
        code_names_array+=($random_codename)
        gui_names_array+=($random_guiname)
    fi
}

add_to_data_lua_and_arrays()
{
    #echo "add_to_data_lua_and_arrays() ${1} ${2} ${3} ${4} ${5}"
    local dir=${1}
    local name_prefix=${2}
    local -n code_names_array=${3}
    local -n gui_names_array=${4}
    local add_default=${5}
    
    #echo "Processing directory $dir"
    add_to_data_lua_and_arrays_process_directory ${dir} ${dir} ${2} ${3} ${4}
    
    # add entry "Default" if requested
    if "$add_default"
    then
        code_names_array+=("default")
        gui_names_array+=("<Default>")
    fi

    # add entry "Off"
    code_names_array+=("off")
    gui_names_array+=("<Off>")
}

edit_settings_lua()
{
    local search_string=${1}
    local -n code_names_array=${2}
    
    # derive replacement string for allowed_values
    # prepend "#" to every entry, e.g. #one #two #three
    joined="${code_names_array[*]/#/#}"
    # remove first "#", e.g. one #two #three
    joined=${joined#"#"}
    # remove blank spaces, e.g. one#two#three
    joined=${joined//[[:blank:]]/}
    # replace "#" by ", ", e.g. one, two, three
    joined="    allowed_values = {\"${joined//#/\", \"}\"},"
    
    sed -i "/$search_string/c\\$joined" ${SETTINGS_LUA}
}

fix_settings_lua_order()
{
    perl -pi -n -e 'BEGIN{$A=1;} s/(order = \").*(\")/$1."0"x(3-length($A)).$A++.$2/ge' ${SETTINGS_LUA}
}

edit_locale_cfg()
{
    sed -i '/\[string-mod-setting\]/,$d' ${LOCALE_CFG}
    echo "[string-mod-setting]" >> ${LOCALE_CFG}
    
    for i in "${!DESTINATION_FULL_CODE_NAMES[@]}"; do
        echo "train_announcements_destination_full_announcement_sound-${DESTINATION_FULL_CODE_NAMES[$i]}=${DESTINATION_FULL_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done

    for i in "${!NO_PATH_CODE_NAMES[@]}"; do
        echo "train_announcements_no_path_announcement_sound-${NO_PATH_CODE_NAMES[$i]}=${NO_PATH_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done

    for i in "${!PLEASANT_JOURNEY_CODE_NAMES[@]}"; do
        echo "train_announcements_pleasant_journey_announcement_sound-${PLEASANT_JOURNEY_CODE_NAMES[$i]}=${PLEASANT_JOURNEY_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done

    for i in "${!WAIT_SIGNAL_CODE_NAMES[@]}"; do
        echo "train_announcements_wait_signal_announcement_sound-${WAIT_SIGNAL_CODE_NAMES[$i]}=${WAIT_SIGNAL_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done

    for i in "${!BACK_ON_PATH_CODE_NAMES[@]}"; do
        echo "train_announcements_back_on_path_announcement_sound-${BACK_ON_PATH_CODE_NAMES[$i]}=${BACK_ON_PATH_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done

    for i in "${!INTERMEDIATE_CODE_NAMES[@]}"; do
        echo "train_announcements_intermediate_announcement_sound-${INTERMEDIATE_CODE_NAMES[$i]}=${INTERMEDIATE_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done

    for i in "${!JINGLES_CODE_NAMES[@]}"; do
        echo "train_announcements_jingle_sound_default-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_next_station_jingle_sound_override-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_final_station_jingle_sound_override-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_destination_full_jingle_sound_override-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_no_path_jingle_sound_override-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_pleasant_journey_jingle_sound_override-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_wait_signal_jingle_sound_override-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_back_on_path_jingle_sound_override-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_intermediate_jingle_sound_override-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done

    for i in "${!STATION_DEFAULTS_CODE_NAMES[@]}"; do
        echo "train_announcements_next_station_announcement_sound_default-${STATION_DEFAULTS_CODE_NAMES[$i]}=${STATION_DEFAULTS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_final_station_announcement_sound_default-${STATION_DEFAULTS_CODE_NAMES[$i]}=${STATION_DEFAULTS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done    

    for i in "${!STATION_PREFIXES_CODE_NAMES[@]}"; do
        echo "train_announcements_next_station_prefix_sound-${STATION_PREFIXES_CODE_NAMES[$i]}=${STATION_PREFIXES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_final_station_prefix_sound-${STATION_PREFIXES_CODE_NAMES[$i]}=${STATION_PREFIXES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done    
    
    for i in "${!STATIONS_CODE_NAMES[@]}"; do
        for j in $(seq -w $STATION_START_NUMBER $STATION_END_NUMBER)
        do
            echo "train_announcements_station${j}_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        done
    done
}

backup_move()
{
    if [ -f ${1} ]; 
    then
        echo "Backing up / move ${1##*/} to ${2##*/}" ...
        mv ${1} ${2}
    fi
}

backup_copy()
{
    if [ -f ${1} ]; 
    then
        echo "Backing up / copy ${1##*/} to ${2##*/}" ...
        cp ${1} ${2}
    fi
}

check_file_exists()
{
    if [ ! -f ${1} ]; 
    then
        echo "Missing file: ${1}"
        exit 1
    fi
}

check_file_does_not_exist()
{
    if [ -f ${1} ]; 
    then
        echo "File should not exist: ${1}"
        exit 1
    fi
}

# backup data.lua, settings.lua, locale.cfg
backup_move ${DATA_LUA} ${DATA_LUA_BACKUP}
backup_copy ${SETTINGS_LUA} ${SETTINGS_LUA_BACKUP}
backup_copy ${LOCALE_CFG} ${LOCALE_CFG_BACKUP}

check_file_exists ${DATA_LUA_BACKUP}
check_file_exists ${SETTINGS_LUA_BACKUP}
check_file_exists ${LOCALE_CFG_BACKUP}
check_file_does_not_exist ${DATA_LUA}

echo "Writing ${DATA_LUA}..."

# write beginning of data.lua
echo "data:extend({" >> ${DATA_LUA}

# write actual .ogg files to data.lua
add_to_data_lua_and_arrays ${JINGLES_FULL_DIR} "jingle_" JINGLES_CODE_NAMES JINGLES_GUI_NAMES true
add_to_data_lua_and_arrays ${STATIONS_FULL_DIR} "stations_" STATIONS_CODE_NAMES STATIONS_GUI_NAMES false
add_to_data_lua_and_arrays ${STATION_DEFAULTS_FULL_DIR} "station_default_" STATION_DEFAULTS_CODE_NAMES STATION_DEFAULTS_GUI_NAMES false
add_to_data_lua_and_arrays ${STATION_PREFIXES_FULL_DIR} "station_prefix_" STATION_PREFIXES_CODE_NAMES STATION_PREFIXES_GUI_NAMES false
add_to_data_lua_and_arrays ${DESTINATION_FULL_FULL_DIR} "destination_full_" DESTINATION_FULL_CODE_NAMES DESTINATION_FULL_GUI_NAMES false
add_to_data_lua_and_arrays ${NO_PATH_FULL_DIR} "no_path_" NO_PATH_CODE_NAMES NO_PATH_GUI_NAMES false
add_to_data_lua_and_arrays ${PLEASANT_JOURNEY_FULL_DIR} "pleasant_journey_" PLEASANT_JOURNEY_CODE_NAMES PLEASANT_JOURNEY_GUI_NAMES false
add_to_data_lua_and_arrays ${WAIT_SIGNAL_FULL_DIR} "wait_signal_" ${WAIT_SIGNAL_SUB_DIR} WAIT_SIGNAL_CODE_NAMES WAIT_SIGNAL_GUI_NAMES false
add_to_data_lua_and_arrays ${BACK_ON_PATH_FULL_DIR} "back_on_path_" BACK_ON_PATH_CODE_NAMES BACK_ON_PATH_GUI_NAMES false
add_to_data_lua_and_arrays ${INTERMEDIATE_FULL_DIR} "intermediate_" INTERMEDIATE_CODE_NAMES INTERMEDIATE_GUI_NAMES false

# write ending of data.lua
echo "})" >> ${DATA_LUA}

# Echo sounds
echo ""
print_array "Jingles" JINGLES_GUI_NAMES
echo ""
print_array "Stations" STATIONS_GUI_NAMES
echo ""
print_array "Station defaults" STATION_DEFAULTS_GUI_NAMES
echo ""
print_array "Station prefixes" STATION_PREFIXES_GUI_NAMES
echo ""
print_array "Destination full" DESTINATION_FULL_GUI_NAMES
echo ""
print_array "No path" NO_PATH_GUI_NAMES
echo ""
print_array "Pleasant journey" PLEASANT_JOURNEY_GUI_NAMES
echo ""
print_array "Wait signal" WAIT_SIGNAL_GUI_NAMES
echo ""
print_array "Back on path" BACK_ON_PATH_GUI_NAMES
echo ""
print_array "Intermediate" INTERMEDIATE_GUI_NAMES
echo ""

# edit settings.lua
echo "Editing ${SETTINGS_LUA}..."
edit_settings_lua "allowed_values = {\"jingle_" JINGLES_CODE_NAMES
edit_settings_lua "allowed_values = {\"stations_" STATIONS_CODE_NAMES
edit_settings_lua "allowed_values = {\"station_default_" STATION_DEFAULTS_CODE_NAMES
edit_settings_lua "allowed_values = {\"station_prefix_" STATION_PREFIXES_CODE_NAMES
edit_settings_lua "allowed_values = {\"destination_full_" DESTINATION_FULL_CODE_NAMES
edit_settings_lua "allowed_values = {\"no_path_" NO_PATH_CODE_NAMES
edit_settings_lua "allowed_values = {\"pleasant_journey_" PLEASANT_JOURNEY_CODE_NAMES
edit_settings_lua "allowed_values = {\"wait_signal_" WAIT_SIGNAL_CODE_NAMES
edit_settings_lua "allowed_values = {\"back_on_path_" BACK_ON_PATH_CODE_NAMES
edit_settings_lua "allowed_values = {\"intermediate_" INTERMEDIATE_CODE_NAMES
fix_settings_lua_order

# edit locale.cfg
echo "Editing ${LOCALE_CFG}..."
edit_locale_cfg

echo "Finished!"
