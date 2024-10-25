// American Truck
// #ID = 31189
// #MinimumVersion = 1.3

function lost_life() => byte(0x0849) == 0xff && prev(byte(0x0849)) == 0x00

function cleared_trip() => byte(0x084a) == 0xff && prev(byte(0x084a)) == 0x00

function driving() => byte(0x0849) == 0x00 && byte(0x084a) == 0x00

function current_trip() => byte(0x084b)

function trip_meter() => byte(0x1d68)

function lives() => byte(0x084c)

function p1_score() => tbyte_be(0xac11)

function true_speed() => byte(0x6b4a)

function health() => byte(0x6b50)

function single_player() => byte(0x084e) == 0x00

// Achievements

function trip_clear_achievement(name, points, num) {
    ordinals = [
        "zeroth",
        "first",
        "second",
        "third",
        "fourth",
        "fifth",
        "sixth",
        "seventh",
        "eighth",
        "ninth",
    ]
    type = "progression"
    if (num == 9) type = "win_condition"
    achievement(title = name, description = format("Clear the {0} trip on 1-player mode.", ordinals[num]), points = points,
    trigger = single_player() && current_trip() == num && cleared_trip(), type = type)
}

trip_clear_achievement("How Are You?", 2, 1)
trip_clear_achievement("Breaker Breaker", 2, 2)
trip_clear_achievement("How's My Driving?", 3, 3)
trip_clear_achievement("Ten-Four, Good Buddy", 3, 4)
trip_clear_achievement("Copy That", 4, 5)
trip_clear_achievement("On Your Six", 4, 6)
trip_clear_achievement("How Are You?", 5, 7)
trip_clear_achievement("We Got a Great Big Convoy", 5, 8)
trip_clear_achievement("Your Business Completed!", 10, 9)

achievement(title = "Hammer Down", description = "Pass an entire trip without letting up on the gas on 1-player mode.", points = 5,
trigger = single_player() && once(trip_meter() == 0x00) && never(true_speed() < prev(true_speed())) && never(lost_life()) && trigger_when(cleared_trip()))

achievement(title = "Road Rage", description = "Destroy 30 cars for points in a single life in 1-player mode.", points = 5,
trigger = single_player() && measured(tally(30, p1_score() > prev(p1_score()) && p1_score() - prev(p1_score()) < 10)) && never(lost_life()))

achievement(title = "Expanding the Fleet", description = "Obtain an extra life in 1-player mode.", points = 2,
trigger = single_player() && driving() && lives() > prev(lives()))

achievement(title = "Quick Service", description = "Pick up a wrench to repair your truck in 1-player mode.", points = 2,
trigger = single_player() && driving() && trip_meter() > 0x00 && health() > prev(health()))

achievement(title = "Stimulus Package", description = "Pick up a dollar sign to increase your score in 1-player mode.", points = 2,
trigger = single_player() && driving() && p1_score() - prev(p1_score()) == 0x10)
