// American Truck
// #ID = 31189
// #MinimumVersion = 1.3

function lost_life() => byte(0x0849) == 0xff && prev(byte(0x0849)) == 0x00

function cleared_trip() => byte(0x084a) == 0xff && prev(byte(0x084a)) == 0x00

function driving() => byte(0x0849) == 0x00 && byte(0x084a) == 0x00

function in_game() => (byte(0x0849) == 0x00 || byte(0x0849) == 0xFF) && (byte(0x084a) == 0x00 || byte(0x084a) == 0xFF)

function current_trip() => byte(0x084b)

function trip_meter() => byte(0x1d68)

function lives() => byte(0x084c)

function active_score() => tbyte_be(0xac11)
function score_1p() => tbyte_be(0x084f)
function score_2p() => tbyte_be(0x085a)

function true_speed() => byte(0x6b4a)

function health() => byte(0x6b50)

function single_player() => byte(0x084e) == 0x00
function active_player_1() => byte(0x084e) == 0x01
function active_player_2() => byte(0x084e) == 0xFF

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
trip_clear_achievement("We Got a Great Big Convoy", 4, 5)
// trip_clear_achievement("On Your Six", 4, 6)
// trip_clear_achievement("How Are You?", 5, 7)
// trip_clear_achievement("We Got a Great Big Convoy", 5, 8)
// trip_clear_achievement("Your Business Completed!", 10, 9)

achievement("Your Business Completed!", description = "Earn a spot on the leaderboard in 1-player mode by finishing with a score higher than 50,000.", points = 10, type = "progression",
trigger = single_player() && lives() == 0x01 && lost_life() && active_score() > 0x500)

achievement("Thank You For Smoking", description = "Top the leaderboard in 1-player mode by finishing with a score higher than 200,000.", points = 25,
trigger = single_player() && lives() == 0x01 && lost_life() && active_score() > 0x2000)

achievement(title = "Hammer Down", description = "Pass an entire trip without letting up on the gas on 1-player mode.", points = 5,
trigger = single_player() && once(trip_meter() == 0x00) && never(true_speed() < prev(true_speed())) && never(lost_life()) && trigger_when(cleared_trip()))

achievement(title = "Road Rage", description = "Destroy 30 cars for points in a single life in 1-player mode.", points = 5,
trigger = single_player() && measured(tally(30, active_score() > prev(active_score()) && active_score() - prev(active_score()) < 10)) && never(lost_life()))

achievement(title = "Expanding the Fleet", description = "Obtain an extra life in 1-player mode.", points = 2,
trigger = single_player() && driving() && lives() > prev(lives()))

achievement(title = "Quick Service", description = "Pick up a wrench to repair your truck in 1-player mode.", points = 2,
trigger = single_player() && driving() && trip_meter() > 0x00 && health() > prev(health()))

achievement(title = "Stimulus Package", description = "Pick up a dollar sign to increase your score in 1-player mode.", points = 2,
trigger = single_player() && driving() && active_score() - prev(active_score()) == 0x10)

// Leaderboards

leaderboard(title = "Single Player High Score", description = "Earn the highest score in single player mode.",
start = single_player() && lives() == 0x01 && lost_life(),
cancel = always_false(), submit = always_true(),
value = bcd(active_score()) * 100)

leaderboard(title = "Single Player Perfect Run", description = "Earn the highest score in single player mode without losing a life.",
start = single_player() && in_game(),
submit = lost_life(),
cancel = !in_game(),
value = bcd(active_score()) * 100)

// Rich Presence

rp_active_score = rich_presence_value("Number", bcd(active_score()) * 100)
rp_p1_score = rich_presence_value("Number", bcd(score_1p()) * 100)
rp_p2_score = rich_presence_value("Number", bcd(score_2p()) * 100)
rp_trip = rich_presence_value("Number", current_trip())

rich_presence_conditional_display(!in_game(), "Gearing up for the next trip")
rich_presence_conditional_display(active_player_1(),
"🚚 Driving with a buddy on trip {0} [1P at the wheel] 1P:{1} 2P:{2}",
rp_trip, rp_active_score, rp_p2_score)
rich_presence_conditional_display(active_player_2(),
"🚚 Driving with a buddy on trip {0} [2P at the wheel] 1P:{1} 2P:{2}",
rp_trip, rp_p1_score, rp_active_score)
rich_presence_conditional_display(single_player(),
"🚚 Completing an order on trip {0} Score:{1}",
rp_trip, rp_active_score)
rich_presence_display("Playing American Truck")
