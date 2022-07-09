#!/usr/bin/env python3

# DESCRIPTION:
# 
# This script parses data.lua, determines the sound durations for each sound name and stores it in a table in sound_durations.lua

# HOW TO USE:
#
# Run script in mod folder.


import os
import re
import subprocess
import shutil
import sys

ffprobe_binary = "ffprobe"


script_dir = os.path.dirname(os.path.realpath(__file__))
mod_dir = script_dir # assuming the script is located in the mod's directory
data_lua_path = os.path.join(mod_dir, "data.lua")
sound_durations_lua_path = os.path.join(mod_dir, "sound_durations.lua")


class Sound:
    def __init__(self, codename, duration):
        self.codename = codename
        self.duration = duration
        
    def __str__(self): 
        return "\ncodename: " + self.codename + "\nduration: " + str(self.duration) + "\n"
    def __repr__(self):
        return "\ncodename: " + self.codename + "\nduration: " + str(self.duration) + "\n"


def get_duration(filepath):
    args=(ffprobe_binary, "-show_entries", "format=duration", "-of", "default=noprint_wrappers=1:nokey=1", "-i", filepath)
    try:
        popen = subprocess.Popen(args, stdout = subprocess.PIPE, stderr = subprocess.DEVNULL)
        stdout, stderr = popen.communicate()
        duration = float(re.sub('\s+', '', stdout.decode('UTF-8')))
        return duration
    except Exception:
        print("")
        print("ERROR calling FFMpeg binary: " + ffprobe_binary)
        print("Is it configured correctly?")
        print("")
        sys.exit(1)
        return 0


def get_sounds_list(data_lua_path):
    data_lua_file = open(data_lua_path, "r")
    data_lua_text = data_lua_file.read()
    data_lua_file.close()
    
    name_and_filename_regex = re.compile("^    name = \"(.*?)\",$\n^    filename = \"(.*?)\",$", flags=re.MULTILINE)
    remaining = data_lua_text
    sounds_list = []
    while True:
        match = name_and_filename_regex.search(remaining)
        if match is None:
            break
        name = match.group(1)
        filename_relative = match.group(2)
        # filename_relative is e.g. __TrainAnnouncements__/sounds/jingles/Airport.ogg
        filename_absolute = os.path.join(mod_dir, filename_relative.split("/", 1)[1].replace("/", os.path.sep))
        print("name: " + name)
        print("filename_absolute: " + filename_absolute)
        duration = get_duration(filename_absolute)
        print("duration: " + str(duration))
        print("")
        sounds_list.append(Sound(name, duration))
        remaining = remaining[match.end():]

    return sounds_list


def update_sound_durations_lua(sound_durations_lua_path, sounds_list):
    sound_durations_lua_text = []
    sound_durations_lua_text.append("local sound_durations =")
    sound_durations_lua_text.append("{")
    for sound in sounds_list:
        sound_durations_lua_text.append("    [\"{}\"] = {},".format(sound.codename, sound.duration))
    sound_durations_lua_text.append("}")
    sound_durations_lua_text.append("")
    sound_durations_lua_text.append("return sound_durations")
    
    sound_durations_lua_file = open(sound_durations_lua_path, "w")
    sound_durations_lua_file.write('\n'.join(sound_durations_lua_text) + '\n')
    sound_durations_lua_file.close()


sounds_list = get_sounds_list(data_lua_path)
update_sound_durations_lua(sound_durations_lua_path, sounds_list)
print("Finished ...")
