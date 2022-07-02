#!/usr/bin/env python3

# DESCRIPTION:
# 
# This script finds all *.ogg files in the script's folder recursively and appends or updates the sound's length in seconds at the end of the filename, e.g. my_sound.ogg would be renamed to my_sounds (1.23 sec).ogg.
# It also checks for any existing mp3 files and warns about them as they cannot be read by Factorio and should be converted to ogg.

# HOW TO USE:
#
# Run script in mod folder.


import os
import re
import subprocess
import shutil
import sys


ffprobe_binary = "ffprobe"


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


def update_file_duration_suffix(filepath, duration):
    path, filename = os.path.split(filepath)
    match = re.search("(^.*?)( \([0-9]+\.[0-9]+ sec\))?(\.ogg$)", filename)
    new_filename = match.group(1) + " ({:.2f} sec)".format(duration) + match.group(3)
    new_filepath = os.path.join(path, new_filename)
    if filepath != new_filepath:
        print("")
        print(filepath)
        print("-->")
        print(new_filepath)
        print("")
        shutil.move(filepath, new_filepath)


def update_all_ogg_files_recursively(dir):
    for path, subdirs, files in os.walk(dir):
        for name in files:
            if name.endswith(".ogg"):
                filepath = os.path.join(path, name)
                duration = get_duration(filepath)
                update_file_duration_suffix(filepath, duration)


def check_existing_mp3_files(dir):
    mp3_files = [os.path.join(path, filename) for path, subdirs, files in os.walk(dir) for filename in files if filename.endswith(".mp3")]
    if mp3_files:
        print("\n")
        print("WARNING: found the following mp3 files:")
        print("\n".join(mp3_files))
        print("\n")


script_dir = os.path.dirname(os.path.realpath(__file__))
update_all_ogg_files_recursively(script_dir)
check_existing_mp3_files(script_dir)

print("Finished...")
