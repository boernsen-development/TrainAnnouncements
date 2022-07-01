#!/bin/bash

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

get_duration()
{
    #ffmpeg -i "${1}" 2>&1 | grep Duration
    local duration=$(ffprobe -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "${1}" 2>/dev/null)
    local duration_short=$(LC_ALL=C printf "%.2f" $duration)
    echo $duration_short
}

update_file_duration_suffix()
{
    local filename=${1}
    local duration=${2}
    local filename_base=$(echo "$filename" | sed -e 's/\( ([[:digit:]]\+\.\?[[:digit:]]* sec)\)\?.ogg$//g')
    local new_filename="${filename_base} (${duration} sec).ogg"

    if [ "${filename}" != "${new_filename}" ]
    then
        echo "${filename}"
        echo "---> ${new_filename}"
        mv "${filename}" "${new_filename}"
    fi
}

update_all_ogg_files()
{
    # make for loops iterate over lines delimited by \n
    local IFS=$'\n'
    
    ogg_files=$(find . -type f -iname "*.ogg" | sort)
    for file in $ogg_files
    do
        duration=$(get_duration "$file")
        update_file_duration_suffix $file $duration
    done
}

check_existing_mp3_files()
{
    # make for loops iterate over lines delimited by \n
    local IFS=$'\n'
    mp3_files=$(find . -type f -iname "*.mp3" | sort)
    if [ "${mp3_files}" != "" ]
    then
        echo ""
        echo "WARNING: found the following mp3 files..."
        echo "${mp3_files}"
        echo ""
        echo "WARNING: mp3 files found..."
    fi
}

update_all_ogg_files
check_existing_mp3_files
echo "Finished..."
