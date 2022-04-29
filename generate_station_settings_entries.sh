#!/bin/bash

start=1
end=50

for i in $(seq -w $start $end)
do
    echo "  {"
    echo "    type = \"string-setting\","
    echo "    name = \"train_announcements_station${i}_name_pattern\","
    echo "    setting_type = \"runtime-global\","
    echo "    default_value = \"\","
    echo "    allow_blank = true,"
    echo "    order = \"xx\""
    echo "  },"
    echo "  {"
    echo "    type = \"string-setting\","
    echo "    name = \"train_announcements_station${i}_announcement_sound\","
    echo "    setting_type = \"runtime-global\","
    echo "    default_value = \"off\","
    echo "    allowed_values = {\"station_dummy\"},"
    echo "    order = \"xx\""
    echo "  },"
done

echo ""
echo ""

# for i in $(seq -w $start $end)
# do
#     echo "train_announcements_station${i}_name_pattern=#${i} pattern [img=info]"
#     echo "train_announcements_station${i}_announcement_sound=#${i} announcement sound [img=info]"
# done

echo ""
echo ""

for i in $(seq -w $start $end)
do
    echo "train_announcements_station${i}_name_pattern=Defines the pattern to match in the station name. If the pattern is found anywhere in the station name, the corresponding announcement sound is played. Lower '#' have higher priority, i.e. top-to-bottom. Note that you can copy & paste station names from the game to the settings, even if they contain symbols."
    echo "train_announcements_station${i}_announcement_sound=Defines the announcement sound played when the #${i} pattern is found in the station name."
done
