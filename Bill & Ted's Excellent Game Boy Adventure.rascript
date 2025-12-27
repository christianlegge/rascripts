// Bill & Ted's Excellent Game Boy Adventure
// #ID = 3680

// $C715: 8-bit -> Player state
//        
//        Moveable in-game = 0x61
//        Dead/Not moveable = 0x41 or 0x21
//        Stage complete = 0x40
function bit_player_state() => byte(0x00C715)

// $C924: 8-bit -> Demo mode
//        
//        True = 0x01
//        False = 0x00
function bit_demo_mode() => byte(0x00C924)

// $C925: Infinite Lives
function infinite_lives() => byte(0x00C925)

// $C926: Infinite Time
function infinite_time() => byte(0x00C926)

// $C93A: timer
function timer() => byte(0x00C93A)

// $C93C: 8-bit -> Frame counter (1 second for each loop)
function bit_frame_counter_1_second_for_each_loop() => byte(0x00C93C)

// $C941: 8-bit -> Game state ID
//        
//        Title screen = 0x01
//        In-game = 0x02
//        Mode selct = 0x04
//        Password screen = 0x42
//        __________________________________________
function bit_game_state_id() => byte(0x00C941)

function title() => bit_game_state_id() == 1

// $C948: 8-bit -> Music
//        
//        On = 0x01
//        Off = 0x00
//        __________________________________________
function bit_music() => byte(0x00C948)

// $CBE3: lives
function lives() => byte(0x00CBE3)

// $CBE4: adventure
//        0a=end screen
function adventure() => byte(0x00CBE4)

// $CBE5: quest
function quest() => byte(0x00CBE5)

// $CBE7: 8-bit -> Score - 2 Lower digits
function bit_score_2_lower_digits() => byte(0x00CBE7)

// $CBE8: 16-bit -> Score - 4 High digits
function bit_score_4_high_digits() => word(0x00CBE8)

// $CC69: 8-bit -> Door animation
//        
//        Door on screen = 0x01
//        Not on screen = 0x00
function bit_door_animation() => byte(0x00CC69)

achievement(
    title = "Rufus!", points = 5, type="progression",
    description = "Beat Adventure 1",
    id = 7114, badge = "23164", published = "2014-04-07 1:51:00 PM", modified = "2024-10-20 5:54:30 AM",
    trigger = adventure() == 1 && disable_when(dword(0x00CCE0) != 4294967295 && dword(0x00CCE0) != 0) &&
              disable_when(dword(0x00CCDC) != 4294967295 && dword(0x00CCDC) != 0) && infinite_lives() == 0 &&
              infinite_time() == 0
              && (always_false() || never(title()))
)

achievement(
    title = "If You Guys Are Really Us, What Number Are We Thinking Of?", points = 5, type="progression",
    description = "Beat Adventure 2",
    id = 7115, badge = "23165", published = "2014-04-07 1:51:03 PM", modified = "2024-10-20 5:57:19 AM",
    trigger = adventure() == 2 && disable_when(dword(0x00CCE0) != 4294967295 && dword(0x00CCE0) != 0) &&
              disable_when(dword(0x00CCDC) != 4294967295 && dword(0x00CCDC) != 0) && infinite_lives() == 0 &&
              infinite_time() == 0
              && (always_false() || never(title()))
)

achievement(
    title = "How’s It Goin’, Royal Ugly Dudes?", points = 5, type="progression",
    description = "Beat Adventure 3",
    id = 7116, badge = "23166", published = "2014-04-07 1:51:07 PM", modified = "2024-10-20 6:04:04 AM",
    trigger = adventure() == 3 && disable_when(dword(0x00CCE0) != 4294967295 && dword(0x00CCE0) != 0) &&
              disable_when(dword(0x00CCDC) != 4294967295 && dword(0x00CCDC) != 0) && infinite_lives() == 0 &&
              infinite_time() == 0
              && (always_false() || never(title()))
)

achievement(
    title = "You Killed Ted, You Medieval Dickweed!", points = 5, type="progression",
    description = "Beat Adventure 4",
    id = 7117, badge = "23167", published = "2014-04-07 1:51:10 PM", modified = "2024-10-20 6:05:24 AM",
    trigger = adventure() == 4 && disable_when(dword(0x00CCE0) != 4294967295 && dword(0x00CCE0) != 0) &&
              disable_when(dword(0x00CCDC) != 4294967295 && dword(0x00CCDC) != 0) && infinite_lives() == 0 &&
              infinite_time() == 0
              && (always_false() || never(title()))
)

achievement(
    title = "All We Are Is Dust in the Wind, Dude", points = 5, type="progression",
    description = "Beat Adventure 5",
    id = 7118, badge = "23169", published = "2014-04-07 1:51:14 PM", modified = "2024-10-20 6:06:28 AM",
    trigger = adventure() == 5 && disable_when(dword(0x00CCE0) != 4294967295 && dword(0x00CCE0) != 0) &&
              disable_when(dword(0x00CCDC) != 4294967295 && dword(0x00CCDC) != 0) && infinite_lives() == 0 &&
              infinite_time() == 0
              && (always_false() || never(title()))
)

achievement(
    title = "Iron Maiden? Excellent!", points = 5, type="progression",
    description = "Beat Adventure 6",
    id = 7119, badge = "23170", published = "2014-04-07 1:51:17 PM", modified = "2024-10-20 6:07:22 AM",
    trigger = adventure() == 6 && disable_when(dword(0x00CCE0) != 4294967295 && dword(0x00CCE0) != 0) &&
              disable_when(dword(0x00CCDC) != 4294967295 && dword(0x00CCDC) != 0) && infinite_lives() == 0 &&
              infinite_time() == 0
              && (always_false() || never(title()))
)

achievement(
    title = "The Only True Wisdom Consists in Knowing That You Know Nothing", points = 5, type="progression",
    description = "Beat Adventure 7",
    id = 7120, badge = "23171", published = "2014-04-07 1:51:21 PM", modified = "2024-10-20 6:09:01 AM",
    trigger = adventure() == 7 && disable_when(dword(0x00CCE0) != 4294967295 && dword(0x00CCE0) != 0) &&
              disable_when(dword(0x00CCDC) != 4294967295 && dword(0x00CCDC) != 0) && infinite_lives() == 0 &&
              infinite_time() == 0
              && (always_false() || never(title()))
)

achievement(
    title = "The Best Place to Be Is Here. The Best Time to Be Is Now..", points = 10, type="progression",
    description = "Beat Adventure 8",
    id = 7121, badge = "23172", published = "2014-04-07 1:51:24 PM", modified = "2024-10-20 6:11:22 AM",
    trigger = adventure() == 8 && disable_when(dword(0x00CCE0) != 4294967295 && dword(0x00CCE0) != 0) &&
              disable_when(dword(0x00CCDC) != 4294967295 && dword(0x00CCDC) != 0) && infinite_lives() == 0 &&
              infinite_time() == 0
              && (always_false() || never(title()))
)

achievement(
    title = "Be Excellent to Each Other", points = 10, type="progression",
    description = "Beat Adventure 9",
    id = 7122, badge = "23173", published = "2014-04-07 1:51:29 PM", modified = "2024-10-20 6:12:16 AM",
    trigger = adventure() == 9 && disable_when(dword(0x00CCE0) != 4294967295 && dword(0x00CCE0) != 0) &&
              disable_when(dword(0x00CCDC) != 4294967295 && dword(0x00CCDC) != 0) && infinite_lives() == 0 &&
              infinite_time() == 0
              && (always_false() || never(title()))
)

achievement(
    title = "And Party On, Dudes!", points = 25, type="win_condition",
    description = "Beat the final Adventure",
    id = 7123, badge = "23168", published = "2014-04-07 1:51:32 PM", modified = "2024-10-20 6:13:55 AM",
    trigger = adventure() == 10 && disable_when(dword(0x00CCE0) != 4294967295 && dword(0x00CCE0) != 0) &&
              disable_when(dword(0x00CCDC) != 4294967295 && dword(0x00CCDC) != 0) && infinite_lives() == 0 &&
              infinite_time() == 0
              && (always_false() || never(title()))
)

leaderboard(
    id = 22833, title = "Austria 1805 AD [Quest] 1 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 0 && quest() == 0 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22834, title = "Austria 1805 AD [Quest] 2 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 0 && quest() == 1 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22835, title = "Austria 1805 AD [Quest] 3 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 0 && quest() == 2 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22836, title = "Austria 1805 AD [Quest] 4 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 0 && quest() == 3 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22837, title = "Austria 1805 AD [Quest] 5 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 0 && quest() == 4 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22838, title = "New Mexico 1879 AD [Quest] 1 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 1 && quest() == 0 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22844, title = "New Mexico 1879 AD [Quest] 2 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 1 && quest() == 1 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22845, title = "New Mexico 1879 AD [Quest] 3 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 1 && quest() == 2 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22846, title = "New Mexico 1879 AD [Quest] 4 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 1 && quest() == 3 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22847, title = "New Mexico 1879 AD [Quest] 5 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 1 && quest() == 4 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22848, title = "Greece 410 BC [Quest] 1 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 2 && quest() == 0 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22849, title = "Greece 410 BC [Quest] 2 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 2 && quest() == 1 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22850, title = "Greece 410 BC [Quest] 3 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 2 && quest() == 2 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22851, title = "Greece 410 BC [Quest] 4 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 2 && quest() == 3 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22852, title = "Greece 410 BC [Quest] 5 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 2 && quest() == 4 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22853, title = "England 1456 AD [Quest] 1 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 3 && quest() == 0 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22854, title = "England 1456 AD [Quest] 2 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 3 && quest() == 1 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22855, title = "England 1456 AD [Quest] 3 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 3 && quest() == 2 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22856, title = "England 1456 AD [Quest] 4 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 3 && quest() == 3 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22857, title = "England 1456 AD [Quest] 5 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 3 && quest() == 4 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22858, title = "1,000,000,000 BC [Quest] 1 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 4 && quest() == 0 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22859, title = "1,000,000,000 BC [Quest] 2 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 4 && quest() == 1 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22860, title = "1,000,000,000 BC [Quest] 3 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 4 && quest() == 2 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22861, title = "1,000,000,000 BC [Quest] 4 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 4 && quest() == 3 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22862, title = "1,000,000,000 BC [Quest] 5 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 4 && quest() == 4 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22863, title = "Shopping Mall [Quest] 1 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 5 && quest() == 0 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22864, title = "Shopping Mall [Quest] 2 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 5 && quest() == 1 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22865, title = "Shopping Mall [Quest] 3 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 5 && quest() == 2 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22866, title = "Shopping Mall [Quest] 4 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 5 && quest() == 3 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22867, title = "Shopping Mall [Quest] 5 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 5 && quest() == 4 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22868, title = "School Room [Quest] 1 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 6 && quest() == 0 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22869, title = "School Room [Quest] 2 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 6 && quest() == 1 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22870, title = "School Room [Quest] 3 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 6 && quest() == 2 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22871, title = "School Room [Quest] 4 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 6 && quest() == 3 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22872, title = "School Room [Quest] 5 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 6 && quest() == 4 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22873, title = "The Abyss [Quest] 1 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 7 && quest() == 0 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22874, title = "The Abyss [Quest] 2 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 7 && quest() == 1 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22875, title = "The Abyss [Quest] 3 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 7 && quest() == 2 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22876, title = "The Abyss [Quest] 4 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 7 && quest() == 3 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22877, title = "The Abyss [Quest] 5 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 7 && quest() == 4 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22878, title = "Paradise [Quest] 1 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 8 && quest() == 0 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22879, title = "Paradise [Quest] 2 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 8 && quest() == 1 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22880, title = "Paradise [Quest] 3 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 8 && quest() == 2 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22881, title = "Paradise [Quest] 4 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 8 && quest() == 3 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22882, title = "Paradise [Quest] 5 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 8 && quest() == 4 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22883, title = "School Concert [Quest] 1 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 9 && quest() == 0 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22884, title = "School Concert [Quest] 2 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 9 && quest() == 1 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22885, title = "School Concert [Quest] 3 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 9 && quest() == 2 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22886, title = "School Concert [Quest] 4 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 9 && quest() == 3 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)

leaderboard(
    id = 22887, title = "School Concert [Quest] 5 Speedrun",
    description = "Beat the stage with as much time left as possible",
    start  = bit_demo_mode() == 0 && bit_game_state_id() == 2 && adventure() == 9 && quest() == 4 &&
             bit_player_state() == 97,
    cancel = (infinite_lives() != 0 || infinite_time() != 0 || bit_game_state_id() != 2 || lives() < prev(lives())),
    submit = (bit_door_animation() == 1 && bit_player_state() == 64),
    value  = bit_frame_counter_1_second_for_each_loop() * 1 + bcd(timer()) * 60,
    format = "FRAMES"
)
