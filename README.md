# Train Announcements
![](thumbnail.png)

* [Description](#description)
* [CREDITS](#credits)
* [LICENSE](#license)
* [Jingles](#jingles)
* [TTS voices](#tts-voices)
* [TTS texts](#tts-texts)


## Description

This Factorio mod adds train announcements to the game when sitting in a train. Currently the following announcements are supported:

* Next station (at configurable distance before the next station)
* Final station (if any wait condition of the next station is one of: Passenger not present, Inactivity >= 0.5h)
* Destination full
* No path
* Stopping at a red signal
* Back on path (train continues after being interrupted)
* Pleasant journey (train has been switched to automatic and starts to move)
* Intermediate (at configurable distances before the next station)

Announcements are available as text as well as sound and they are in English only for now. Both can be turned off individually if desired. The audio announcements include various generic station names, which have been generated using https://freetts.com. These generic station announcements can be assigned to the actual station names of your game via the mod settings by copy & paste. These settings are savegame-wise and should also be in sync automatically for all players of a multiplayer game. The textual announcements do print the actual station names.

Additionally, a few jingles are included, which will be played before the announcement if configured. Unfortunately, there is no audio preview possible in the settings, so you will have to try the sounds or play them manually from the sounds folder in the mod's zip file.

If you are on Linux (possibly also MacOS) and play single player / local only, you might add your own announcement sounds, e.g. from a recording, Youtube, freesound.org or any free text-to-speech service such as https://freetts.com .

DISCLAIMER: If you use any included script, you do that on your own responsibility. I will not take any responsibility for any damage to or loss of any data caused by the script.

To add your own sounds extract the mod zip file (in Factorio folder/mods), then remove the zip file (keep the folder) and then add your sounds as *.ogg files to the corresponding sub-folders (i.e. Factorio folder/mods/TrainAnnouncements_x.x.x/sounds/...). After that you will need to run the two scripts update_sounds_lengths.sh and update_data_settings_locale.sh (tested on Ubuntu only). This appends the required sound lengths and makes them available in the mod settings. If you delete the existing sounds, Factorio might complain about missing default settings, so you might be better off to add your sounds in own sub-folders. BE WARNED that if you added custom sounds and the mod is updated, your sounds will be removed, so make sure to backup them before updating or maintain them in a separate folder and copy/update them after each mod update!


## CREDITS

This mod uses the following sounds or modified versions from freesound.org:

"Airport Announcement.wav" by Benboncan ( https://freesound.org/people/Benboncan/sounds/93645/ ) licensed under CC BY 3.0
"Announcement-03.wav" by gollamar ( https://freesound.org/people/gollamar/sounds/273232/ ) licensed under CC BY 3.0
"Stockholm's Tunnelbana jingle.wav" by klankbeeld ( https://freesound.org/people/klankbeeld/sounds/587168/ ) licensed under CC BY 4.0

This mod uses various text-to-speech conversions from https://freetts.com

This mod uses the following icons or modified versions from iconfinder.com:

"Ui, essential, app, sound, speaker" icon by Nack Thanakorn ( https://www.iconfinder.com/icons/8324192/ui_essential_app_sound_speaker_icon )


## LICENSE

All sound and image files are licensed under Creative Commons Attribution 4.0 International (CC BY 4.0)
https://creativecommons.org/licenses/by/4.0/

Everything else is under the following MIT License

Copyright (c) 2022 boernsen-development (<77436741+boernsen-development@users.noreply.github.com>)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


## Jingles

|File name|Source|
|:---|:---|
|Airport.ogg | https://freesound.org/people/Benboncan/sounds/93645/ |
|Announcement with chord.ogg | https://freesound.org/people/gollamar/sounds/273232/ |
|Stockholm S Tunnelbana.ogg | https://freesound.org/people/klankbeeld/sounds/587168/|


## TTS voices

|Voice source and settings|Name in mod|
|:---|:---|
| https://freetts.com > English (UK) > en-GB-Standard-C|en-GB-C-female|


## Included TTS texts

### Back on path
* Have a good trip.
* Have a nice trip.
* Have a pleasant journey.
* We are back on track.

### Destination full
* We are sorry to announce that this train may be delayed as our destination is full. We apologise for this late running, and the inconvenience caused.
* The destination is full.
* We cannot leave as the destination is full.

### Intermediate
* Please remember to collect all your personal belongings when leaving the train.
* You must buy a ticket before you get on one of our trains. If you do not show a valid ticket when asked, you may be liable to pay a penalty fare.

### No path
* We are sorry to announce that this train may be delayed. This is due to having no path to the destination. We apologise for this late running, and the inconvenience caused.
* The train has no path.
* We cannot continue our journey as the train has no path.

### Pleasant journey
* We welcome you on board of this train and wish you a pleasant journey.
* Welcome on board the Factorio train service. We wish you a pleasant journey.
* Have a good trip.
* Have a nice trip.
* Have a pleasant journey.

### Station defaults
* We will arrive at the next station shortly.
* We will arrive at our next stop shortly.

### Station prefixes
* Next station?
* The next station is?
* Our next stop is?

### Station suffixes
* Please remember to collect all your personal belongings when leaving the train.
* This is the final station.
* This is our final stop.
* This is our final stop. Please remember to collect all your personal belongings when leaving the train.

### Stations
* Coal loading
* Coal unloading
* Coal outpost
* Copper loading
* Copper unloading
* Copper outpost
* Demand
* Deposit
* Depot
* Fuel station
* Iron loading
* Iron unloading
* Iron outpost
* Loading
* Main base
* Oil loading
* Oil unloading
* Oil outpost
* Outpost
* Petrol station
* Refuelling
* Research labs
* Steel loading
* Steel unloading
* Steel outpost
* Stone loading
* Stone unloading
* Stone outpost
* Supply
* Train yard
* Unloading
* Uranium loading
* Uranium unloading
* Uranium outpost

### Stopping at a red signal
* We are sorry to announce that this train may be delayed due to a red signal. We apologise for this late running, and the inconvenience caused.
* The track in front of us is blocked.
* We cannot continue our journey as the track in front of us is blocked.
* The track is blocked.

