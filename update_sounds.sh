#!/bin/bash

# INFO:
# Generates data.lua and edits settings.lua and locale/en/locale.cfg according to sound files found in sounds/no_path, sounds/jingles, sounds/stations
# 
# data.lua: completely rewritten
# settings.lua: all lines starting with 'allowed_values = {"no_path_', or 'allowed_values = {"jingle_', or 'allowed_values = {"station_' are overwritten
# locale.cfg: all lines below '[string-mod-setting]' are overwritten
# 
# Before starting, BACKUPS are created of all files.

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
JINGLES_SUB_DIR=sounds/jingles
JINGLES_FULL_DIR=${SCRIPT_DIR}/${JINGLES_SUB_DIR}
STATIONS_SUB_DIR=sounds/stations
STATIONS_FULL_DIR=${SCRIPT_DIR}/${STATIONS_SUB_DIR}
DESTINATION_FULL_SUB_DIR=sounds/destination_full
DESTINATION_FULL_FULL_DIR=${SCRIPT_DIR}/${DESTINATION_FULL_SUB_DIR}
NO_PATH_SUB_DIR=sounds/no_path
NO_PATH_FULL_DIR=${SCRIPT_DIR}/${NO_PATH_SUB_DIR}
PLEASANT_JOURNEY_SUB_DIR=sounds/pleasant_journey
PLEASANT_JOURNEY_FULL_DIR=${SCRIPT_DIR}/${PLEASANT_JOURNEY_SUB_DIR}
WAIT_SIGNAL_SUB_DIR=sounds/wait_signal
WAIT_SIGNAL_FULL_DIR=${SCRIPT_DIR}/${WAIT_SIGNAL_SUB_DIR}
BACK_ON_PATH_SUB_DIR=sounds/back_on_path
BACK_ON_PATH_FULL_DIR=${SCRIPT_DIR}/${BACK_ON_PATH_SUB_DIR}
INTERMEDIATE_SUB_DIR=sounds/intermediate
INTERMEDIATE_FULL_DIR=${SCRIPT_DIR}/${INTERMEDIATE_SUB_DIR}

MOD_NAME=__TrainAnnouncements__
STATION_START_NUMBER=1
STATION_START_NUMBER=50

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

print_array()
{
    local description=${1}
    local -n array=${2}
    
    echo "${description}: ${#array[@]}"
    for i in "${!array[@]}"; do
        echo "${array[$i]}"
    done
}

add_to_data_lua_and_arrays()
{
    #echo "add_to_data_lua_and_arrays() ${1} ${2} ${3} ${4} ${5} ${6}"
    local dir=${1}
    local name_prefix=${2}
    local sub_dir=${3}
    local -n code_names_array=${4}
    local -n gui_names_array=${5}
    local add_default=${6}
    
    #echo "Processing directory $dir"

    files=$(find $dir -type f -iname "*.ogg" | sort)
    local IFS=$'\n'
    for file in $files
    do
        file_name=${file:${#dir}+1}
        gui_name=${file_name%.ogg}
        gui_name_lowercase=${gui_name,,}
        
        #echo "\n"
        #echo "Processing file $file_name"
        #echo "Gui name $gui_name"
        #echo "Lower case $gui_name_lowercase"

        # https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
        # ${parameter//pattern/string}
        code_name=$name_prefix${gui_name_lowercase//[![:alnum:]]/_}
        
        #echo "Code name $code_name"

        # store code_name in code_names_array (for settings.lua)
        code_names_array+=("${code_name}")
        gui_names_array+=("${gui_name}")

        # write data.lua
        #echo "data.lua.filename $MOD_NAME/$sub_dir/$file_name"
        echo "  {" >> ${DATA_LUA}
        echo "    type = \"sound\"," >> ${DATA_LUA}
        echo "    name = \"$code_name\"," >> ${DATA_LUA}
        echo "    filename = \"$MOD_NAME/$sub_dir/$file_name\"," >> ${DATA_LUA}
        echo "    category = \"alert\"," >> ${DATA_LUA}
        echo "    volume = 1.0," >> ${DATA_LUA}
        echo "    audible_distance_modifier = 1e20" >> ${DATA_LUA}
        echo "  }," >> ${DATA_LUA}
    done
    
    # add entry "rotating"
    echo "  {" >> ${DATA_LUA}
    echo "    type = \"sound\"," >> ${DATA_LUA}
    echo "    name = \"${name_prefix}rotating\"," >> ${DATA_LUA}
    echo "    variations = {" >> ${DATA_LUA}
    for file in $files
    do
        file_name=${file:${#dir}+1}
        echo "      {filename = \"$MOD_NAME/$sub_dir/$file_name\"}," >> ${DATA_LUA}
    done
    echo "    }," >> ${DATA_LUA}
    echo "    category = \"alert\"," >> ${DATA_LUA}
    echo "    allow_random_repeat = false," >> ${DATA_LUA}
    echo "    audible_distance_modifier = 1e20" >> ${DATA_LUA}
    echo "  }," >> ${DATA_LUA}
    code_names_array+=("${name_prefix}rotating")
    gui_names_array+=("<Rotating>")

    # add entry "random"
    echo "  {" >> ${DATA_LUA}
    echo "    type = \"sound\"," >> ${DATA_LUA}
    echo "    name = \"${name_prefix}random\"," >> ${DATA_LUA}
    echo "    variations = {" >> ${DATA_LUA}
    for file in $files
    do
        file_name=${file:${#dir}+1}
        echo "      {filename = \"$MOD_NAME/$sub_dir/$file_name\"}," >> ${DATA_LUA}
    done
    echo "    }," >> ${DATA_LUA}
    echo "    category = \"alert\"," >> ${DATA_LUA}
    echo "    allow_random_repeat = true," >> ${DATA_LUA}
    echo "    audible_distance_modifier = 1e20" >> ${DATA_LUA}
    echo "  }," >> ${DATA_LUA}
    code_names_array+=("${name_prefix}random")
    gui_names_array+=("<Random>")

    # add entry "Inherit" if required
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
    
    joined="${code_names_array[*]/#/#}"
    joined=${joined#"#"}
    joined=${joined//[[:blank:]]/}
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
        echo "train_announcements_default_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_override_next_station_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_override_final_station_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_override_destination_full_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_override_no_path_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_override_pleasant_journey_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_override_wait_signal_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_override_back_on_path_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_override_intermediate_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done
    
    for i in "${!STATIONS_CODE_NAMES[@]}"; do
        echo "train_announcements_default_next_station_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        for j in $(seq -w $STATION_START_NUMBER $STATION_END_NUMBER)
        do
            echo "train_announcements_station${j}_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        done
        echo "train_announcements_override_final_station_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
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
add_to_data_lua_and_arrays ${JINGLES_FULL_DIR} "jingle_" ${JINGLES_SUB_DIR} JINGLES_CODE_NAMES JINGLES_GUI_NAMES true
add_to_data_lua_and_arrays ${STATIONS_FULL_DIR} "station_" ${STATIONS_SUB_DIR} STATIONS_CODE_NAMES STATIONS_GUI_NAMES false
add_to_data_lua_and_arrays ${DESTINATION_FULL_FULL_DIR} "destination_full_" ${DESTINATION_FULL_SUB_DIR} DESTINATION_FULL_CODE_NAMES DESTINATION_FULL_GUI_NAMES false
add_to_data_lua_and_arrays ${NO_PATH_FULL_DIR} "no_path_" ${NO_PATH_SUB_DIR} NO_PATH_CODE_NAMES NO_PATH_GUI_NAMES false
add_to_data_lua_and_arrays  ${PLEASANT_JOURNEY_FULL_DIR}  "pleasant_journey_"  ${PLEASANT_JOURNEY_SUB_DIR}  PLEASANT_JOURNEY_CODE_NAMES  PLEASANT_JOURNEY_GUI_NAMES false
add_to_data_lua_and_arrays  ${WAIT_SIGNAL_FULL_DIR}  "wait_signal_"  ${WAIT_SIGNAL_SUB_DIR}  WAIT_SIGNAL_CODE_NAMES  WAIT_SIGNAL_GUI_NAMES false
add_to_data_lua_and_arrays  ${BACK_ON_PATH_FULL_DIR}  "back_on_path_"  ${BACK_ON_PATH_SUB_DIR}  BACK_ON_PATH_CODE_NAMES  BACK_ON_PATH_GUI_NAMES false
add_to_data_lua_and_arrays  ${INTERMEDIATE_FULL_DIR}  "intermediate_"  ${INTERMEDIATE_SUB_DIR}  INTERMEDIATE_CODE_NAMES  INTERMEDIATE_GUI_NAMES false

# write ending of data.lua
echo "})" >> ${DATA_LUA}

# Echo sounds
echo ""
print_array "Jingles" JINGLES_GUI_NAMES
echo ""
print_array "Stations" STATIONS_GUI_NAMES
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
edit_settings_lua "allowed_values = {\"station_" STATIONS_CODE_NAMES
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
