#!/usr/bin/env python3

# DESCRIPTION:
# 
# This script extracts the description from README.md and replaces the description in info.json, then deploys the mod as zip to the conigured Factorio mod directory.

# HOW TO USE:
#
# Run script in mod folder.

import os
import re
import subprocess
import shutil
import sys

factorio_mod_dir = "/home/ben/.factorio/mods/"

script_dir_path = os.path.dirname(os.path.realpath(__file__))
mod_dir_path = script_dir_path # assuming the script is located in the mod's directory
readme_path = os.path.join(mod_dir_path, "README.md")
info_json_path = os.path.join(mod_dir_path, "info.json")

def extract_description_from_readme(readme_path):
    print(readme_path)
    return ""

def replace_description_in_info_json(info_json_path, description_text):
    print(info_json_path)
    print(description_text)

def deploy(source_path, destination_path):
    print(source_path)
    print(destination_path)

description_text = extract_description_from_readme(readme_path)
replace_description_in_info_json(info_json_path, description_text)
deploy(mod_dir_path, factorio_mod_dir)
