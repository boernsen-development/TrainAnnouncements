#!/bin/bash

FACTORIO_MOD_DIR="/home/ben/.factorio/mods/"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PWD=$(pwd)

function deploy {
    # deploy new archive
    zip -FSr $2 $1 --exclude '*.git*' '*.sh*' '*~*'
    
    # add update script to archive
    zip -u $2 "$1/update_data_settings_locale.sh"
}

function extract_description_from_readme {
    local readme=${1}
    local start_line="## Description"
    local end_line="\*\*\*"
    local text=$(sed -n "/$start_line/,/$end_line/p" ${readme})
    local text="${text:${#start_line}+2}"
    local text="${text%${end_line}}"
    echo "$text"
}

function convert_and_replace_description_in_info_json {
    local description=${1}
    local info_json=${2}
    local search_line="    \"description\":"
    # prefix quote characters with backslash
    local replace_line="${description//$'\"'/\\\\\"}"
    # replace newline with newline character
    local replace_line="${replace_line//$'\n'/\\\\n}"
    # put into json.info context
    local replace_line="    \"description\": \"${replace_line}\""
    # replace in file
    sed -i "/$search_line/c\\${replace_line}" ${info_json}
}

description=$(extract_description_from_readme "README.md")
convert_and_replace_description_in_info_json "${description}" "info.json"

cd ..
deploy ${SCRIPT_DIR##*/} "${FACTORIO_MOD_DIR}${SCRIPT_DIR##*/}.zip"

echo; read -rsn1 -p "Finished. Press any key to continue . . ."; echo

cd $PWD
