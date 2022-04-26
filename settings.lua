data:extend({
  {
    type = "bool-setting",
    name = "train_announcements_print_announcement_message_enabled",
    setting_type = "runtime-per-user",
    default_value = true,
    order = "1a"
  },
  {
    type = "bool-setting",
    name = "train_announcements_play_announcement_sound_enabled",
    setting_type = "runtime-per-user",
    default_value = true,
    order = "1b"
  },
  {
    type = "double-setting",
    name = "train_announcements_volume",
    setting_type = "runtime-per-user",
    minimum_value = 0.0,
    maximum_value = 1.0,
    default_value = 1.0,
    order = "1c"
  },
  {
    type = "double-setting",
    name = "train_announcements_minimum_seconds_between_announcements",
    setting_type = "runtime-per-user",
    minimum_value = 0.0,
    default_value = 4.0,
    order = "1d"
  },
  {
    type = "double-setting",
    name = "train_announcements_seconds_between_jingle_and_announcement",
    setting_type = "runtime-per-user",
    minimum_value = 0.1,
    default_value = 2.0,
    order = "1e"
  },
  {
    type = "string-setting",
    name = "train_announcements_interruption_jingle_sound",
    setting_type = "runtime-per-user",
    default_value = "jingle_regio",
    allowed_values = {"jingle_regio", "jingle_changing", "jingle_random", "off"},
    order = "1f"
  },
  {
    type = "string-setting",
    name = "train_announcements_interruption_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "interruption_random",
    allowed_values = {"interruption_verzoegerung_aufgrund_hoher_streckenauslastung", "interruption_verzoegerung_aufgrund_technischer_stoerung_an_der_streckeg", "interruption_verzoegerung_aufgrund_umgestuerzter_baeume_im_gleis", "interruption_verzoegerung_aufgrund_verspaetetem_gegenzug", "interruption_verzoegerung_aufgrund_von_notarzteinsatz_am_gleis", "interruption_verzoegerung_aufgrund_von_personen_im_gleis", "interruption_verzoegerung_aufgrund_von_verspaetung_eines_vorausfahrenden_zuges", "interruption_verzoegerung_aufgrund_witterungsbedingter_stoerung", "interruption_verzoegerung_der_weiterfahrt_aufgrund_technischer_stoerung", "interruption_changing", "interruption_random", "off"},
    order = "1g"
  },
  {
    type = "int-setting",
    name = "train_announcements_number_of_rails_before_station",
    setting_type = "runtime-per-user",
    minimum_value = 1,
    default_value = 800,
    order = "1h"
  },
  {
    type = "string-setting",
    name = "train_announcements_station_jingle_sound",
    setting_type = "runtime-per-user",
    default_value = "jingle_regio",
    allowed_values = {"jingle_regio", "jingle_changing", "jingle_random", "off"},
    order = "1i"
  },
  {
    type = "string-setting",
    name = "train_announcements_station_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "announcement_changing",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1j"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1k"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1l"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1m"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1n"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1o"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1p"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1q"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1r"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1s"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1t"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1u"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1v"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1w"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1x"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1y"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "1z"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "2a"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "2b"
  },
  {
    type = "string-setting",
    name = "train_announcements_station19_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "2c"
  },
  {
    type = "string-setting",
    name = "train_announcements_station20_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "2d"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_jingle_sound",
    setting_type = "runtime-per-user",
    default_value = "jingle_regio",
    allowed_values = {"jingle_regio", "jingle_changing", "jingle_random", "off"},
    order = "2e"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "announcement_changing",
    allowed_values = {"announcement_aachen_hbf__long_", "announcement_aachen_hbf__short_", "announcement_aachen_schanz", "announcement_aachen_west", "announcement_anrath", "announcement_berlin_alexanderplatz", "announcement_berlin_charlottenburg", "announcement_berlin_friedrichstrasse__long_", "announcement_berlin_friedrichstrasse__short_", "announcement_berlin_hbf", "announcement_berlin_ostbahnhof", "announcement_berlin_ostkreuz", "announcement_berlin_wannsee", "announcement_berlin_zoologischer_garten", "announcement_brachelen", "announcement_brandenburg_hbf", "announcement_duisburg_hbf__long_", "announcement_duisburg_hbf__short_", "announcement_duisburg_hochfeld_sued", "announcement_erkelenz", "announcement_erkner", "announcement_forsthaus", "announcement_geilenkirchen", "announcement_goetz", "announcement_gross_kreutz", "announcement_herrath", "announcement_herzogenrath", "announcement_hueckelhoven_baal", "announcement_koeln_hbf__long_", "announcement_koeln_hbf__short_", "announcement_kohlscheid", "announcement_krefeld_hbf__long_", "announcement_krefeld_hbf__short_", "announcement_krefeld_hohenbudberg_chempark", "announcement_krefeld_linn", "announcement_krefeld_oppum", "announcement_krefeld_uerdingen", "announcement_lindern", "announcement_magdeburg_neustadt__long_", "announcement_magdeburg_neustadt__short_", "announcement_moenchengladbach_hbf__long_", "announcement_moenchengladbach_hbf__short_", "announcement_muehlheim__ruhr__styrum", "announcement_muehlheim__ruhr_", "announcement_potsdam_charlottenhof__long_", "announcement_potsdam_charlottenhof__short_", "announcement_potsdam_hbf", "announcement_potsdam_park_sanssouci", "announcement_rheinhausen_ost", "announcement_rheinhausen", "announcement_rheydt_hbf__long_", "announcement_rheydt_hbf__short_", "announcement_uebach_palenberg", "announcement_viersen", "announcement_werder__havel_", "announcement_wickrath", "announcement_changing", "announcement_random", "off"},
    order = "2f"
  },
})
