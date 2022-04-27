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
    name = "train_announcements_default_jingle_sound",
    setting_type = "runtime-per-user",
    default_value = "jingle_airport",
    allowed_values = {"jingle_airport", "jingle_announcement_with_chord____sec_", "jingle_stockholm_s_tunnelbana", "jingle_changing", "jingle_random", "off"},
    order = "1f"
  },
  {
    type = "string-setting",
    name = "train_announcements_station_jingle_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"jingle_airport", "jingle_announcement_with_chord____sec_", "jingle_stockholm_s_tunnelbana", "jingle_changing", "jingle_random", "off"},
    order = "1g"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_jingle_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"jingle_airport", "jingle_announcement_with_chord____sec_", "jingle_stockholm_s_tunnelbana", "jingle_changing", "jingle_random", "off"},
    order = "1h"
  },
  {
    type = "string-setting",
    name = "train_announcements_interruption_jingle_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"jingle_airport", "jingle_announcement_with_chord____sec_", "jingle_stockholm_s_tunnelbana", "jingle_changing", "jingle_random", "off"},
    order = "1i"
  },
  {
    type = "string-setting",
    name = "train_announcements_interruption_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"interruption_ice_train_delay_message", "interruption_changing", "interruption_random", "off"},
    order = "1j"
  },
  {
    type = "int-setting",
    name = "train_announcements_number_of_rails_before_station",
    setting_type = "runtime-per-user",
    minimum_value = 1,
    default_value = 500,
    order = "1k"
  },
  {
    type = "string-setting",
    name = "train_announcements_station_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1l"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1m"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1n"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1o"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1p"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1q"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1r"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1s"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1t"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1u"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1v"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1w"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1x"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1y"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "1z"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "2a"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "2b"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "2c"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "2d"
  },
  {
    type = "string-setting",
    name = "train_announcements_station19_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "2e"
  },
  {
    type = "string-setting",
    name = "train_announcements_station20_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "2f"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_announcement_sound",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = {"station_boehl_iggelheim", "station_coal_outpost", "station_copper_outpost", "station_fuel_station", "station_guildford", "station_iron_outpost", "station_main_base", "station_oil_outpost", "station_outpost", "station_science_labs", "station_steel_outpost", "station_stone_outpost", "station_uranium_outpost", "station_worplesdon", "station_changing", "station_random", "off"},
    order = "2g"
  },
})
