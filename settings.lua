data:extend({
  {
    type = "bool-setting",
    name = "train_announcements_text_enabled",
    setting_type = "runtime-per-user",
    default_value = true,
    order = "001"
  },
  {
    type = "bool-setting",
    name = "train_announcements_audio_enabled",
    setting_type = "runtime-per-user",
    default_value = true,
    order = "002"
  },
  {
    type = "double-setting",
    name = "train_announcements_sound_volume",
    setting_type = "runtime-per-user",
    minimum_value = 0.0,
    maximum_value = 1.0,
    default_value = 1.0,
    order = "003"
  },
  {
    type = "string-setting",
    name = "train_announcements_sound_type",
    setting_type = "runtime-per-user",
    default_value = "alert",
    allowed_values = {"game-effect", "gui-effect", "ambient", "environment", "walking", "alert", "wind"},
    order = "004"
  },
  {
    type = "int-setting",
    name = "train_announcements_number_of_rails_before_station",
    setting_type = "runtime-global",
    minimum_value = 1,
    default_value = 250,
    order = "005"
  },
  {
    type = "double-setting",
    name = "train_announcements_minimum_seconds_between_announcements",
    setting_type = "runtime-global",
    minimum_value = 0.0,
    default_value = 4.0,
    order = "006"
  },
  {
    type = "bool-setting",
    name = "train_announcements_print_station_number_enabled",
    setting_type = "runtime-global",
    default_value = false,
    order = "007"
  },
  {
    type = "double-setting",
    name = "train_announcements_seconds_between_jingle_and_announcement",
    setting_type = "runtime-global",
    minimum_value = 0.1,
    default_value = 2.0,
    order = "008"
  },
  {
    type = "string-setting",
    name = "train_announcements_default_jingle_sound",
    setting_type = "runtime-global",
    default_value = "jingle_airport__2_sec_",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "jingle_changing", "jingle_random", "default", "off"},
    order = "009"
  },
  {
    type = "string-setting",
    name = "train_announcements_override_next_station_jingle_sound",
    setting_type = "runtime-global",
    default_value = "default",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "jingle_changing", "jingle_random", "default", "off"},
    order = "010"
  },
  {
    type = "string-setting",
    name = "train_announcements_default_next_station_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "011"
  },
  {
    type = "string-setting",
    name = "train_announcements_override_final_station_jingle_sound",
    setting_type = "runtime-global",
    default_value = "jingle_announcement_with_chord__4_sec_",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "jingle_changing", "jingle_random", "default", "off"},
    order = "012"
  },
  {
    type = "string-setting",
    name = "train_announcements_override_final_station_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "013"
  },
  {
    type = "string-setting",
    name = "train_announcements_override_destination_full_jingle_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "jingle_changing", "jingle_random", "default", "off"},
    order = "014"
  },
  {
    type = "string-setting",
    name = "train_announcements_destination_full_announcement_sound",
    setting_type = "runtime-global",
    default_value = "destination_full_en_gb_c_female_destination_is_full",
    allowed_values = {"destination_full_en_gb_c_female_apologise_for_delay_and_inconvenience_due_to_full_destination", "destination_full_en_gb_c_female_destination_is_full", "destination_full_en_gb_c_female_we_cannot_leave_as_the_destination_is_full", "destination_full_changing", "destination_full_random", "off"},
    order = "015"
  },
  {
    type = "string-setting",
    name = "train_announcements_override_no_path_jingle_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "jingle_changing", "jingle_random", "default", "off"},
    order = "016"
  },
  {
    type = "string-setting",
    name = "train_announcements_no_path_announcement_sound",
    setting_type = "runtime-global",
    default_value = "no_path_en_gb_c_female_the_train_has_no_path",
    allowed_values = {"no_path_en_gb_c_female_apologise_for_delay_and_inconvenience_due_to_no_path", "no_path_en_gb_c_female_the_train_has_no_path", "no_path_en_gb_c_female_we_cannot_continue_our_journey_as_the_train_has_no_path", "no_path_changing", "no_path_random", "off"},
    order = "017"
  },
  {
    type = "string-setting",
    name = "train_announcements_override_pleasant_journey_jingle_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "jingle_changing", "jingle_random", "default", "off"},
    order = "018"
  },
  {
    type = "string-setting",
    name = "train_announcements_pleasant_journey_announcement_sound",
    setting_type = "runtime-global",
    default_value = "pleasant_journey_en_gb_c_female_have_a_good_trip",
    allowed_values = {"pleasant_journey_en_gb_c_female_have_a_good_trip", "pleasant_journey_en_gb_c_female_have_a_nice_trip", "pleasant_journey_en_gb_c_female_have_a_pleasant_journey", "pleasant_journey_en_gb_c_female_welcome_on_board_and_have_a_pleasant_journey", "pleasant_journey_en_gb_c_female_welcome_on_board_the_factorio_train_service", "pleasant_journey_changing", "pleasant_journey_random", "off"},
    order = "019"
  },
  {
    type = "string-setting",
    name = "train_announcements_override_wait_signal_jingle_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "jingle_changing", "jingle_random", "default", "off"},
    order = "020"
  },
  {
    type = "string-setting",
    name = "train_announcements_wait_signal_announcement_sound",
    setting_type = "runtime-global",
    default_value = "wait_signal_en_gb_c_female_track_is_blocked",
    allowed_values = {"wait_signal_en_gb_c_female_apologise_for_delay_and_inconvenience_due_to_blocked_track_in_front", "wait_signal_en_gb_c_female_the_track_in_front_of_us_is_blocked", "wait_signal_en_gb_c_female_track_is_blocked", "wait_signal_en_gb_c_female_we_cannot_continue_our_journey_as_the_track_in_front_of_us_is_blocked", "wait_signal_changing", "wait_signal_random", "off"},
    order = "021"
  },
  {
    type = "string-setting",
    name = "train_announcements_override_back_on_path_jingle_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "jingle_changing", "jingle_random", "default", "off"},
    order = "022"
  },
  {
    type = "string-setting",
    name = "train_announcements_back_on_path_announcement_sound",
    setting_type = "runtime-global",
    default_value = "back_on_path_en_gb_c_female_we_are_back_on_track",
    allowed_values = {"back_on_path_en_gb_c_female_have_a_good_trip", "back_on_path_en_gb_c_female_have_a_nice_trip", "back_on_path_en_gb_c_female_have_a_pleasant_journey", "back_on_path_en_gb_c_female_we_are_back_on_track", "back_on_path_changing", "back_on_path_random", "off"},
    order = "023"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "024"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "025"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "026"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "027"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "028"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "029"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "030"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "031"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "032"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "033"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "034"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "035"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "036"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "037"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "038"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "039"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "040"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "041"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "042"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "043"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "044"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "045"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "046"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "047"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "048"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "049"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "050"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "051"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "052"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "053"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "054"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "055"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "056"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "057"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "058"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "059"
  },
  {
    type = "string-setting",
    name = "train_announcements_station19_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "060"
  },
  {
    type = "string-setting",
    name = "train_announcements_station19_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "061"
  },
  {
    type = "string-setting",
    name = "train_announcements_station20_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "062"
  },
  {
    type = "string-setting",
    name = "train_announcements_station20_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "063"
  },
  {
    type = "string-setting",
    name = "train_announcements_station21_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "064"
  },
  {
    type = "string-setting",
    name = "train_announcements_station21_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "065"
  },
  {
    type = "string-setting",
    name = "train_announcements_station22_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "066"
  },
  {
    type = "string-setting",
    name = "train_announcements_station22_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "067"
  },
  {
    type = "string-setting",
    name = "train_announcements_station23_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "068"
  },
  {
    type = "string-setting",
    name = "train_announcements_station23_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "069"
  },
  {
    type = "string-setting",
    name = "train_announcements_station24_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "070"
  },
  {
    type = "string-setting",
    name = "train_announcements_station24_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "071"
  },
  {
    type = "string-setting",
    name = "train_announcements_station25_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "072"
  },
  {
    type = "string-setting",
    name = "train_announcements_station25_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "073"
  },
  {
    type = "string-setting",
    name = "train_announcements_station26_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "074"
  },
  {
    type = "string-setting",
    name = "train_announcements_station26_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "075"
  },
  {
    type = "string-setting",
    name = "train_announcements_station27_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "076"
  },
  {
    type = "string-setting",
    name = "train_announcements_station27_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "077"
  },
  {
    type = "string-setting",
    name = "train_announcements_station28_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "078"
  },
  {
    type = "string-setting",
    name = "train_announcements_station28_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "079"
  },
  {
    type = "string-setting",
    name = "train_announcements_station29_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "080"
  },
  {
    type = "string-setting",
    name = "train_announcements_station29_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "081"
  },
  {
    type = "string-setting",
    name = "train_announcements_station30_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "082"
  },
  {
    type = "string-setting",
    name = "train_announcements_station30_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "083"
  },
  {
    type = "string-setting",
    name = "train_announcements_station31_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "084"
  },
  {
    type = "string-setting",
    name = "train_announcements_station31_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "085"
  },
  {
    type = "string-setting",
    name = "train_announcements_station32_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "086"
  },
  {
    type = "string-setting",
    name = "train_announcements_station32_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "087"
  },
  {
    type = "string-setting",
    name = "train_announcements_station33_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "088"
  },
  {
    type = "string-setting",
    name = "train_announcements_station33_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "089"
  },
  {
    type = "string-setting",
    name = "train_announcements_station34_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "090"
  },
  {
    type = "string-setting",
    name = "train_announcements_station34_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "091"
  },
  {
    type = "string-setting",
    name = "train_announcements_station35_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "092"
  },
  {
    type = "string-setting",
    name = "train_announcements_station35_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "093"
  },
  {
    type = "string-setting",
    name = "train_announcements_station36_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "094"
  },
  {
    type = "string-setting",
    name = "train_announcements_station36_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "095"
  },
  {
    type = "string-setting",
    name = "train_announcements_station37_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "096"
  },
  {
    type = "string-setting",
    name = "train_announcements_station37_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "097"
  },
  {
    type = "string-setting",
    name = "train_announcements_station38_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "098"
  },
  {
    type = "string-setting",
    name = "train_announcements_station38_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "099"
  },
  {
    type = "string-setting",
    name = "train_announcements_station39_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "100"
  },
  {
    type = "string-setting",
    name = "train_announcements_station39_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "101"
  },
  {
    type = "string-setting",
    name = "train_announcements_station40_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "102"
  },
  {
    type = "string-setting",
    name = "train_announcements_station40_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "103"
  },
  {
    type = "string-setting",
    name = "train_announcements_station41_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "104"
  },
  {
    type = "string-setting",
    name = "train_announcements_station41_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "105"
  },
  {
    type = "string-setting",
    name = "train_announcements_station42_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "106"
  },
  {
    type = "string-setting",
    name = "train_announcements_station42_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "107"
  },
  {
    type = "string-setting",
    name = "train_announcements_station43_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "108"
  },
  {
    type = "string-setting",
    name = "train_announcements_station43_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "109"
  },
  {
    type = "string-setting",
    name = "train_announcements_station44_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "110"
  },
  {
    type = "string-setting",
    name = "train_announcements_station44_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "111"
  },
  {
    type = "string-setting",
    name = "train_announcements_station45_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "112"
  },
  {
    type = "string-setting",
    name = "train_announcements_station45_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "113"
  },
  {
    type = "string-setting",
    name = "train_announcements_station46_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "114"
  },
  {
    type = "string-setting",
    name = "train_announcements_station46_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "115"
  },
  {
    type = "string-setting",
    name = "train_announcements_station47_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "116"
  },
  {
    type = "string-setting",
    name = "train_announcements_station47_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "117"
  },
  {
    type = "string-setting",
    name = "train_announcements_station48_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "118"
  },
  {
    type = "string-setting",
    name = "train_announcements_station48_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "119"
  },
  {
    type = "string-setting",
    name = "train_announcements_station49_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "120"
  },
  {
    type = "string-setting",
    name = "train_announcements_station49_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "121"
  },
  {
    type = "string-setting",
    name = "train_announcements_station50_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "122"
  },
  {
    type = "string-setting",
    name = "train_announcements_station50_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_c_female_coal_loading", "station_en_gb_c_female_coal_unloading", "station_en_gb_c_female_copper_loading", "station_en_gb_c_female_copper_unloading", "station_en_gb_c_female_demand", "station_en_gb_c_female_deposit", "station_en_gb_c_female_depot", "station_en_gb_c_female_fuel_station", "station_en_gb_c_female_iron_loading", "station_en_gb_c_female_iron_unloading", "station_en_gb_c_female_loading", "station_en_gb_c_female_main_base", "station_en_gb_c_female_oil_loading", "station_en_gb_c_female_oil_unloading", "station_en_gb_c_female_outpost", "station_en_gb_c_female_petrol_station", "station_en_gb_c_female_refuelling", "station_en_gb_c_female_stone_loading", "station_en_gb_c_female_stone_unloading", "station_en_gb_c_female_supply", "station_en_gb_c_female_unloading", "station_en_gb_c_female_uranium_loading", "station_en_gb_c_female_uranium_unloading", "station_changing", "station_random", "off"},
    order = "123"
  },
})
