// American Truck
// #ID = 31189
// #MinimumVersion = 1.3

function lost_life() => byte(0x0849) == 0xff && prev(byte(0x0849)) == 0x00

function cleared_trip() => byte(0x084a) == 0xff && prev(byte(0x084a)) == 0x00

function current_trip() => byte(0x084b)

function lives() => byte(0x084c)

function p1_score() => tbyte_be(0xac11)

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
        "ninth"
    ]
    achievement(title = name, description = format("Clear the {0} trip on 1-player mode.", ordinals[num]), points = points,
    trigger = single_player() && current_trip() == num && cleared_trip())
}

trip_clear_achievement("How Are You?", 2, 1)
