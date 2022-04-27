data:extend({
  {
    type = "sound",
    name = "jingle_airport",
    filename = "__TrainAnnouncements__/sounds/jingles/Airport.ogg",
    category = "alert",
    volume = 1.0,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "jingle_announcement_with_chord____sec_",
    filename = "__TrainAnnouncements__/sounds/jingles/Announcement with chord (4 sec).ogg",
    category = "alert",
    volume = 1.0,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "jingle_stockholm_s_tunnelbana",
    filename = "__TrainAnnouncements__/sounds/jingles/Stockholm S Tunnelbana.ogg",
    category = "alert",
    volume = 1.0,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "jingle_changing",
    variations = {
      {filename = "__TrainAnnouncements__/sounds/jingles/Airport.ogg"},
      {filename = "__TrainAnnouncements__/sounds/jingles/Announcement with chord (4 sec).ogg"},
      {filename = "__TrainAnnouncements__/sounds/jingles/Stockholm S Tunnelbana.ogg"},
    },
    category = "alert",
    allow_random_repeat = false,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "jingle_random",
    variations = {
      {filename = "__TrainAnnouncements__/sounds/jingles/Airport.ogg"},
      {filename = "__TrainAnnouncements__/sounds/jingles/Announcement with chord (4 sec).ogg"},
      {filename = "__TrainAnnouncements__/sounds/jingles/Stockholm S Tunnelbana.ogg"},
    },
    category = "alert",
    allow_random_repeat = true,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "station_boehl_iggelheim",
    filename = "__TrainAnnouncements__/sounds/stations/Boehl-Iggelheim.ogg",
    category = "alert",
    volume = 1.0,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "station_guildford",
    filename = "__TrainAnnouncements__/sounds/stations/Guildford.ogg",
    category = "alert",
    volume = 1.0,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "station_worplesdon",
    filename = "__TrainAnnouncements__/sounds/stations/Worplesdon.ogg",
    category = "alert",
    volume = 1.0,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "station_changing",
    variations = {
      {filename = "__TrainAnnouncements__/sounds/stations/Boehl-Iggelheim.ogg"},
      {filename = "__TrainAnnouncements__/sounds/stations/Guildford.ogg"},
      {filename = "__TrainAnnouncements__/sounds/stations/Worplesdon.ogg"},
    },
    category = "alert",
    allow_random_repeat = false,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "station_random",
    variations = {
      {filename = "__TrainAnnouncements__/sounds/stations/Boehl-Iggelheim.ogg"},
      {filename = "__TrainAnnouncements__/sounds/stations/Guildford.ogg"},
      {filename = "__TrainAnnouncements__/sounds/stations/Worplesdon.ogg"},
    },
    category = "alert",
    allow_random_repeat = true,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "interruption_ice_train_delay_message",
    filename = "__TrainAnnouncements__/sounds/interruptions/ICE train delay message.ogg",
    category = "alert",
    volume = 1.0,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "interruption_changing",
    variations = {
      {filename = "__TrainAnnouncements__/sounds/interruptions/ICE train delay message.ogg"},
    },
    category = "alert",
    allow_random_repeat = false,
    audible_distance_modifier = 1e20
  },
  {
    type = "sound",
    name = "interruption_random",
    variations = {
      {filename = "__TrainAnnouncements__/sounds/interruptions/ICE train delay message.ogg"},
    },
    category = "alert",
    allow_random_repeat = true,
    audible_distance_modifier = 1e20
  },
})
