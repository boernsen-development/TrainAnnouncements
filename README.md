
# Train Announcements
***

# Description
This Factorio mod adds train announcements when sitting in a train. Announcements are available as text and sound and are in English only for now. The audio announcements include various generic station names, which have been generated using https://freetts.com for copyright reasons. The generic audio announcements can be assigned to the actual station names of your game via the mod settings. The textual announcements do print the actual station names.

Currently the following announcements are supported:

* Next station (if distance equals configured)
* Final station (if any wait condition of the next station is one of: Passenger not present, Inactivity >= 0.5h)
* Destination full
* No path
* Pleasant journey (Train is just switched to automatic and starts to move)
* Waiting at a red signal
* Back on path (Train continues after "No path" or "Waiting at red signal")

Additionally, a few jingles are included, which will be played before the announcement if configured. Unfortunately, there is no audio preview possible in the settings, so you will have to try the sounds or play them from the 

If you are on Linux (possibly also MacOS) and play single player / local only, you might add your own announcement sounds, e.g. from a recording, Youtube or any free text-to-speech service such as https://freetts.com . Just extract the mod zip (in Factorio folder/mods), remove the zip file and then add your sounds as *.ogg files to the corresponding sub-folders (Factorio folder/mods/TrainAnnouncements_x.x.x/sounds/...). After that you will need to run the script update_sounds.sh (tested on Linux only). This makes them available in the corresponding mod settings dropdowns. After updating the sounds, you might need to disable the mod, restart and then re-enable the mod if Factorio complains about missing mod settings. BE WARNED that if you added custom sounds, they will be removed once the mod is updated, so make sure to backup them before updating!

# Included file names and TTS texts for reference
***

|File name||Text for TTS||en-GB-C-female|
|:---|:---|:---|:---|:---:|
||||||
|----- **Jingles** -----|||||
|Airport (2 sec).ogg || from https://freesound.org/people/Benboncan/sounds/93645/ || |
|Announcement with chord (4.2 sec).ogg || from https://freesound.org/people/gollamar/sounds/273232/ || |
|Stockholm S Tunnelbana (2 sec).ogg || from https://freesound.org/people/klankbeeld/sounds/587168/|
||||||
|----- **Stations** -----|||||
|We will arrive at the next station shortly.ogg || We will arrive at the next station shortly. || x |
|We will arrive at our final station shortly.ogg || We will arrive at our final station shortly. || x |
|Coal loading.ogg || Next station: Coal loading. || x |
|Coal unloading.ogg || Next station: Coal unloading. || x |
|Copper loading.ogg || Next station: Copper loading. || x |
|Copper unloading.ogg || Next station: Copper unloading. || x |
|Demand.ogg || Next station: Demand. || x |
|Deposit.ogg || Next station: Deposit. || x |
|Depot.ogg || Next station: Depot. || x |
|Fuel station.ogg || Next station: Fuel station. || x |
|Iron loading.ogg || Next station: Iron loading. || x |
|Iron unloading.ogg || Next station: Iron unloading. || x |
|Loading.ogg || Next station: Loading. || x |
|Main base.ogg || Next station: Main base. || x |
|Oil loading.ogg || Next station: Oil loading. || x |
|Oil unloading.ogg || Next station: Oil unloading. || x |
|Outpost.ogg || Next station: Outpost. || x |
|Petrol station.ogg || Next station: Petrol station. || x |
|Refuelling.ogg || Next station: Refuelling. || x |
|Stone loading.ogg || Next station: Stone loading. || x |
|Stone unloading.ogg || Next station: Stone unloading. || x |
|Supply.ogg || Next station: Supply. || x |
|Unloading.ogg || Next station: Unloading. || x |
|Uranium loading.ogg || Next station: Uranium loading. || x |
|Uranium unloading.ogg || Next station: Uranium unloading. || x |
||||||
|----- **Destination full** -----|||||
|Apologise for delay and inconvenience due to full destination.ogg || We are sorry to announce that this train may be delayed. This is due to our destination currently being full. We apologise for this late running, and the inconvenience caused. || x |
|Destination is full.ogg || The destination is full. || x |
|We cannot leave as the destination is full.ogg || We cannot leave as the destination is full. || x |
||||||
|----- **No path** -----|||||
|Apologise for delay and inconvenience due to no path.ogg || We are sorry to announce that this train may be delayed. This is due to having no path to the destination. We apologise for this late running, and the inconvenience caused. || x |
|The train has no path.ogg || The train has no path. || x |
|We cannot continue our journey as the train has no path.ogg || We cannot continue our journey as the train has no path. || x |
||||||
|----- **Pleasant journey** -----|||||
|Welcome on board and have a pleasant journey.ogg || We welcome you on board of this train and wish you a pleasant journey. || x |
|Welcome on board the Factorio train service.ogg || Welcome on board the Factorio train service. We wish you a pleasant journey. || x |
|Have a good trip.ogg || Have a good trip. || x |
|Have a nice trip.ogg || Have a nice trip. || x |
|Have a pleasant journey.ogg || Have a pleasant journey. || x |
||||||
|----- **Waiting at a red signal** -----|||||
|Apologise for delay and inconvenience due to blocked track in front.ogg || We are sorry to announce that this train may be delayed. This is due to another train being blocked in front of this one. We apologise for this late running, and the inconvenience caused. || x |
|Track in front of us is blocked.ogg || The track in front of us is blocked. || x |
|We cannot continue our journey as the track in front of us is blocked.ogg || We cannot continue our journey as the track in front of us is blocked. || x |
|Track is blocked.ogg || Track is blocked.  || x |
||||||
|----- **Back on path** -----|||||
|Have a good trip.ogg || Have a good trip. || x |
|Have a nice trip.ogg || Have a nice trip. || x |
|Have a pleasant journey.ogg || Have a pleasant journey.  || x |
|We are back on track.ogg || We are back on track.  || x |
||||||
|----- **Intermediate** -----|||||
|Please mind the gap.ogg || Please mind the gap between the train and the platform. || x |
|Please remember to collect personal belongings.ogg || Please remember to collect all your personal belongings when leaving the train. || x |
|You must buy a ticket.ogg || You must buy a ticket before you get on one of our trains. If you do not show a valid ticket when asked, you may be liable to pay a penalty fare.  || x |


## More candidates for possible later use
* We are sorry to announce that this train may be delayed. This is due to a damage to the overhead electric wires. We apologise for this late running, and the inconvenience caused.
* We are sorry to announce that this train may be delayed. This is due to animals on the line earlier. We apologise for this late running, and the inconvenience caused.
* We are sorry to announce that this train may be delayed. This is due to trespassers on the railway earlier today. We apologise for this late running, and the inconvenience caused.
* We are sorry to announce that this train may be delayed. This is due to a tree blocking the railway. We apologise for this late running, and the inconvenience caused.
* We are sorry to announce that this train may be delayed. This is due to a damage to the tracks. We apologise for this late running, and the inconvenience caused.
* We are sorry to announce that this train may be delayed. This is due to a broken rail. We apologise for this late running, and the inconvenience caused.
* We are sorry to announce that this train may be delayed. This is due to a fire next to the track earlier today. We apologise for this late running, and the inconvenience caused.
* We are sorry to announce that this train may be delayed. This is due engineering works not finished on-time. We apologise for this late running, and the inconvenience caused.
* We are sorry to announce that this train may be delayed. The reason for the delay is currently being investigated by our team. We apologise for this late running, and the inconvenience caused.
* We are sorry to announce that this train may be delayed. This is due to a problem currently under investigation. We apologise for this late running, and the inconvenience caused.
* We are sorry to announce that this train may be delayed. This is due to a late running train being in front of this one. We apologise for this late running, and the inconvenience caused.
