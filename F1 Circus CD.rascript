// F1 Circus CD
// #ID = 19845

// $00801E: [8-bit] Current race position
//          0x1B = DNF
function position() => byte(0x00801E)

// $00801F: [8-bit] Current lap (0-indexed)
//          Flips to total lap count when race is finished
//          Still counts up in "0-lap" races
function current_lap() => byte(0x00801F)

// $008020: [8-bit] Final time minutes
function final_time_minutes() => byte(0x008020)

// $008021: [8-bit] Final time hours
function final_time_hours() => byte(0x008021)

// $008023: [8-bit] Final time seconds
function final_time_seconds() => byte(0x008023)

// $008024: [16-bit] Final time milliseconds
function final_time_milliseconds() => word(0x008024)

// $008026: [8-bit] Lap time seconds
function lap_time_seconds() => byte(0x008026)

// $008027: [8-bit] Lap time minutes
function lap_time_minutes() => byte(0x008027)

// $008028: [16-bit] Lap time milliseconds
function lap_time_milliseconds() => word(0x008028)

// $00802A: [16-bit] Current distance around track
//          0x0000 = Start
//          End dependent on track length (see 0x21e38)
function current_distance_around_track() => word(0x00802A)

// $008032: [16-bit] Current speed (displayed as "average speed" but is in fact instantaneous)
//          Measured in km/h
function speed() => word(0x008032)

// $008036: [8-bit] Current gear
//          0x00 = Neutral
function current_gear() => byte(0x008036)

// $008040: [16-bit] Total time milliseconds (shown in centiseconds)
function total_time_milliseconds_shown_in_centiseconds() => word(0x008040)

// $00805A: [8-bit] Total laps
function total_laps() => byte(0x00805A)

// $00805B: [8-bit] Current track ID
function current_track_id() => byte(0x00805B)

// $00805C: [8-bit] F-Mega current race (0-indexed)
//          0x06 = Season end
function f_mega_current_race() => byte(0x00805C)

function wc_gp() => byte(0x805d)

// $008064: [8-bit] F-Mega/World Champion round time seconds
function f_mega_world_champion_round_time_seconds() => byte(0x008064)

// $008065: [8-bit] F-Mega/World Champion round time minutes
function f_mega_world_champion_round_time_minutes() => byte(0x008065)

// $009244: [8-bit] Player F-Mega championship points
function player_championship_points() => byte(0x009244)

// $009248: [8-bit] Player F-Mega Championship Ranking
function player_championship_ranking() => byte(0x009248)

// $009258: [8-bit] Computer 1 F-Mega championship points
function computer_1_f_mega_championship_points() => byte(0x009258)

// $00925C: [8-bit] Computer 1 F-Mega Championship Ranking
function computer_1_f_mega_championship_ranking() => byte(0x00925C)

// $00926C: [8-bit] Computer 2 F-Mega championship points
function computer_2_f_mega_championship_points() => byte(0x00926C)

// $009270: [8-bit] Computer 2 F-Mega Championship Ranking
function computer_2_f_mega_championship_ranking() => byte(0x009270)

// $0099AA: [8-bit] Best lap time for qualifier seconds
function best_lap_time_for_qualifier_seconds() => byte(0x0099AA)

// $0099AB: [8-bit] Best lap time for qualifier minutes
function best_lap_time_for_qualifier_minutes() => byte(0x0099AB)

// $0099AC: [16-bit] Best lap time for qualifier milliseconds
function best_lap_time_for_qualifier_milliseconds() => word(0x0099AC)

// $0099B2: [8-bit] Demo active
//          0x00 = No
//          0x01 = Yes
function demo() => byte(0x0099B2) == 0x01

// $00D000: [8-bit] Game mode
//          0x01 = Exhibition
//          0x02 = Test Drive
//          0x03 = Formula Mega
//          0x04 = F-1 World Championship Menus
//          0x05 = Demo
//          0x06 = F-1 World Championship Racing
function game_mode() => byte(0x00D000)

function wc_mode() => __ornext(game_mode() == 0x04 || game_mode() == 0x06) // F-1 World Championship Menus or Racing

function exhibition() => game_mode() == 0x01

// $00D02C: [8-bit] F-Mega mechanic
//          0x01 = Frendship Mechanic [sic]
//          0x02 = Semi-Professional
//          0x03 = Professional
//          0x04 = Specialist
function f_mega_mechanic() => byte(0x00D02C)

// $00D02E: [8-bit] F-Mega car
//          0x01 = Type84
//          0x02 = Type85
//          0x03 = Type86
function f_mega_car() => byte(0x00D02E)

// $00D030: [16-bit] Higher part of current F-Mega money (swizzled)
function higher_part_of_current_f_mega_money_swizzled() => word(0x00D030)

// $00D032: [16-bit] Lower part of current F-Mega money (swizzled)
function lower_part_of_current_f_mega_money_swizzled() => word(0x00D032)

// $00D066: [8-bit] F-Mega/World Championship Race Type
//          0x01 = Free Practice
//          0x02 = Qualifier
//          0x03 = Warm Up
//          0x04 = Final Race
function f_mega_world_championship_race_type() => byte(0x00D066)

// $00D0E2: [8-bit] Exhibition car type
//          0x00 = Cigar
//          0x01 = Wedge
//          0x02 = Wing
//          0x03 = Turbo
//          0x04 = 90's
function exhibition_car_type() => byte(0x00D0E2)

// $021E38: [16-bit] [Array] Table of course lengths
//          Lap considered finished when distance (0x802a) reaches this number, indexed on track ID (0x805b)
function array_table_of_course_lengths() => word(0x021E38)

function racing() => game_mode() <= 0x06 && game_mode() != 0x05 && !demo()

tracks = [
    "Phoenix '91",
    "Interlagos '92",
    "Imola '92",
    "Monaco '92",
    "G. Villeneuve '92",
    "H. Rodriguez '92",
    "Magny Cours '92",
    "Silverstone '92",
    "Hockenheim '92",
    "Hungaroring '92",
    "Spa '92",
    "Monza '92",
    "Estoril '92",
    "Catalonia '92",
    "Suzuka '92",
    "Adelaide '92",
    "Kyalami '92",
    "Doningtonpark '93",
    "Jacarepagua",
    "Detroit",
    "Paul Ricard",
    "Osterreichring",
    "Jerez",
    "Ibaraki",
    "Mt. Fuji",
    "Indy",
    "Kobe",
    "Tokyo",
    "Waikiki"
]

// Achievements

function exhibition_achievement(title, car, car_id) {
    points = 2
    if (car == "Cigar" || car == "Wedge") {
        points = 10
    }
    achievement(
        title = title,
        description = "Win a race in Exhibition mode with the " + car + " type car.",
        points = points,
        trigger = 
            !demo() && exhibition() &&
            position() == 0x01 && // 1st place
            prev(current_lap()) == total_laps() - 1 &&
            current_lap() == total_laps() &&
            exhibition_car_type() == car_id
    )
}

achievement(
    title = "Grand Day Out",
    description = "Win a race in Exhibition mode.",
    points = 3,
    trigger = 
        !demo() && exhibition() &&
        position() == 0x01 && // 1st place
        prev(current_lap()) == total_laps() - 1 &&
        current_lap() == total_laps(),
    type = "progression"
)

exhibition_achievement("Cuban Special", "Cigar", 0x00)
exhibition_achievement("Not-So-Simple Machine", "Wedge", 0x01)
exhibition_achievement("Wind Above My Wings", "Wing", 0x02)
exhibition_achievement("Turbo Charged", "Turbo", 0x03)
exhibition_achievement("Back in the Day", "90's", 0x04)

achievement("Land Speed Record",
    description = "Reach a top speed of at least 430 km/h.",
    points = 2,
    trigger = 
        racing() &&
        speed() >= 430 &&
        prev(speed()) < 430 && prev(speed()) > 330
)

achievement("Mr. Saturday",
    description = "Secure pole position in a Formula-Mega or World Championship qualifying round.",
    points = 2,
    trigger =
        __ornext(game_mode() == 0x03 || game_mode() == 0x04) && // F-Mega
        f_mega_world_championship_race_type() == 0x02 &&
        position() == 1 && prev(position() != 1)
)

achievement("Mega Alpha",
    description = "Win a Formula-Mega championship.",
    points = 10,
    trigger =
        game_mode() == 0x03 && // F-Mega
        player_championship_ranking() == 1 &&
        f_mega_current_race() == 0x06 &&
        prev(f_mega_current_race()) == 0x05,
    type = "progression"
)

achievement("Underdog Story",
    description = "Win a Formula-Mega championship after winning all 6 races with the cheapest car and mechanic.",
    points = 25,
    trigger =
        game_mode() == 0x03 && // F-Mega
        f_mega_mechanic() == 0x01 && // Friendship Mechanic
        f_mega_car() == 0x01 && // Type84
        player_championship_points() == 60 &&
        f_mega_current_race() == 0x06 &&
        prev(f_mega_current_race()) == 0x05
)

achievement("Hot Start",
    description = "Win a Preseason Drivers' Championship in World Championship mode.",
    points = 10,
    trigger =
        __ornext(game_mode() == 0x04 || game_mode() == 0x06) && // F-1 World Championship Menus or Racing
        player_championship_ranking() == 1 &&
        wc_gp() <= 0x03 &&
        f_mega_current_race() == 16 &&
        prev(f_mega_current_race()) == 15
)

achievement("Psychological Advantage",
    description = "Win a Grand Prix Drivers' Championship in World Championship mode.",
    points = 25,
    trigger =
        __ornext(game_mode() == 0x04 || game_mode() == 0x06) && // F-1 World Championship Menus or Racing
        player_championship_ranking() == 1 &&
        wc_gp() >= 0x04 && wc_gp() <= 0x06 &&
        f_mega_current_race() == 16 &&
        prev(f_mega_current_race()) == 15,
    type = "progression"
)

// Leaderboards

function lap_lb(track, track_id) {
    leaderboard(
        title = track + " Best Lap Time",
        description = "Get the fastest lap time on " + track + ".",
        start = 
            racing() &&
            current_track_id() == track_id &&
            prev(lap_time_seconds()) + prev(lap_time_minutes()) != 0 &&
            ((f_mega_world_championship_race_type() == 0x04 && current_lap() >= 1) || current_lap() >= 2) &&
            current_lap() <= 0x7f &&
            current_lap() > prev(current_lap()),
        cancel = always_false(),
        submit = always_true(),
        value = prev(lap_time_seconds()) * 100 + prev(lap_time_minutes()) * 6000 + prev(lap_time_milliseconds()) / 10 + 5,
        format = "MILLISECS",
        lower_is_better = true
    )
}

for index in range(0, 28) {
    lap_lb(tracks[index], index)
}

// Rich Presence

rp_race_type = rich_presence_lookup("RaceType", f_mega_world_championship_race_type(), {
    0x01: "Free Practice",
    0x02: "Qualifier",
    0x03: "Warm Up",
    0x04: "Final Race"
})
rp_game_mode = rich_presence_lookup("GameMode", game_mode(), {
    0x01: "Exhibition",
    0x02: "Test Drive",
    0x03: "Formula Mega",
    0x04: "F-1 World Championship",
    0x05: "Demo",
    0x06: "F-1 World Championship"
})
rp_track = rich_presence_lookup("Track", current_track_id(), {
    0x00: "Phoenix '91",
    0x01: "Interlagos '92",
    0x02: "Imola '92",
    0x03: "Monaco '92",
    0x04: "G. Villeneuve '92",
    0x05: "H. Rodriguez '92",
    0x06: "Magny Cours '92",
    0x07: "Silverstone '92",
    0x08: "Hockenheim '92",
    0x09: "Hungaroring '92",
    0x0A: "Spa '92",
    0x0B: "Monza '92",
    0x0C: "Estoril '92",
    0x0D: "Catalonia '92",
    0x0E: "Suzuka '92",
    0x0F: "Adelaide '92",
    0x10: "Kyalami '92",
    0x11: "Doningtonpark '93",
    0x12: "Jacarepagua",
    0x13: "Detroit",
    0x14: "Paul Ricard",
    0x15: "Osterreichring",
    0x16: "Jerez",
    0x17: "Ibaraki",
    0x18: "Mt. Fuji",
    0x19: "Indy",
    0x1A: "Kobe",
    0x1B: "Tokyo",
    0x1C: "Waikiki"
})
rp_exhibition_car = rich_presence_lookup("ExhibitionCar", exhibition_car_type(), {
    0x00: "Cigar",
    0x01: "Wedge",
    0x02: "Wing",
    0x03: "Turbo",
    0x04: "90's"
})
rp_race_number = rich_presence_macro("Number", f_mega_current_race()+1)
rp_grand_prix = rich_presence_lookup("GrandPrix", wc_gp(), {
    0x00: "Pre 1st",
    0x01: "Pre 2nd",
    0x02: "Pre 3rd",
    0x03: "Pre 4th",
    0x04: "GP '91",
    0x05: "GP '92",
    0x06: "GP '93"
})

rich_presence_conditional_display(demo() || game_mode() == 5, "Watching the demo")
rich_presence_conditional_display(game_mode() == 0x01, "Driving a {0} around {1} in Exhibition mode", rp_exhibition_car, rp_track)
rich_presence_conditional_display(game_mode() == 0x02, "Taking a test drive on {0}", rp_track)
rich_presence_conditional_display(game_mode() == 0x03 && f_mega_current_race() < 6, "Competing in round {0} on {1} in Formula-Mega", rp_race_number, rp_track)
rich_presence_conditional_display(game_mode() == 0x03, "Competing in a Formula-Mega tournament")
rich_presence_conditional_display(wc_mode() && f_mega_current_race() < 16, "Competing in round {0} on {1} in the {2} World Championship", rp_race_number, rp_track, rp_grand_prix)
rich_presence_conditional_display(wc_mode(), "Competing in the {0} World Championship", rp_grand_prix)
rich_presence_display("Playing F1 Circus CD")
