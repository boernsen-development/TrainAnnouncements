#!/usr/bin/env python3

# DESCRIPTION:
# 
# This script generates a new data.lua and edits settings.lua and locale/en/locale.cfg according to sound files found in sub-directory sounds.
# 
# data.lua: is completely rewritten
# settings.lua: all lines starting with 'allowed_values = {"<any category folder name>_' are overwritten
# locale.cfg: all lines below '[string-mod-setting]' are overwritten
# 
# Before starting, BACKUPS are automatically created of all the files.

# HOW TO USE:
# 
# The general sound file/folder structure is: <MOD_DIR>/sounds/<category>[/<voice>]/soundsfile.ogg
#
# To add your own sounds, put all the sound files into a suitable subfolder, e.g.
#   sounds/jingles/my_jingle.ogg
#   sounds/stations/my/my_station.ogg
#   sounds/stations/my/my_otherstation.ogg
# 
# Then after running this script, you should see these options in Factorio:
#   <jingle setting> -> my_jingle
#   <station announcement setting> -> my/my_station
#   <station announcement setting> -> my/my_otherstation

import numpy
import os
import re
import shutil
import sys
from collections import OrderedDict
from datetime import datetime

script_dir = os.path.dirname(os.path.realpath(__file__))
mod_dir = script_dir # assuming the script is located in the mod's directory
sounds_dir = os.path.join(mod_dir, "sounds")

mod_name = "__TrainAnnouncements__"
default_codename = "default"
default_guiname = "<Default>"
off_codename = "off"
off_guiname = "<Off>"
rotating_codename = "rotating"
rotating_guiname = "<Rotating>"
random_codename = "random"
random_guiname = "<Random>"
categories_with_defaults = ["jingles"]
categories_without_random_or_rotating = ["jingles", "stations"]
settings_without_defaults = ["train_announcements_jingle_sound_default"]
voices = ["en-GB-B-male", "en-GB-C-female"]
voice_setting_name = "train_announcements_voice"
station_start_number = 1
station_end_number = 30

date_time = datetime.now().strftime("%Y%d%m_%H%M%S")
data_lua_path = os.path.join(mod_dir, "data.lua")
data_lua_backup_path = data_lua_path + ".backup" + date_time
settings_lua_path =os.path.join(mod_dir, "settings.lua")
settings_lua_bakup_path = settings_lua_path + ".backup" + date_time
locale_cfg_path = os.path.join(mod_dir, "locale", "en", "locale.cfg")
locale_cfg_backup_path = locale_cfg_path + ".backup" + date_time

def get_category_to_settings_dict():
    category_to_settings_dict = {}
    category_to_settings_dict["destination_full"] = ["train_announcements_destination_full_announcement_sound"]
    category_to_settings_dict["no_path"] = ["train_announcements_no_path_announcement_sound"]
    category_to_settings_dict["pleasant_journey"] = ["train_announcements_pleasant_journey_announcement_sound"]
    category_to_settings_dict["wait_signal"] = ["train_announcements_wait_signal_announcement_sound"]
    category_to_settings_dict["back_on_path"] = ["train_announcements_back_on_path_announcement_sound"]
    category_to_settings_dict["intermediate"] = ["train_announcements_intermediate_announcement_sound"]
    category_to_settings_dict["jingles"] = ["train_announcements_jingle_sound_default",
                                            "train_announcements_next_station_jingle_sound_override",
                                            "train_announcements_final_station_jingle_sound_override",
                                            "train_announcements_destination_full_jingle_sound_override",
                                            "train_announcements_no_path_jingle_sound_override",
                                            "train_announcements_pleasant_journey_jingle_sound_override",
                                            "train_announcements_wait_signal_jingle_sound_override",
                                            "train_announcements_back_on_path_jingle_sound_override",
                                            "train_announcements_intermediate_jingle_sound_override"]
    category_to_settings_dict["station_defaults"] = ["train_announcements_next_station_announcement_sound_default",
                                                     "train_announcements_final_station_announcement_sound_default"]
    category_to_settings_dict["station_prefixes"] = ["train_announcements_next_station_prefixes_sound"]
    category_to_settings_dict["station_suffixes"] = ["train_announcements_next_station_suffixes_sound",
                                                     "train_announcements_final_station_suffixes_sound"]
    category_to_settings_dict["stations"] = []
    for i in range(station_start_number, station_end_number+1):
        category_to_settings_dict["stations"].append("train_announcements_station{0:02d}_announcement_sound".format(i))
        
    return category_to_settings_dict


class Sound:
    def __init__(self, filenames, codename, voiced_codename, guiname, enable_random, voice):
        self.filenames = filenames
        self.codename = codename
        self.voiced_codename = voiced_codename
        self.guiname = guiname
        self.enable_random = enable_random
        self.voice = voice
        
    def __str__(self): 
        return "\nfilenames: " + ', '.join(self.filenames) + "\ncodename: " + self.codename + "\nvoiced_codename: " + self.voiced_codename + "\nguiname: " + self.guiname + "\nenable_random: " + str(self.enable_random) + "\nvoice: " + str(self.voice) + "\n"
    def __repr__(self):
        return "\nfilenames: " + ', '.join(self.filenames) + "\ncodename: " + self.codename + "\nvoiced_codename: " + self.voiced_codename + "\nguiname: " + self.guiname + "\nenable_random: " + str(self.enable_random) + "\nvoice: " + str(self.voice) + "\n"


def invert_dict(dict):
    inv_dict = {}
    for category, settings_list in dict.items():
        for setting in settings_list:
            if setting not in inv_dict:
                inv_dict[setting] = category
            else:
                print("ERROR: duplicate setting found for category " + category)
    return inv_dict


def backup_rename(filename_old, filename_new):
    if not os.path.isfile(filename_old):
        print("File does not exist or is not a file:", filename_old)
        sys.exit(1)
    elif os.path.exists(filename_new):
        print("File already exists:", filename_new)
        sys.exit(1)
    else:
        print("Creating backup: ", filename_new)
        shutil.move(filename_old, filename_new)


def backup_copy(filename_old, filename_new):
    if not os.path.isfile(filename_old):
        print("File does not exist or is not a file:", filename_old)
        sys.exit(1)
    elif os.path.exists(filename_new):
        print("File already exists:", filename_new)
        sys.exit(1)
    else:
        print("Creating backup: ", filename_new)
        shutil.copy(filename_old, filename_new)


def check_exist(filename):
    if not os.path.isfile(filename):
        print("File does not exist or is not a file:", filename)
        sys.exit(1)


def print_array(array, description):
    print(description)
    for e in array:
        print(e)


def read_file(filename):
    if not os.path.isfile(filename):
        print('File does not exist.')
    else:
        # Open the file as f.
        # The function readlines() reads the file.
        with open(filename) as f:
            content = f.read().splitlines()

        # Show the file contents line by line.
        # We added the comma to print single newlines and not double newlines.
        # This is because the lines contain the newline character '\n'.
        for line in content:
            print(line)


def unique_but_order_preserved(list):
    a = numpy.array(list)
    _, idx = numpy.unique(a, return_index=True)
    return a[numpy.sort(idx)]


def name_and_duration_of(file_path):
    suffix_split = os.path.splitext(file_path)
    suffix = suffix_split[1]
    rest = suffix_split[0]
    match = re.search("([^(]*)(?: \(((?:\d+)(?:\.\d+)?) sec\))?$", rest)
    duration = ""
    path_and_name = ""
    if match and 1 <= match.lastindex and match.lastindex <= 2:
        path_and_name = match.group(1)
        if match.lastindex == 2:
            duration = match.group(2)
    else:
        print("ERROR spitting suffix and duration from: ", file_path)
    return path_and_name, duration


def replace_voice(file_path, voice):
    if voice:
        return re.sub(re.escape(voice)+"/", "<VOICE>/", file_path)
    else:
        return file_path


def codename_of(file_path):
    # remove file suffix, replace non-alphanum characters by underscores, convert to lowercase
    suffix_removed = os.path.splitext(file_path)[0]
    non_alnum_replaced = re.sub("[^0-9a-zA-Z.]", "_", suffix_removed)
    return non_alnum_replaced.lower()


def guiname_of(file_path):
    name = os.path.splitext(file_path)[0]
    # replace Windows path separators by "/"
    name = name.replace("\\", "/")
    # remove possible "./" at the beginning
    name = name.replace("./", "")
    return name


def get_sounds_list(dir, category_folder, voice):
    sounds_list = []
    category_dir = os.path.join(sounds_dir, category_folder) # e.g. .../sounds/jingles
    
    folders = [d.name for d in os.scandir(dir) if d.is_dir()]
    files = [f.name for f in os.scandir(dir) if f.is_file()]
    
    folders.sort()
    for folder in folders:
        folder_path = os.path.join(dir, folder)
        sounds_list.extend(get_sounds_list(folder_path, category_folder, folder if (not voice and folder in voices) else voice))
        
    files.sort()
    for file in files: # e.g. Next station.ogg
        full_file_path = os.path.join(dir, file)
        file_path_rel_to_category = os.path.relpath(full_file_path, category_dir)
        file_path_rel_to_sounds = os.path.relpath(full_file_path, sounds_dir)
        file_path_rel_to_mod_dir = os.path.relpath(full_file_path, mod_dir)
        filenames = [os.path.join(mod_name, file_path_rel_to_mod_dir)]
        codename = codename_of(file_path_rel_to_sounds)
        voiced_codename = codename_of(replace_voice(file_path_rel_to_sounds, voice))
        voiced_guiname = guiname_of(replace_voice(file_path_rel_to_category, voice))
        sounds_list.append(Sound(filenames, codename, voiced_codename, voiced_guiname, False, voice))
    
    if not category_folder in categories_without_random_or_rotating:
        filenames = [os.path.join(mod_name, os.path.relpath(os.path.join(path, name), mod_dir)) for path, subdirs, files in os.walk(dir) for name in files]
        filenames.sort()
        
        codename = codename_of(os.path.join(os.path.relpath(dir, sounds_dir), rotating_codename))
        voiced_codename = codename_of(replace_voice(os.path.join(os.path.relpath(dir, sounds_dir), rotating_codename), voice))
        voiced_guiname = guiname_of(replace_voice(os.path.join(os.path.relpath(dir, category_dir), rotating_guiname), voice))
        sounds_list.append(Sound(filenames, codename, voiced_codename, voiced_guiname, False, voice))
        
        codename = codename_of(os.path.join(os.path.relpath(dir, sounds_dir), random_codename))
        voiced_codename = codename_of(replace_voice(os.path.join(os.path.relpath(dir, sounds_dir), random_codename), voice))
        voiced_guiname = guiname_of(replace_voice(os.path.join(os.path.relpath(dir, category_dir), random_guiname), voice))
        sounds_list.append(Sound(filenames, codename, voiced_codename, voiced_guiname, True, voice))
        
    return sounds_list

# for each sounds sub-folder
# # find all ogg files and store their relative paths
# # create codenames for all files
# # create guinames for all files
def generate_category_to_sounds_dict(sounds_dir):
    sounds_dict = {}
    category_folders = [f.name for f in os.scandir(sounds_dir) if f.is_dir()]
    category_folders.sort()
    for category_folder in category_folders: # e.g. "jingles"
        category_path = os.path.join(sounds_dir, category_folder) # e.g. .../sounds/jingles
        
        sounds_list = get_sounds_list(category_path, category_folder, None)
        
        if category_folder in categories_with_defaults:
            sounds_list.append(Sound([], default_codename, default_codename, default_guiname, False, None))
            
        sounds_list.append(Sound([], off_codename, off_codename, off_guiname, False, None))

        sounds_dict[category_folder] = sounds_list
        
    return sounds_dict


# write data.lua with all found ogg files and corresponding codenames and guinames
def write_data_lua(data_lua_path, sounds_dict):
    print("Writing {} ...".format(data_lua_path))
    data_lua_text = []
    data_lua_text.append("data:extend({")
    
    for category, sounds_list in sounds_dict.items():
        for sound in sounds_list:
            if len(sound.filenames) == 1:
                data_lua_text.append("  {")
                data_lua_text.append("    type = \"sound\",")
                data_lua_text.append("    name = \"" + sound.codename + "\",")
                data_lua_text.append("    filename = \"" + sound.filenames[0].replace(os.path.sep, "/") + "\",")
                data_lua_text.append("    category = \"alert\",")
                data_lua_text.append("    volume = 1.0,")
                data_lua_text.append("    audible_distance_modifier = 1e20")
                data_lua_text.append("  },")
            elif len(sound.filenames) > 1:
                data_lua_text.append("  {")
                data_lua_text.append("    type = \"sound\",")
                data_lua_text.append("    name = \"" + sound.codename + "\",")
                data_lua_text.append("    variations = {")
                for filename in sound.filenames:
                    data_lua_text.append("      {filename = \"" + filename.replace(os.path.sep, "/") + "\"},")
                data_lua_text.append("    },")
                data_lua_text.append("    category = \"alert\",")
                data_lua_text.append("    allow_random_repeat = " + str(sound.enable_random) + ",")
                data_lua_text.append("    volume = 1.0,")
                data_lua_text.append("    audible_distance_modifier = 1e20")
                data_lua_text.append("  },")
    
    data_lua_text.append("})")

    data_lua_file = open(data_lua_path, "w")
    data_lua_file.write('\n'.join(data_lua_text) + '\n')
    data_lua_file.close()


# edit settings.lua by replacing allowed_values lines with codenames
def edit_settings_lua(settings_lua_path, category_to_sounds_dict, settings_to_category_dict):
    print("Editing {} ...".format(settings_lua_path))
    settings_lua_file = open(settings_lua_path, "r")
    settings_lua_text = settings_lua_file.read()
    settings_lua_file.close()

    # replace allowed_values entries with new codenames
    name_and_allowedvalues_regex = re.compile("^    name = \"(.*?)\",$\n*(?:^.*$\n){1,5}?^    allowed_values = \{\"(.*?)\"\},$", flags=re.MULTILINE)
    remaining = settings_lua_text
    settings_lua_text = ""
    while True:
        match = name_and_allowedvalues_regex.search(remaining)
        if match is None:
            break
        
        setting_name = match.group(1)
        
        # only replace known settings
        if setting_name in settings_to_category_dict:
            settings_lua_text += remaining[0:match.start(2)]
            category = settings_to_category_dict[setting_name]
            sounds = category_to_sounds_dict[category]
            if setting_name in settings_without_defaults:
                codenames = [sound.voiced_codename for sound in sounds if sound.codename != default_codename]
            else:
                codenames = [sound.voiced_codename for sound in sounds]
            #codenames = sorted(set(codenames))
            codenames = unique_but_order_preserved(codenames)
            #print("Codenames: " + str(codenames))
            settings_lua_text += '\", \"'.join(codenames)
        else:
            #print("Skipping setting: " + setting_name)
            settings_lua_text += remaining[0:match.end(2)]
            
        remaining = remaining[match.end(2):]
    settings_lua_text += remaining
    
    # replace order entries with increasing numbers
    counter = 1
    order_regex = re.compile("^    order = .*$", flags=re.MULTILINE)
    remaining = settings_lua_text
    settings_lua_text = ""
    while True:
        match = order_regex.search(remaining)
        if match is None:
            break
        settings_lua_text += remaining[0:match.start()]
        settings_lua_text += "    order = \"{0:03d}\"".format(counter)
        counter += 1
        remaining = remaining[match.end():]
    settings_lua_text += remaining
    
    # replace allowed_values entries of voice setting
    voice_setting_name_and_allowedvalues_regex = re.compile("^    name = \""+voice_setting_name+"\",$\n*(?:^.*$\n){1,4}?^    allowed_values = \{\"(.*?)\"\},$", flags=re.MULTILINE)
    match = voice_setting_name_and_allowedvalues_regex.search(settings_lua_text)
    if match and match.lastindex == 1:
        temp = settings_lua_text[0:match.start(1)]
        temp += '\", \"'.join([codename_of(voice) for voice in voices])
        temp += settings_lua_text[match.end(1):]
        settings_lua_text = temp

    settings_lua_file = open(settings_lua_path, "w")
    settings_lua_file.write(settings_lua_text)
    settings_lua_file.close()


# edit locale.cfg by rewriting everything below [string-mod-setting]
def edit_locale_cfg(locale_cfg_path, category_to_sounds_dict, category_to_settings_dict):
    print("Editing {} ...".format(locale_cfg_path))
    locale_cfg_file = open(locale_cfg_path, "r")
    locale_cfg_text = locale_cfg_file.readlines()
    locale_cfg_file.close()
        
    index_of_string_mod_setting = locale_cfg_text.index("[string-mod-setting]\n")
    index_to_start = index_of_string_mod_setting + 1
    index_max = len(locale_cfg_text) - 1
    if index_of_string_mod_setting >= 0 and index_to_start <= index_max:
        del locale_cfg_text[index_to_start:]
        
        # add voices settings
        for voice in voices:
            locale_cfg_text.append("{}-{}={}\n".format(voice_setting_name, codename_of(voice), voice))
        
        # add all sound settings
        for category, sounds_list in category_to_sounds_dict.items():
            settings_list = category_to_settings_dict.get(category)
            if settings_list is not None:
                for setting in settings_list:
                    skip_default = setting in settings_without_defaults
                    text_for_category = []
                    for sound in sounds_list:
                        if skip_default and sound.codename == default_codename:
                            continue
                        else:
                            # append <setting-codename>-<sound-codename>=<sound-guiname>
                            text_for_category.append("{}-{}={}\n".format(setting, sound.voiced_codename, sound.guiname))
                    
                    #locale_cfg_text.extend(sorted(set(text_for_category)))
                    locale_cfg_text.extend(unique_but_order_preserved(text_for_category))
            else:
                print("ERROR: settings not found for category " + category)
    else:
        print("ERROR: could not find [string-mod-setting] in locale.cfg")
    
    locale_cfg_file = open(locale_cfg_path, "w")
    locale_cfg_file.writelines(locale_cfg_text)
    locale_cfg_file.close()


backup_copy(data_lua_path, data_lua_backup_path)
backup_copy(settings_lua_path, settings_lua_bakup_path)
backup_copy(locale_cfg_path, locale_cfg_backup_path)

check_exist(data_lua_backup_path)
check_exist(settings_lua_bakup_path)
check_exist(locale_cfg_backup_path)

category_to_sounds_dict = generate_category_to_sounds_dict(sounds_dir)
category_to_settings_dict = get_category_to_settings_dict()
settings_to_category_dict = invert_dict(category_to_settings_dict)

#print(category_to_sounds_dict)

write_data_lua(data_lua_path, category_to_sounds_dict)
edit_settings_lua(settings_lua_path, category_to_sounds_dict, settings_to_category_dict)
edit_locale_cfg(locale_cfg_path, category_to_sounds_dict, category_to_settings_dict)

print("Finished...")
