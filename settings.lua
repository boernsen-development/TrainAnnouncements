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
    type = "string-setting",
    name = "train_announcements_voice",
    setting_type = "runtime-per-user",
    default_value = "en_gb_c_female",
    allowed_values = {"en_gb_b_male", "en_gb_c_female"},
    order = "005"
  },
  {
    type = "bool-setting",
    name = "train_announcements_print_station_number_enabled",
    setting_type = "runtime-global",
    default_value = false,
    order = "006"
  },
  {
    type = "string-setting",
    name = "train_announcements_jingle_sound_default",
    setting_type = "runtime-global",
    default_value = "jingles_airport",
    allowed_values = {"jingles_airport", "jingles_announcement_with_chord", "jingles_stockholm_s_tunnelbana", "off"},
    order = "007"
  },
  {
    type = "string-setting",
    name = "train_announcements_destination_full_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport", "jingles_announcement_with_chord", "jingles_stockholm_s_tunnelbana", "default", "off"},
    order = "008"
  },
  {
    type = "string-setting",
    name = "train_announcements_destination_full_announcement_sound",
    setting_type = "runtime-global",
    default_value = "destination_full__voice__the_destination_is_full",
    allowed_values = {"destination_full__voice__the_destination_is_full", "destination_full__voice__we_are_sorry_to_announce_that_this_train_may_be_delayed_as_our_destination_is_full", "destination_full__voice__we_cannot_leave_as_the_destination_is_full", "destination_full__voice__rotating", "destination_full__voice__random", "destination_full_rotating", "destination_full_random", "off"},
    order = "009"
  },
  {
    type = "string-setting",
    name = "train_announcements_no_path_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport", "jingles_announcement_with_chord", "jingles_stockholm_s_tunnelbana", "default", "off"},
    order = "010"
  },
  {
    type = "string-setting",
    name = "train_announcements_no_path_announcement_sound",
    setting_type = "runtime-global",
    default_value = "no_path__voice__the_train_has_no_path",
    allowed_values = {"no_path__voice__the_train_has_no_path", "no_path__voice__we_are_sorry_to_announce_that_this_train_may_be_delayed_as_there_is_no_path_to_the_destination", "no_path__voice__we_cannot_continue_our_journey_as_the_train_has_no_path", "no_path__voice__rotating", "no_path__voice__random", "no_path_rotating", "no_path_random", "off"},
    order = "011"
  },
  {
    type = "string-setting",
    name = "train_announcements_pleasant_journey_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport", "jingles_announcement_with_chord", "jingles_stockholm_s_tunnelbana", "default", "off"},
    order = "012"
  },
  {
    type = "string-setting",
    name = "train_announcements_pleasant_journey_announcement_sound",
    setting_type = "runtime-global",
    default_value = "pleasant_journey__voice__have_a_pleasant_journey",
    allowed_values = {"pleasant_journey__voice__have_a_good_trip", "pleasant_journey__voice__have_a_nice_trip", "pleasant_journey__voice__have_a_pleasant_journey", "pleasant_journey__voice__we_welcome_you_on_board_of_this_train_and_wish_you_a_pleasant_journey", "pleasant_journey__voice__welcome_on_board_the_factorio_train_service._we_wish_you_a_pleasant_journey", "pleasant_journey__voice__rotating", "pleasant_journey__voice__random", "pleasant_journey_rotating", "pleasant_journey_random", "off"},
    order = "013"
  },
  {
    type = "string-setting",
    name = "train_announcements_wait_signal_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport", "jingles_announcement_with_chord", "jingles_stockholm_s_tunnelbana", "default", "off"},
    order = "014"
  },
  {
    type = "string-setting",
    name = "train_announcements_wait_signal_announcement_sound",
    setting_type = "runtime-global",
    default_value = "wait_signal__voice__the_track_is_blocked",
    allowed_values = {"wait_signal__voice__the_track_in_front_of_us_is_blocked", "wait_signal__voice__the_track_is_blocked", "wait_signal__voice__we_are_sorry_to_announce_that_this_train_may_be_delayed_due_to_a_red_signal", "wait_signal__voice__we_cannot_continue_our_journey_as_the_track_in_front_of_us_is_blocked", "wait_signal__voice__rotating", "wait_signal__voice__random", "wait_signal_rotating", "wait_signal_random", "off"},
    order = "015"
  },
  {
    type = "string-setting",
    name = "train_announcements_back_on_path_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport", "jingles_announcement_with_chord", "jingles_stockholm_s_tunnelbana", "default", "off"},
    order = "016"
  },
  {
    type = "string-setting",
    name = "train_announcements_back_on_path_announcement_sound",
    setting_type = "runtime-global",
    default_value = "back_on_path__voice__we_are_back_on_track",
    allowed_values = {"back_on_path__voice__have_a_good_trip", "back_on_path__voice__have_a_nice_trip", "back_on_path__voice__have_a_pleasant_journey", "back_on_path__voice__we_are_back_on_track", "back_on_path__voice__rotating", "back_on_path__voice__random", "back_on_path_rotating", "back_on_path_random", "off"},
    order = "017"
  },
  {
    type = "int-setting",
    name = "train_announcements_number_of_rails_before_station_for_intermediate",
    setting_type = "runtime-global",
    minimum_value = 1,
    default_value = 2000,
    order = "018"
  },
  {
    type = "string-setting",
    name = "train_announcements_intermediate_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingles_airport", "jingles_announcement_with_chord", "jingles_stockholm_s_tunnelbana", "default", "off"},
    order = "019"
  },
  {
    type = "string-setting",
    name = "train_announcements_intermediate_announcement_sound",
    setting_type = "runtime-global",
    default_value = "intermediate_random",
    allowed_values = {"intermediate__voice__please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train", "intermediate__voice__you_must_buy_a_ticket_before_you_get_on_one_of_our_trains._if_you_do_not_show_a_valid_ticket_when_asked__you_may_be_liable_to_pay_a_penalty_fare", "intermediate__voice__rotating", "intermediate__voice__random", "intermediate_rotating", "intermediate_random", "off"},
    order = "020"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "default",
    allowed_values = {"jingles_airport", "jingles_announcement_with_chord", "jingles_stockholm_s_tunnelbana", "default", "off"},
    order = "021"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_prefixes_sound",
    setting_type = "runtime-global",
    default_value = "station_prefixes__voice__our_next_stop_is",
    allowed_values = {"station_prefixes__voice__next_station", "station_prefixes__voice__our_next_stop_is", "station_prefixes__voice__the_next_station_is", "station_prefixes__voice__rotating", "station_prefixes__voice__random", "station_prefixes_rotating", "station_prefixes_random", "off"},
    order = "022"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_announcement_sound_default",
    setting_type = "runtime-global",
    default_value = "station_defaults__voice__we_will_arrive_at_our_next_stop_shortly",
    allowed_values = {"station_defaults__voice__we_will_arrive_at_our_next_stop_shortly", "station_defaults__voice__we_will_arrive_at_the_next_station_shortly", "station_defaults__voice__rotating", "station_defaults__voice__random", "station_defaults_rotating", "station_defaults_random", "off"},
    order = "023"
  },
  {
    type = "string-setting",
    name = "train_announcements_next_station_suffixes_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_suffixes__voice__final_this_is_our_final_stop._please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train", "station_suffixes__voice__final_this_is_our_final_stop", "station_suffixes__voice__final_this_is_the_final_station", "station_suffixes__voice__final_rotating", "station_suffixes__voice__final_random", "station_suffixes__voice__please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train", "station_suffixes__voice__rotating", "station_suffixes__voice__random", "station_suffixes_rotating", "station_suffixes_random", "off"},
    order = "024"
  },
  {
    type = "int-setting",
    name = "train_announcements_number_of_rails_before_station",
    setting_type = "runtime-global",
    minimum_value = 1,
    default_value = 500,
    order = "025"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_jingle_sound_override",
    setting_type = "runtime-global",
    default_value = "jingles_announcement_with_chord",
    allowed_values = {"jingles_airport", "jingles_announcement_with_chord", "jingles_stockholm_s_tunnelbana", "default", "off"},
    order = "026"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_suffixes_sound",
    setting_type = "runtime-global",
    default_value = "station_suffixes__voice__final_this_is_our_final_stop._please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train",
    allowed_values = {"station_suffixes__voice__final_this_is_our_final_stop._please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train", "station_suffixes__voice__final_this_is_our_final_stop", "station_suffixes__voice__final_this_is_the_final_station", "station_suffixes__voice__final_rotating", "station_suffixes__voice__final_random", "station_suffixes__voice__please_remember_to_collect_all_your_personal_belongings_when_leaving_the_train", "station_suffixes__voice__rotating", "station_suffixes__voice__random", "station_suffixes_rotating", "station_suffixes_random", "off"},
    order = "027"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=coal] ⟶ [item=cargo-wagon]",
    allow_blank = true,
    order = "028"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__coal_loading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "029"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=cargo-wagon] ⟶ [item=coal]",
    allow_blank = true,
    order = "030"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__coal_unloading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "031"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=stone] ⟶ [item=cargo-wagon]",
    allow_blank = true,
    order = "032"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__stone_loading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "033"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=cargo-wagon] ⟶ [item=stone]",
    allow_blank = true,
    order = "034"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__stone_unloading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "035"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=iron-ore] ⟶ [item=cargo-wagon]",
    allow_blank = true,
    order = "036"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__iron_loading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "037"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=cargo-wagon] ⟶ [item=iron-ore]",
    allow_blank = true,
    order = "038"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__iron_unloading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "039"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=copper-ore] ⟶ [item=cargo-wagon]",
    allow_blank = true,
    order = "040"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__copper_loading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "041"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=cargo-wagon] ⟶ [item=copper-ore]",
    allow_blank = true,
    order = "042"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__copper_unloading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "043"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=uranium-ore] ⟶ [item=cargo-wagon]",
    allow_blank = true,
    order = "044"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__uranium_loading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "045"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=cargo-wagon] ⟶ [item=uranium-ore]",
    allow_blank = true,
    order = "046"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__uranium_unloading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "047"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=iron-plate] ⟶ [item=cargo-wagon]",
    allow_blank = true,
    order = "048"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__iron_loading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "049"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=cargo-wagon] ⟶ [item=iron-plate]",
    allow_blank = true,
    order = "050"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__iron_unloading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "051"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=copper-plate] ⟶ [item=cargo-wagon]",
    allow_blank = true,
    order = "052"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__copper_loading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "053"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=cargo-wagon] ⟶ [item=copper-plate]",
    allow_blank = true,
    order = "054"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__copper_unloading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "055"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=steel-plate] ⟶ [item=cargo-wagon]",
    allow_blank = true,
    order = "056"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__steel_loading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "057"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=cargo-wagon] ⟶ [item=steel-plate]",
    allow_blank = true,
    order = "058"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__steel_unloading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "059"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_name_pattern",
    setting_type = "runtime-global",
    default_value = "[fluid=crude-oil] ⟶ [item=fluid-wagon]",
    allow_blank = true,
    order = "060"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__oil_loading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "061"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=fluid-wagon] ⟶ [fluid=crude-oil]",
    allow_blank = true,
    order = "062"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__oil_unloading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "063"
  },
  {
    type = "string-setting",
    name = "train_announcements_station19_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=nuclear-fuel] ⟶ [item=cargo-wagon]",
    allow_blank = true,
    order = "064"
  },
  {
    type = "string-setting",
    name = "train_announcements_station19_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__fuel_loading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "065"
  },
  {
    type = "string-setting",
    name = "train_announcements_station20_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=cargo-wagon] ⟶ [item=nuclear-fuel]",
    allow_blank = true,
    order = "066"
  },
  {
    type = "string-setting",
    name = "train_announcements_station20_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__fuel_unloading",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "067"
  },
  {
    type = "string-setting",
    name = "train_announcements_station21_name_pattern",
    setting_type = "runtime-global",
    default_value = "[item=nuclear-fuel] ⟶ [item=locomotive]",
    allow_blank = true,
    order = "068"
  },
  {
    type = "string-setting",
    name = "train_announcements_station21_announcement_sound",
    setting_type = "runtime-global",
    default_value = "stations__voice__refuelling",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "069"
  },
  {
    type = "string-setting",
    name = "train_announcements_station22_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "070"
  },
  {
    type = "string-setting",
    name = "train_announcements_station22_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "071"
  },
  {
    type = "string-setting",
    name = "train_announcements_station23_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "072"
  },
  {
    type = "string-setting",
    name = "train_announcements_station23_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "073"
  },
  {
    type = "string-setting",
    name = "train_announcements_station24_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "074"
  },
  {
    type = "string-setting",
    name = "train_announcements_station24_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "075"
  },
  {
    type = "string-setting",
    name = "train_announcements_station25_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "076"
  },
  {
    type = "string-setting",
    name = "train_announcements_station25_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "077"
  },
  {
    type = "string-setting",
    name = "train_announcements_station26_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "078"
  },
  {
    type = "string-setting",
    name = "train_announcements_station26_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "079"
  },
  {
    type = "string-setting",
    name = "train_announcements_station27_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "080"
  },
  {
    type = "string-setting",
    name = "train_announcements_station27_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "081"
  },
  {
    type = "string-setting",
    name = "train_announcements_station28_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "082"
  },
  {
    type = "string-setting",
    name = "train_announcements_station28_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "083"
  },
  {
    type = "string-setting",
    name = "train_announcements_station29_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "084"
  },
  {
    type = "string-setting",
    name = "train_announcements_station29_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "085"
  },
  {
    type = "string-setting",
    name = "train_announcements_station30_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "086"
  },
  {
    type = "string-setting",
    name = "train_announcements_station30_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"stations__voice__coal_loading", "stations__voice__coal_outpost", "stations__voice__coal_unloading", "stations__voice__copper_loading", "stations__voice__copper_outpost", "stations__voice__copper_unloading", "stations__voice__demand", "stations__voice__depot", "stations__voice__fuel_loading", "stations__voice__fuel_station", "stations__voice__fuel_unloading", "stations__voice__iron_loading", "stations__voice__iron_outpost", "stations__voice__iron_unloading", "stations__voice__loading", "stations__voice__main_base", "stations__voice__oil_loading", "stations__voice__oil_outpost", "stations__voice__oil_unloading", "stations__voice__outpost", "stations__voice__petrol_station", "stations__voice__refuelling", "stations__voice__research_labs", "stations__voice__steel_loading", "stations__voice__steel_outpost", "stations__voice__steel_unloading", "stations__voice__stone_loading", "stations__voice__stone_outpost", "stations__voice__stone_unloading", "stations__voice__supply", "stations__voice__train_yard", "stations__voice__unloading", "stations__voice__uranium_loading", "stations__voice__uranium_outpost", "stations__voice__uranium_unloading", "off"},
    order = "087"
  },
  {
    type = "double-setting",
    name = "train_announcements_minimum_seconds_between_announcements",
    setting_type = "runtime-global",
    minimum_value = 0.0,
    default_value = 4.0,
    hidden = true,
    order = "088"
  },
  {
    type = "double-setting",
    name = "train_announcements_length_fall_back_in_seconds",
    setting_type = "runtime-global",
    minimum_value = 0.1,
    default_value = 2.0,
    hidden = true,
    order = "089"
  },
})
