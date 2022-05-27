# Train Announcements

***
## Description

This Factorio mod adds train announcements to the game when sitting in a train. Announcements are available as text as well as sound and they are in English only for now. Both can be turned off individually if desired. The audio announcements include various generic station names, which have been generated using https://freetts.com. These generic station announcements can be assigned to the actual station names of your game via the mod settings by copy & paste. These settings are savegame-wise and should also be in sync automatically for all players of a multiplayer game. The textual announcements do print the actual station names.

Currently the following announcements are supported:

* Next station (at configurable distance before the next station)
* Final station (if any wait condition of the next station is one of: Passenger not present, Inactivity >= 0.5h)
* Destination full
* No path
* Stopping at a red signal
* Back on path (train continues after "No path" or "Stopping at red signal")
* Pleasant journey (train has been switched to automatic and starts to move)
* Intermediate (at configurable distances before the next station)

Additionally, a few jingles are included, which can be played before the announcement if configured. Unfortunately, there is no audio preview possible in the settings, so you will have to try the sounds or play them manually from the sounds folder in the mod's zip file.

If you are on Linux (possibly also MacOS) and play single player / local only, you might add your own announcement sounds, e.g. from a recording, Youtube, freesound.org or any free text-to-speech service such as https://freetts.com . Just extract the mod zip (in Factorio folder/mods), keep the folder, but remove the zip file and then add your sounds as *.ogg files to the corresponding sub-folders (Factorio folder/mods/TrainAnnouncements_x.x.x/sounds/...). After that you will need to run the script update_data_settings_locale.sh (tested on Linux only). This makes them available in the corresponding mod settings dropdowns. If you delete the existing sounds, Factorio might complain about missing default settings, so you might be better off to add your sounds in own sub-folders. BE WARNED that if you added custom sounds and the mod is updated, your sounds will be removed, so make sure to backup them before updating!

DISCLAIMER: If you use the script update_data_settings_locale.sh, you do that on your own responsibility. I will not take any responsibility for any damage to or loss of any data caused by the script.


***
## CREDITS

This mod uses the following sounds or modified versions from freesound.org:

"Airport Announcement.wav" by Benboncan ( https://freesound.org/people/Benboncan/sounds/93645/ ) licensed under CC BY 3.0
"Announcement-03.wav" by gollamar ( https://freesound.org/people/gollamar/sounds/273232/ ) licensed under CC BY 3.0
"Stockholm's Tunnelbana jingle.wav" by klankbeeld ( https://freesound.org/people/klankbeeld/sounds/587168/ ) licensed under CC BY 4.0

This mod uses various text-to-speech conversions from https://freetts.com

This mod uses the following icons or modified versions from iconfinder.com:

"Ui, essential, app, sound, speaker" icon by Nack Thanakorn ( https://www.iconfinder.com/icons/8324192/ui_essential_app_sound_speaker_icon )


***
## LICENSE

All sound and icon files are licensed under Creative Commons Attribution-NonCommercial 3.0 Unported (CC BY-NC 3.0)
https://creativecommons.org/licenses/by-nc/3.0/

Everything else is under the following MIT License

Copyright (c) 2022 boernsen2

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


***
## Included voices from https://freetts.com for reference

|freetts setting||Name in mod|
|:---|:---|:---|
|English (UK) > en-GB-Standard-C||en-GB-C-female|


***
## Included file names and TTS texts for reference

|File name||Text for TTS or source|
|:---|:---|:---|
||||
|----- **Jingles** -----|||
|Airport (2 sec).ogg || https://freesound.org/people/Benboncan/sounds/93645/ |
|Announcement with chord (4.2 sec).ogg || https://freesound.org/people/gollamar/sounds/273232/ |
|Stockholm S Tunnelbana (2 sec).ogg || https://freesound.org/people/klankbeeld/sounds/587168/|
||||
|----- **Stations** -----|||
|We will arrive at the next station shortly.ogg || We will arrive at the next station shortly. |
|We will arrive at our final station shortly.ogg || We will arrive at our final station shortly. |
|Coal loading.ogg || Next station: Coal loading. |
|Coal unloading.ogg || Next station: Coal unloading. |
|Copper loading.ogg || Next station: Copper loading. |
|Copper unloading.ogg || Next station: Copper unloading. |
|Demand.ogg || Next station: Demand. |
|Deposit.ogg || Next station: Deposit. |
|Depot.ogg || Next station: Depot. |
|Fuel station.ogg || Next station: Fuel station. |
|Iron loading.ogg || Next station: Iron loading. |
|Iron unloading.ogg || Next station: Iron unloading. |
|Loading.ogg || Next station: Loading. |
|Main base.ogg || Next station: Main base. |
|Oil loading.ogg || Next station: Oil loading. |
|Oil unloading.ogg || Next station: Oil unloading. |
|Outpost.ogg || Next station: Outpost. |
|Petrol station.ogg || Next station: Petrol station. |
|Refuelling.ogg || Next station: Refuelling. |
|Stone loading.ogg || Next station: Stone loading. |
|Stone unloading.ogg || Next station: Stone unloading. |
|Supply.ogg || Next station: Supply. |
|Unloading.ogg || Next station: Unloading. |
|Uranium loading.ogg || Next station: Uranium loading. |
|Uranium unloading.ogg || Next station: Uranium unloading. |
||||
|----- **Destination full** -----|||
|Apologise for delay and inconvenience due to full destination.ogg || We are sorry to announce that this train may be delayed. This is due to our destination currently being full. We apologise for this late running, and the inconvenience caused. |
|Destination is full.ogg || The destination is full. |
|We cannot leave as the destination is full.ogg || We cannot leave as the destination is full. |
||||
|----- **No path** -----|||
|Apologise for delay and inconvenience due to no path.ogg || We are sorry to announce that this train may be delayed. This is due to having no path to the destination. We apologise for this late running, and the inconvenience caused. |
|The train has no path.ogg || The train has no path. |
|We cannot continue our journey as the train has no path.ogg || We cannot continue our journey as the train has no path. |
||||
|----- **Pleasant journey** -----|||
|Welcome on board and have a pleasant journey.ogg || We welcome you on board of this train and wish you a pleasant journey. |
|Welcome on board the Factorio train service.ogg || Welcome on board the Factorio train service. We wish you a pleasant journey. |
|Have a good trip.ogg || Have a good trip. |
|Have a nice trip.ogg || Have a nice trip. |
|Have a pleasant journey.ogg || Have a pleasant journey. |
||||
|----- **Stopping at a red signal** -----|||
|Apologise for delay and inconvenience due to blocked track in front.ogg || We are sorry to announce that this train may be delayed. This is due to another train being blocked in front of this one. We apologise for this late running, and the inconvenience caused. |
|Track in front of us is blocked.ogg || The track in front of us is blocked. |
|We cannot continue our journey as the track in front of us is blocked.ogg || We cannot continue our journey as the track in front of us is blocked. |
|Track is blocked.ogg || Track is blocked.  |
||||
|----- **Back on path** -----|||
|Have a good trip.ogg || Have a good trip. |
|Have a nice trip.ogg || Have a nice trip. |
|Have a pleasant journey.ogg || Have a pleasant journey.  |
|We are back on track.ogg || We are back on track.  |
||||
|----- **Intermediate** -----|||
|Please mind the gap.ogg || Please mind the gap between the train and the platform. |
|Please remember to collect personal belongings.ogg || Please remember to collect all your personal belongings when leaving the train. |
|You must buy a ticket.ogg || You must buy a ticket before you get on one of our trains. If you do not show a valid ticket when asked, you may be liable to pay a penalty fare.  |
