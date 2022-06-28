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
    default_value = "jingles_airport__2.00_sec_",
    allowed_values = {"jingles_airport__2.00_sec_", "jingles_announcement_with_chord__4.71_sec_", "jingles_stockholm_s_tunnelbana__2.68_sec_", "off"},
    order = "006"
  },
  {
    type = "string-setting",
    name = "train_announcements_destination_full_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport__2.00_sec_", "jingles_announcement_with_chord__4.71_sec_", "jingles_stockholm_s_tunnelbana__2.68_sec_", "default", "off"},
    order = "007"
  },
  {
    type = "string-setting",
    name = "train_announcements_destination_full_announcement_sound",
    setting_type = "runtime-global",
    default_value = "destination_full_en_gb_c_female_the_destination_is_full__1.61_sec_",
    allowed_values = {"destination_full_en_gb_c_female_the_destination_is_full__1.61_sec_", "destination_full_en_gb_c_female_we_are_sorry_to_announce_that_this_train_may_be_delayed_as_our_destination_is_full._we_apologise_for_this_late_running__and_the_inconvenienc__9.07_sec_", "destination_full_en_gb_c_female_we_cannot_leave_as_the_destination_is_full__2.74_sec_", "destination_full_en_gb_c_female_rotating", "destination_full_en_gb_c_female_random", "destination_full_rotating", "destination_full_random", "off"},
    order = "008"
  },
  {
    type = "string-setting",
    name = "train_announcements_no_path_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport__2.00_sec_", "jingles_announcement_with_chord__4.71_sec_", "jingles_stockholm_s_tunnelbana__2.68_sec_", "default", "off"},
    order = "009"
  },
  {
    type = "string-setting",
    name = "train_announcements_no_path_announcement_sound",
    setting_type = "runtime-global",
    default_value = "no_path_en_gb_c_female_the_train_has_no_path__1.90_sec_",
    allowed_values = {"no_path_en_gb_c_female_the_train_has_no_path__1.90_sec_", "no_path_en_gb_c_female_we_are_sorry_to_announce_that_this_train_may_be_delayed._this_is_due_to_having_no_path_to_the_destination._we_apologise_for_this_late_running__and_the_inconvenience_caused__10.32_sec_", "no_path_en_gb_c_female_we_cannot_continue_our_journey_as_the_train_has_no_path__3.70_sec_", "no_path_en_gb_c_female_rotating", "no_path_en_gb_c_female_random", "no_path_rotating", "no_path_random", "off"},
    order = "010"
  },
  {
    type = "string-setting",
    name = "train_announcements_pleasant_journey_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport__2.00_sec_", "jingles_announcement_with_chord__4.71_sec_", "jingles_stockholm_s_tunnelbana__2.68_sec_", "default", "off"},
    order = "011"
  },
  {
    type = "string-setting",
    name = "train_announcements_pleasant_journey_announcement_sound",
    setting_type = "runtime-global",
    default_value = "pleasant_journey_en_gb_c_female_have_a_pleasant_journey__1.46_sec_",
    allowed_values = {"pleasant_journey_en_gb_c_female_have_a_good_trip__1.15_sec_", "pleasant_journey_en_gb_c_female_have_a_nice_trip__1.22_sec_", "pleasant_journey_en_gb_c_female_have_a_pleasant_journey__1.46_sec_", "pleasant_journey_en_gb_c_female_we_welcome_you_on_board_of_this_train_and_wish_you_a_pleasant_journey__4.25_sec_", "pleasant_journey_en_gb_c_female_welcome_on_board_the_factorio_train_service._we_wish_you_a_pleasant_journey__5.18_sec_", "pleasant_journey_en_gb_c_female_rotating", "pleasant_journey_en_gb_c_female_random", "pleasant_journey_rotating", "pleasant_journey_random", "off"},
    order = "012"
  },
  {
    type = "string-setting",
    name = "train_announcements_wait_signal_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport__2.00_sec_", "jingles_announcement_with_chord__4.71_sec_", "jingles_stockholm_s_tunnelbana__2.68_sec_", "default", "off"},
    order = "013"
  },
  {
    type = "string-setting",
    name = "train_announcements_wait_signal_announcement_sound",
    setting_type = "runtime-global",
    default_value = "wait_signal_en_gb_c_female_the_track_is_blocked__1.34_sec_",
    allowed_values = {"wait_signal_en_gb_c_female_the_track_in_front_of_us_is_blocked__2.28_sec_", "wait_signal_en_gb_c_female_the_track_is_blocked__1.34_sec_", "wait_signal_en_gb_c_female_we_are_sorry_to_announce_that_this_train_may_be_delayed_due_to_a_red_signal._we_apologise_for_this_late_running__and_the_inconvenience_caused__8.78_sec_", "wait_signal_en_gb_c_female_we_cannot_continue_our_journey_as_the_track_in_front_of_us_is_blocked__4.58_sec_", "wait_signal_en_gb_c_female_rotating", "wait_signal_en_gb_c_female_random", "wait_signal_rotating", "wait_signal_random", "off"},
    order = "014"
  },
  {
    type = "string-setting",
    name = "train_announcements_back_on_path_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport__2.00_sec_", "jingles_announcement_with_chord__4.71_sec_", "jingles_stockholm_s_tunnelbana__2.68_sec_", "default", "off"},
    order = "015"
  },
  {
    type = "string-setting",
    name = "train_announcements_back_on_path_announcement_sound",
    setting_type = "runtime-global",
    default_value = "back_on_path_en_gb_c_female_we_are_back_on_track__1.56_sec_",
    allowed_values = {"back_on_path_en_gb_c_female_have_a_good_trip__1.15_sec_", "back_on_path_en_gb_c_female_have_a_nice_trip__1.22_sec_", "back_on_path_en_gb_c_female_have_a_pleasant_journey__1.46_sec_", "back_on_path_en_gb_c_female_we_are_back_on_track__1.56_sec_", "back_on_path_en_gb_c_female_rotating", "back_on_path_en_gb_c_female_random", "back_on_path_rotating", "back_on_path_random", "off"},
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
    allowed_values = {"jingles_airport__2.00_sec_", "jingles_announcement_with_chord__4.71_sec_", "jingles_stockholm_s_tunnelbana__2.68_sec_", "default", "off"},
    order = "018"
  },
  {
    type = "string-setting",
    name = "train_announcements_intermediate_announcement_sound",
    setting_type = "runtime-global",
    default_value = "intermediate_random",
    allowed_values = {"intermediate_en_gb_c_female_please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train__10.46_sec_", "intermediate_en_gb_c_female_you_must_buy_a_ticket_before_you_get_on_one_of_our_trains._if_you_do_not_show_a_valid_ticket_when_asked__you_may_be_liable_to_pay_a_penalty_fare__9.50_sec_", "intermediate_en_gb_c_female_rotating", "intermediate_en_gb_c_female_random", "intermediate_rotating", "intermediate_random", "off"},
    order = "019"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "default",
    allowed_values = {"jingles_airport__2.00_sec_", "jingles_announcement_with_chord__4.71_sec_", "jingles_stockholm_s_tunnelbana__2.68_sec_", "default", "off"},
    order = "020"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_prefixes_sound",
    setting_type = "runtime-global",
    default_value = "station_prefixes_en_gb_c_female_our_next_stop_is__1.39_sec_",
    allowed_values = {"station_prefixes_en_gb_c_female_next_station__1.22_sec_", "station_prefixes_en_gb_c_female_our_next_stop_is__1.39_sec_", "station_prefixes_en_gb_c_female_the_next_station_is__1.49_sec_", "station_prefixes_en_gb_c_female_rotating", "station_prefixes_en_gb_c_female_random", "station_prefixes_rotating", "station_prefixes_random", "off"},
    order = "021"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_announcement_sound_default",
    setting_type = "runtime-global",
    default_value = "station_defaults_en_gb_c_female_we_will_arrive_at_our_next_stop_shortly__2.62_sec_",
    allowed_values = {"station_defaults_en_gb_c_female_we_will_arrive_at_our_next_stop_shortly__2.62_sec_", "station_defaults_en_gb_c_female_we_will_arrive_at_the_next_station_shortly__2.71_sec_", "station_defaults_en_gb_c_female_rotating", "station_defaults_en_gb_c_female_random", "station_defaults_rotating", "station_defaults_random", "off"},
    order = "022"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_suffixes_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_suffixes_en_gb_c_female_final_this_is_our_final_stop__1.82_sec_", "station_suffixes_en_gb_c_female_final_this_is_our_final_stop._please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train__6.41_sec_", "station_suffixes_en_gb_c_female_final_this_is_the_final_station__1.97_sec_", "station_suffixes_en_gb_c_female_final_rotating", "station_suffixes_en_gb_c_female_final_random", "station_suffixes_en_gb_c_female_please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train__4.66_sec_", "station_suffixes_en_gb_c_female_rotating", "station_suffixes_en_gb_c_female_random", "station_suffixes_rotating", "station_suffixes_random", "off"},
    order = "023"
  },
  {
    type = "int-setting",
    name = "train_announcements_number_of_rails_before_station",
    setting_type = "runtime-global",
    minimum_value = 1,
    default_value = 500,
    order = "024"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "jingles_announcement_with_chord__4.71_sec_",
    allowed_values = {"jingles_airport__2.00_sec_", "jingles_announcement_with_chord__4.71_sec_", "jingles_stockholm_s_tunnelbana__2.68_sec_", "default", "off"},
    order = "025"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_suffixes_sound",
    setting_type = "runtime-global",
    default_value = "station_suffixes_en_gb_c_female_final_this_is_our_final_stop._please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train__6.41_sec_",
    allowed_values = {"station_suffixes_en_gb_c_female_final_this_is_our_final_stop__1.82_sec_", "station_suffixes_en_gb_c_female_final_this_is_our_final_stop._please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train__6.41_sec_", "station_suffixes_en_gb_c_female_final_this_is_the_final_station__1.97_sec_", "station_suffixes_en_gb_c_female_final_rotating", "station_suffixes_en_gb_c_female_final_random", "station_suffixes_en_gb_c_female_please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train__4.66_sec_", "station_suffixes_en_gb_c_female_rotating", "station_suffixes_en_gb_c_female_random", "station_suffixes_rotating", "station_suffixes_random", "off"},
    order = "026"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=coal] ⟶ [item=locomotive]",
    allow_blank = true,
    order = "027"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_coal_loading__1.08_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "028"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=locomotive] ⟶ [item=coal]",
    allow_blank = true,
    order = "029"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_coal_unloading__1.30_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "030"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=stone] ⟶ [item=locomotive]",
    allow_blank = true,
    order = "031"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_stone_loading__1.20_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "032"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=locomotive] ⟶ [item=stone]",
    allow_blank = true,
    order = "033"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_stone_unloading__1.42_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "034"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=iron-ore] ⟶ [item=locomotive]",
    allow_blank = true,
    order = "035"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_iron_loading__1.10_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "036"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=locomotive] ⟶ [item=iron-ore]",
    allow_blank = true,
    order = "037"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_iron_unloading__1.27_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "038"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=copper-ore] ⟶ [item=locomotive]",
    allow_blank = true,
    order = "039"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_copper_loading__1.08_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "040"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=locomotive] ⟶ [item=copper-ore]",
    allow_blank = true,
    order = "041"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_copper_unloading__1.32_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "042"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=uranium-ore] ⟶ [item=locomotive]",
    allow_blank = true,
    order = "043"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_uranium_loading__1.42_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "044"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=locomotive] ⟶ [item=uranium-ore]",
    allow_blank = true,
    order = "045"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_uranium_unloading__1.61_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "046"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=iron-plate] ⟶ [item=locomotive]",
    allow_blank = true,
    order = "047"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_iron_loading__1.10_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "048"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=locomotive] ⟶ [item=iron-plate]",
    allow_blank = true,
    order = "049"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_iron_unloading__1.27_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "050"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=copper-plate] ⟶ [item=locomotive]",
    allow_blank = true,
    order = "051"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_copper_loading__1.08_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "052"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=locomotive] ⟶ [item=copper-plate]",
    allow_blank = true,
    order = "053"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_copper_unloading__1.32_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "054"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=steel-plate] ⟶ [item=locomotive]",
    allow_blank = true,
    order = "055"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_steel_loading__1.25_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "056"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=locomotive] ⟶ [item=steel-plate]",
    allow_blank = true,
    order = "057"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_steel_unloading__1.39_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "058"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_name_pattern",
    setting_type = "runtime-global",
    default_value = "[fluid=crude-oil] ⟶ [item=locomotive]",
    allow_blank = true,
    order = "059"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_oil_loading__1.06_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "060"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=locomotive] ⟶ [fluid=crude-oil]",
    allow_blank = true,
    order = "061"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations_en_gb_c_female_oil_unloading__1.25_sec_",
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
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
    allowed_values = {"stations_en_gb_c_female_coal_loading__1.08_sec_", "stations_en_gb_c_female_coal_outpost__1.27_sec_", "stations_en_gb_c_female_coal_unloading__1.30_sec_", "stations_en_gb_c_female_copper_loading__1.08_sec_", "stations_en_gb_c_female_copper_outpost__1.32_sec_", "stations_en_gb_c_female_copper_unloading__1.32_sec_", "stations_en_gb_c_female_demand__0.89_sec_", "stations_en_gb_c_female_deposit__0.94_sec_", "stations_en_gb_c_female_depot__0.72_sec_", "stations_en_gb_c_female_fuel_station__1.22_sec_", "stations_en_gb_c_female_iron_loading__1.10_sec_", "stations_en_gb_c_female_iron_outpost__1.30_sec_", "stations_en_gb_c_female_iron_unloading__1.27_sec_", "stations_en_gb_c_female_loading__0.79_sec_", "stations_en_gb_c_female_main_base__1.10_sec_", "stations_en_gb_c_female_oil_loading__1.06_sec_", "stations_en_gb_c_female_oil_outpost__1.25_sec_", "stations_en_gb_c_female_oil_unloading__1.25_sec_", "stations_en_gb_c_female_outpost__1.01_sec_", "stations_en_gb_c_female_petrol_station__1.30_sec_", "stations_en_gb_c_female_refuelling__0.98_sec_", "stations_en_gb_c_female_research_labs__1.34_sec_", "stations_en_gb_c_female_steel_loading__1.25_sec_", "stations_en_gb_c_female_steel_outpost__1.42_sec_", "stations_en_gb_c_female_steel_unloading__1.39_sec_", "stations_en_gb_c_female_stone_loading__1.20_sec_", "stations_en_gb_c_female_stone_outpost__1.42_sec_", "stations_en_gb_c_female_stone_unloading__1.42_sec_", "stations_en_gb_c_female_supply__0.86_sec_", "stations_en_gb_c_female_train_yard__1.06_sec_", "stations_en_gb_c_female_unloading__0.96_sec_", "stations_en_gb_c_female_uranium_loading__1.42_sec_", "stations_en_gb_c_female_uranium_outpost__1.63_sec_", "stations_en_gb_c_female_uranium_unloading__1.61_sec_", "off"},
    order = "086"
  },
  {
    type = "double-setting",
    name = "train_announcements_minimum_seconds_between_announcements",
    setting_type = "runtime-global",
    minimum_value = 0.0,
    default_value = 4.0,
    hidden = true,
    order = "087"
  },
  {
    type = "double-setting",
    name = "train_announcements_length_fall_back_in_seconds",
    setting_type = "runtime-global",
    minimum_value = 0.1,
    default_value = 2.0,
    hidden = true,
    order = "088"
  },
})
