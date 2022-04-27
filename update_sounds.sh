#!/bin/bash

# INFO:
# Generates data.lua and edits settings.lua and locale/en/locale.cfg according to sound files found in sounds/interruptions, sounds/jingles, sounds/stations
# 
# data.lua: completely rewritten
# settings.lua: all lines starting with 'allowed_values = {"interruption_', or 'allowed_values = {"jingle_', or 'allowed_values = {"station_' are overwritten
# locale.cfg: all lines below '[string-mod-setting]' are overwritten
# 
# Before starting, BACKUPS are created of all files.

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
JINGLES_SUB_DIR=sounds/jingles
JINGLES_DIR=${SCRIPT_DIR}/${JINGLES_SUB_DIR}
STATIONS_SUB_DIR=sounds/stations
STATIONS_DIR=${SCRIPT_DIR}/${STATIONS_SUB_DIR}
INTERRUPTIONS_SUB_DIR=sounds/interruptions
INTERRUPTIONS_DIR=${SCRIPT_DIR}/${INTERRUPTIONS_SUB_DIR}
MOD_NAME=__TrainAnnouncements__

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
declare -a INTERRUPTIONS_CODE_NAMES
declare -a INTERRUPTIONS_GUI_NAMES

print_array()
{
    local description=${1}
    local -n array=${2}
    
    echo "${description}: ${#array[@]}"
    for i in "${!array[@]}"; do
        echo "${array[$i]}"
    done     
}

add_to_data_lua()
{
    local dir=${1}
    local name_prefix=${2}
    local sub_dir=${3}
    local -n code_names_array=${4}
    local -n gui_names_array=${5}
    
    #echo "Processing directory $dir"

    for file in $dir/*.ogg
    do
        file_name=${file##*/}
        gui_name=${file_name%.ogg}
        gui_name_lowercase=${gui_name,,}
        
        #echo "Processing file $file_name"

        # https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
        # ${parameter//pattern/string}
        code_name=$name_prefix${gui_name_lowercase//[![:alpha:]]/_}
        
        # store code_name in code_names_array (for settings.lua)
        code_names_array+=("${code_name}")
        gui_names_array+=("${gui_name}")

        # write data.lua
        echo "  {" >> ${DATA_LUA}
        echo "    type = \"sound\"," >> ${DATA_LUA}
        echo "    name = \"$code_name\"," >> ${DATA_LUA}
        echo "    filename = \"$MOD_NAME/$sub_dir/$file_name\"," >> ${DATA_LUA}
        echo "    category = \"alert\"," >> ${DATA_LUA}
        echo "    volume = 1.0," >> ${DATA_LUA}
        echo "    audible_distance_modifier = 1e20" >> ${DATA_LUA}
        echo "  }," >> ${DATA_LUA}
    done
    
    # add entry "changing"
    echo "  {" >> ${DATA_LUA}
    echo "    type = \"sound\"," >> ${DATA_LUA}
    echo "    name = \"${name_prefix}changing\"," >> ${DATA_LUA}
    echo "    variations = {" >> ${DATA_LUA}
    for file in $dir/*.ogg
    do
        file_name=${file##*/}
        echo "      {filename = \"$MOD_NAME/$sub_dir/$file_name\"}," >> ${DATA_LUA}
    done
    echo "    }," >> ${DATA_LUA}
    echo "    category = \"alert\"," >> ${DATA_LUA}
    echo "    allow_random_repeat = false," >> ${DATA_LUA}
    echo "    audible_distance_modifier = 1e20" >> ${DATA_LUA}
    echo "  }," >> ${DATA_LUA}
    code_names_array+=("${name_prefix}changing")
    gui_names_array+=("<Changing>")

    # add entry "random"
    echo "  {" >> ${DATA_LUA}
    echo "    type = \"sound\"," >> ${DATA_LUA}
    echo "    name = \"${name_prefix}random\"," >> ${DATA_LUA}
    echo "    variations = {" >> ${DATA_LUA}
    for file in $dir/*.ogg
    do
        file_name=${file##*/}
        echo "      {filename = \"$MOD_NAME/$sub_dir/$file_name\"}," >> ${DATA_LUA}
    done
    echo "    }," >> ${DATA_LUA}
    echo "    category = \"alert\"," >> ${DATA_LUA}
    echo "    allow_random_repeat = true," >> ${DATA_LUA}
    echo "    audible_distance_modifier = 1e20" >> ${DATA_LUA}
    echo "  }," >> ${DATA_LUA}
    code_names_array+=("${name_prefix}random")
    gui_names_array+=("<Random>")

    # add "Off" to code names array (for settings.lua)
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

edit_locale_cfg()
{
    sed -i '/\[string-mod-setting\]/,$d' ${LOCALE_CFG}
    echo "[string-mod-setting]" >> ${LOCALE_CFG}
    
    for i in "${!INTERRUPTIONS_CODE_NAMES[@]}"; do
        echo "train_announcements_interruption_announcement_sound-${INTERRUPTIONS_CODE_NAMES[$i]}=${INTERRUPTIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done    

    for i in "${!JINGLES_CODE_NAMES[@]}"; do
        echo "train_announcements_default_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_final_station_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_interruption_jingle_sound-${JINGLES_CODE_NAMES[$i]}=${JINGLES_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
    done
    
    for i in "${!STATIONS_CODE_NAMES[@]}"; do
        echo "train_announcements_station_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station01_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station02_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station03_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station04_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station05_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station06_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station07_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station08_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station09_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station10_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station11_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station12_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station13_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station14_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station15_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station16_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station17_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station18_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station19_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_station20_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
        echo "train_announcements_final_station_announcement_sound-${STATIONS_CODE_NAMES[$i]}=${STATIONS_GUI_NAMES[$i]}" >> ${LOCALE_CFG}
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

#check_file_exists ${DATA_LUA_BACKUP}
check_file_exists ${SETTINGS_LUA_BACKUP}
check_file_exists ${LOCALE_CFG_BACKUP}
check_file_does_not_exist ${DATA_LUA}

echo "Writing ${DATA_LUA}..."

# write beginning of data.lua
echo "data:extend({" >> ${DATA_LUA}

# write actual .ogg files to data.lua
add_to_data_lua ${JINGLES_DIR} jingle_ ${JINGLES_SUB_DIR} JINGLES_CODE_NAMES JINGLES_GUI_NAMES
add_to_data_lua ${STATIONS_DIR} station_ ${STATIONS_SUB_DIR} STATIONS_CODE_NAMES STATIONS_GUI_NAMES
add_to_data_lua ${INTERRUPTIONS_DIR} interruption_ ${INTERRUPTIONS_SUB_DIR} INTERRUPTIONS_CODE_NAMES INTERRUPTIONS_GUI_NAMES

# write ending of data.lua
echo "})" >> ${DATA_LUA}

# Echo sounds
echo ""
print_array "Jingles" JINGLES_GUI_NAMES
echo ""
print_array "Stations" STATIONS_GUI_NAMES
echo ""
print_array "Interruptions" INTERRUPTIONS_GUI_NAMES
echo ""

# edit settings.lua
echo "Editing ${SETTINGS_LUA}..."
edit_settings_lua "allowed_values = {\"jingle_" JINGLES_CODE_NAMES
edit_settings_lua "allowed_values = {\"station_" STATIONS_CODE_NAMES
edit_settings_lua "allowed_values = {\"interruption_" INTERRUPTIONS_CODE_NAMES

# edit locale.cfg
echo "Editing ${LOCALE_CFG}..."
edit_locale_cfg

echo "Finished!"
