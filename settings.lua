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
    type = "bool-setting",
    name = "train_announcements_print_station_number_enabled",
    setting_type = "runtime-global",
    default_value = false,
    order = "005"
  },
  {
    type = "string-setting",
    name = "train_announcements_jingle_sound_default",
    setting_type = "runtime-global",
    default_value = "jingle_airport__2_sec_",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4.2_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "default", "off"},
    order = "006"
  },
  {
    type = "string-setting",
    name = "train_announcements_destination_full_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4.2_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "default", "off"},
    order = "007"
  },
  {
    type = "string-setting",
    name = "train_announcements_destination_full_announcement_sound",
    setting_type = "runtime-global",
    default_value = "destination_full_en_gb_c_female_destination_is_full",
    allowed_values = {"destination_full_en_gb_c_female_apologise_for_delay_and_inconvenience_due_to_full_destination", "destination_full_en_gb_c_female_destination_is_full", "destination_full_en_gb_c_female_we_cannot_leave_as_the_destination_is_full", "destination_full_en_GB_C_female_rotating", "destination_full_en_GB_C_female_random", "destination_full_rotating", "destination_full_random", "off"},
    order = "008"
  },
  {
    type = "string-setting",
    name = "train_announcements_no_path_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4.2_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "default", "off"},
    order = "009"
  },
  {
    type = "string-setting",
    name = "train_announcements_no_path_announcement_sound",
    setting_type = "runtime-global",
    default_value = "no_path_en_gb_c_female_the_train_has_no_path",
    allowed_values = {"no_path_en_gb_c_female_apologise_for_delay_and_inconvenience_due_to_no_path", "no_path_en_gb_c_female_the_train_has_no_path", "no_path_en_gb_c_female_we_cannot_continue_our_journey_as_the_train_has_no_path", "no_path_en_GB_C_female_rotating", "no_path_en_GB_C_female_random", "no_path_rotating", "no_path_random", "off"},
    order = "010"
  },
  {
    type = "string-setting",
    name = "train_announcements_pleasant_journey_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4.2_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "default", "off"},
    order = "011"
  },
  {
    type = "string-setting",
    name = "train_announcements_pleasant_journey_announcement_sound",
    setting_type = "runtime-global",
    default_value = "pleasant_journey_en_gb_c_female_have_a_good_trip",
    allowed_values = {"pleasant_journey_en_gb_c_female_have_a_good_trip", "pleasant_journey_en_gb_c_female_have_a_nice_trip", "pleasant_journey_en_gb_c_female_have_a_pleasant_journey", "pleasant_journey_en_gb_c_female_welcome_on_board_and_have_a_pleasant_journey", "pleasant_journey_en_gb_c_female_welcome_on_board_the_factorio_train_service", "pleasant_journey_en_GB_C_female_rotating", "pleasant_journey_en_GB_C_female_random", "pleasant_journey_rotating", "pleasant_journey_random", "off"},
    order = "012"
  },
  {
    type = "string-setting",
    name = "train_announcements_wait_signal_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4.2_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "default", "off"},
    order = "013"
  },
  {
    type = "string-setting",
    name = "train_announcements_wait_signal_announcement_sound",
    setting_type = "runtime-global",
    default_value = "wait_signal_en_gb_c_female_track_is_blocked",
    allowed_values = {"wait_signal_en_gb_c_female_apologise_for_delay_and_inconvenience_due_to_blocked_track_in_front", "wait_signal_en_gb_c_female_the_track_in_front_of_us_is_blocked", "wait_signal_en_gb_c_female_track_is_blocked", "wait_signal_en_gb_c_female_we_cannot_continue_our_journey_as_the_track_in_front_of_us_is_blocked", "wait_signal_en_GB_C_female_rotating", "wait_signal_en_GB_C_female_random", "wait_signal_rotating", "wait_signal_random", "off"},
    order = "014"
  },
  {
    type = "string-setting",
    name = "train_announcements_back_on_path_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4.2_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "default", "off"},
    order = "015"
  },
  {
    type = "string-setting",
    name = "train_announcements_back_on_path_announcement_sound",
    setting_type = "runtime-global",
    default_value = "back_on_path_en_gb_c_female_we_are_back_on_track",
    allowed_values = {"back_on_path_en_gb_c_female_have_a_good_trip", "back_on_path_en_gb_c_female_have_a_nice_trip", "back_on_path_en_gb_c_female_have_a_pleasant_journey", "back_on_path_en_gb_c_female_we_are_back_on_track", "back_on_path_en_GB_C_female_rotating", "back_on_path_en_GB_C_female_random", "back_on_path_rotating", "back_on_path_random", "off"},
    order = "016"
  },
  {
    type = "int-setting",
    name = "train_announcements_number_of_rails_before_station_for_intermediate",
    setting_type = "runtime-global",
    minimum_value = 1,
    default_value = 2000,
    order = "017"
  },
  {
    type = "string-setting",
    name = "train_announcements_intermediate_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4.2_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "default", "off"},
    order = "018"
  },
  {
    type = "string-setting",
    name = "train_announcements_intermediate_announcement_sound",
    setting_type = "runtime-global",
    default_value = "intermediate_random",
    allowed_values = {"intermediate_en_gb_c_female_please_remember_to_collect_personal_belongings", "intermediate_en_gb_c_female_you_must_buy_a_ticket", "intermediate_en_GB_C_female_rotating", "intermediate_en_GB_C_female_random", "intermediate_rotating", "intermediate_random", "off"},
    order = "019"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "default",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4.2_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "default", "off"},
    order = "020"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_prefix_sound",
    setting_type = "runtime-global",
    default_value = "station_prefix_next_en_gb_c_female_next_station",
    allowed_values = {"station_prefix_final_en_gb_c_female_next_station_is_the_final_station", "station_prefix_final_en_gb_c_female_next_stop_is_the_final_stop", "station_prefix_final_en_gb_c_female_our_next_stop_is_the_final_stop", "station_prefix_final_en_gb_c_female_our_next_stop_is_the_final_stop._please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train._the_next_stop_is", "station_prefix_final_en_GB_C_female_rotating", "station_prefix_final_en_GB_C_female_random", "station_prefix_final_rotating", "station_prefix_final_random", "station_prefix_next_en_gb_c_female_next_station", "station_prefix_next_en_gb_c_female_our_next_stop_is", "station_prefix_next_en_gb_c_female_the_next_station_is", "station_prefix_next_en_GB_C_female_rotating", "station_prefix_next_en_GB_C_female_random", "station_prefix_next_rotating", "station_prefix_next_random", "station_prefix_rotating", "station_prefix_random", "off"},
    order = "021"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_announcement_sound_default",
    setting_type = "runtime-global",
    default_value = "station_default_next_en_gb_c_female_we_will_arrive_at_the_next_station_shortly",
    allowed_values = {"station_default_final_en_gb_c_female_we_will_arrive_at_our_final_station_shortly", "station_default_final_en_GB_C_female_rotating", "station_default_final_en_GB_C_female_random", "station_default_final_rotating", "station_default_final_random", "station_default_next_en_gb_c_female_we_will_arrive_at_the_next_station_shortly", "station_default_next_en_GB_C_female_rotating", "station_default_next_en_GB_C_female_random", "station_default_next_rotating", "station_default_next_random", "station_default_rotating", "station_default_random", "off"},
    order = "022"
  },
  {
    type = "int-setting",
    name = "train_announcements_number_of_rails_before_station",
    setting_type = "runtime-global",
    minimum_value = 1,
    default_value = 500,
    order = "023"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "jingle_announcement_with_chord__4.2_sec_",
    allowed_values = {"jingle_airport__2_sec_", "jingle_announcement_with_chord__4.2_sec_", "jingle_stockholm_s_tunnelbana__2_sec_", "default", "off"},
    order = "024"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_prefix_sound",
    setting_type = "runtime-global",
    default_value = "station_prefix_final_en_gb_c_female_next_station_is_the_final_station",
    allowed_values = {"station_prefix_final_en_gb_c_female_next_station_is_the_final_station", "station_prefix_final_en_gb_c_female_next_stop_is_the_final_stop", "station_prefix_final_en_gb_c_female_our_next_stop_is_the_final_stop", "station_prefix_final_en_gb_c_female_our_next_stop_is_the_final_stop._please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train._the_next_stop_is", "station_prefix_final_en_GB_C_female_rotating", "station_prefix_final_en_GB_C_female_random", "station_prefix_final_rotating", "station_prefix_final_random", "station_prefix_next_en_gb_c_female_next_station", "station_prefix_next_en_gb_c_female_our_next_stop_is", "station_prefix_next_en_gb_c_female_the_next_station_is", "station_prefix_next_en_GB_C_female_rotating", "station_prefix_next_en_GB_C_female_random", "station_prefix_next_rotating", "station_prefix_next_random", "station_prefix_rotating", "station_prefix_random", "off"},
    order = "025"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_announcement_sound_default",
    setting_type = "runtime-global",
    default_value = "station_default_final_en_gb_c_female_we_will_arrive_at_our_final_station_shortly",
    allowed_values = {"station_default_final_en_gb_c_female_we_will_arrive_at_our_final_station_shortly", "station_default_final_en_GB_C_female_rotating", "station_default_final_en_GB_C_female_random", "station_default_final_rotating", "station_default_final_random", "station_default_next_en_gb_c_female_we_will_arrive_at_the_next_station_shortly", "station_default_next_en_GB_C_female_rotating", "station_default_next_en_GB_C_female_random", "station_default_next_rotating", "station_default_next_random", "station_default_rotating", "station_default_random", "off"},
    order = "026"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "027"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "028"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "029"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "030"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "031"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "032"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "033"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "034"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "035"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "036"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "037"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "038"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "039"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "040"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "041"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "042"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "043"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "044"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "045"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "046"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "047"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "048"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "049"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "050"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "051"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "052"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "053"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "054"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "055"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "056"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "057"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "058"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "059"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "060"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "061"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "062"
  },
  {
    type = "string-setting",
    name = "train_announcements_station19_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "063"
  },
  {
    type = "string-setting",
    name = "train_announcements_station19_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "064"
  },
  {
    type = "string-setting",
    name = "train_announcements_station20_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "065"
  },
  {
    type = "string-setting",
    name = "train_announcements_station20_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "066"
  },
  {
    type = "string-setting",
    name = "train_announcements_station21_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "067"
  },
  {
    type = "string-setting",
    name = "train_announcements_station21_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "068"
  },
  {
    type = "string-setting",
    name = "train_announcements_station22_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "069"
  },
  {
    type = "string-setting",
    name = "train_announcements_station22_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "070"
  },
  {
    type = "string-setting",
    name = "train_announcements_station23_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "071"
  },
  {
    type = "string-setting",
    name = "train_announcements_station23_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "072"
  },
  {
    type = "string-setting",
    name = "train_announcements_station24_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "073"
  },
  {
    type = "string-setting",
    name = "train_announcements_station24_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "074"
  },
  {
    type = "string-setting",
    name = "train_announcements_station25_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "075"
  },
  {
    type = "string-setting",
    name = "train_announcements_station25_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "076"
  },
  {
    type = "string-setting",
    name = "train_announcements_station26_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "077"
  },
  {
    type = "string-setting",
    name = "train_announcements_station26_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "078"
  },
  {
    type = "string-setting",
    name = "train_announcements_station27_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "079"
  },
  {
    type = "string-setting",
    name = "train_announcements_station27_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "080"
  },
  {
    type = "string-setting",
    name = "train_announcements_station28_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "081"
  },
  {
    type = "string-setting",
    name = "train_announcements_station28_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "082"
  },
  {
    type = "string-setting",
    name = "train_announcements_station29_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "083"
  },
  {
    type = "string-setting",
    name = "train_announcements_station29_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "084"
  },
  {
    type = "string-setting",
    name = "train_announcements_station30_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "085"
  },
  {
    type = "string-setting",
    name = "train_announcements_station30_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations_en_gb_c_female_coal_loading", "stations_en_gb_c_female_coal_unloading", "stations_en_gb_c_female_copper_loading", "stations_en_gb_c_female_copper_unloading", "stations_en_gb_c_female_demand", "stations_en_gb_c_female_deposit", "stations_en_gb_c_female_depot", "stations_en_gb_c_female_fuel_station", "stations_en_gb_c_female_iron_loading", "stations_en_gb_c_female_iron_unloading", "stations_en_gb_c_female_loading", "stations_en_gb_c_female_main_base", "stations_en_gb_c_female_oil_loading", "stations_en_gb_c_female_oil_unloading", "stations_en_gb_c_female_outpost", "stations_en_gb_c_female_petrol_station", "stations_en_gb_c_female_refuelling", "stations_en_gb_c_female_stone_loading", "stations_en_gb_c_female_stone_unloading", "stations_en_gb_c_female_supply", "stations_en_gb_c_female_unloading", "stations_en_gb_c_female_uranium_loading", "stations_en_gb_c_female_uranium_unloading", "stations_en_GB_C_female_rotating", "stations_en_GB_C_female_random", "stations_rotating", "stations_random", "off"},
    order = "086"
  },
  {
    type = "double-setting",
    name = "train_announcements_minimum_seconds_between_announcements",
    setting_type = "runtime-global",
    minimum_value = 0.0,
    default_value = 4.0,
    order = "087"
  },
  {
    type = "double-setting",
    name = "train_announcements_length_of_jingle_fall_back_in_seconds",
    setting_type = "runtime-global",
    minimum_value = 0.1,
    default_value = 2.0,
    order = "088"
  },
  {
    type = "double-setting",
    name = "train_announcements_length_of_prefix_fall_back_in_seconds",
    setting_type = "runtime-global",
    minimum_value = 0.1,
    default_value = 2.0,
    order = "089"
  },
})
