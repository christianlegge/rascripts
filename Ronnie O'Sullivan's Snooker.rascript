// Ronnie O'Sullivan's Snooker
// #ID = 2913
// md5: eccd9c59b8053233ac82b5f3c87596b7 - Europe

career_scenarios = {
    0x00: "Coming of Age",
    0x01: "Practice",
    0x02: "Junior Champion",
    0x03: "My First Major Title",
    0x04: "Practice",
    0x05: "Rocket Powered 147",
    0x06: "The Re-Spotted Black",
    0x07: "Practice",
    0x08: "On Top Of The World",
    0x09: "Against The Clock",
    0x0a: "Practice",
    0x0b: "Big Break Final",
    0x0c: "Back On Top",
    0x0d: "Practice",
    0x0e: "Master Class",
    0x0f: "Rocket Speed",
    0x10: "Practice",
    0x11: "UK Champ",
    0x12: "World Champion",
}

career_subscenario_amount = {
 0: 2,
 1: 1,
 2: 2,
 3: 3,
    4: 1,
    5:1,
    6: 2,
    7: 1,
    8: 3,
    9: 1,
    10: 1,
    11: 1,
    12: 3,
    13: 1,
    14: 2,
    15: 3,
    16: 1,
    17: 3,
    18: 5,
}

nicknames = {

    7: "The Rocket",                 
8: "The Ace in the Pack",        
9: "The Dragon",                 
10: "The King of the Crucible",   
11: "The Thunder From Down Under",
12: "Marco Fu",                   
13: "The Jester From Leicester",  
14: "The Wizard of Wishaw",       
15: "The Magician",               
16: "On Fire Maguire",            
}


opponents = {
         0x01: "Ronnie Aged 7",
         0x02: "Ronnie Aged 10",
         0x03: "Ronnie Aged 16",
         0x04: "Ronnie Aged 17",
         0x05: "Ronnie Aged 21",
         0x06: "Ronnie Aged 30",
7: "Ronnie O'Sullivan" ,
8: "Judd Trump" ,
9: "Ding Junhui" ,
10: "Stephen Hendry" ,
11: "Neil Robertson" ,
12: "Marco Fu" ,
13: "Mark Selby" ,
14: "John Higgins" ,
15: "Shaun Murphy" ,
16: "Stephen Maguire" ,
}


function replay() => byte(0x01ffd98c) == 1

function practice_timer() => dword(0x009d8a94)

function timer_is_running() => prev(practice_timer()) > practice_timer()

function balls_on_bitfield() => dword(0x009d8a30)
function ball_first_struck() => dword(0x009d8a50)

function ball_on(i)
{
    mask = 1
    for j in range(1, i)
    {
        mask = mask * 2
    }
    return balls_on_bitfield() & mask != 0
}

function hit_specific_ball(i)
{
    return ball_on(i) &&
    ball_first_struck() == i
}

function ball_index_is_red(i) => i >= 7 && i <= 21
function ball_is_on_table(i) => byte(0x015afa90 + i * 0x10 + 0x0b) == 0x00
function ball_is_on_table_prev(i) => prev(byte(0x015afa90 + i * 0x10 + 0x0b)) == 0x00
function ball_got_respotted(i) => ball_is_on_table(i) && prev(byte(0x015afa90 + i * 0x10 + 0x0b)) == 0xff
function no_reds_left() => none_of(range(7, 21), ball_is_on_table)
function all_colours_left() => all_of(range(1, 6), ball_is_on_table)

function potted_ball_legally(i)
{
    mask = 1
    for j in range(1, i)
    {
        mask = mask * 2
    }
    table_offset = i * 0x10
    potted_bool = byte(0x015afa90 + table_offset + 0x0b)
    return balls_on_bitfield() & mask != 0 &&
    (ball_first_struck() == i || (ball_index_is_red(i) && ball_index_is_red(ball_first_struck()))) &&
    potted_bool == 0xff && prev(potted_bool) == 0x00
}

function our_ball_potted_once(i) => once(our_shot() && potted_ball_legally(i))
function our_ball_respotted_once(i) => once(our_shot() && ball_got_respotted(i))

function any_hit_ball_on() 
{
    hit = always_false()
    for i in range(1, 21)
    {
        hit = hit || hit_specific_ball(i)
    }
    return hit
}

function any_legal_pot() 
{
    hit = always_false()
    for i in range(1, 21)
    {
        hit = hit || potted_ball_legally(i)
    }
    return hit
}

function first_struck_ball_frame() => prev(ball_first_struck()) == 0

// $9D8838: [32-bit] Game mode (invalid in menu)
//          0 = Quick Match
//          1 = Career
//          2 = Practice
//          3 = Tournament
function game_mode() => dword(0x9D8838)

function in_quick_match() => game_mode() == 0
function in_career() => game_mode() == 1
function in_practice() => game_mode() == 2
function in_tournament() => game_mode() == 3

// $9D8878: [32-bit] In-game or menu?
//          0 = In menu
//          1 = In game
function in_game_or_menu() => dword(0x9D8878)

function in_game() => in_game_or_menu() == 1
function in_menu() => in_game_or_menu() == 0

// $9D89F4: [32-bit] Current opponent in Quick Match and Tournament
//          Varies in Career and Practice, doesn't seem to be a meaningful value
//          0x01 = Ronnie Aged 7
//          0x02 = Ronnie Aged 10
//          0x03 = Ronnie Aged 16
//          0x04 = Ronnie Aged 17
//          0x05 = Ronnie Aged 21
//          0x06 = Ronnie Aged 30
//          0x07 = Ronnie O'Sullivan
//          0x08 = Judd Trump
//          0x09 = Ding Junhui
//          0x0a = Stephen Hendry
//          0x0b = Neil Robertson
//          0x0c = Marco Fu
//          0x0d = Mark Selby
//          0x0e = John Higgins
//          0x0f = Shaun Murphy
//          0x10 = Stephen Maguire
function current_opponent() => dword(0x9D89F4)

// $9D89F8: [32-bit] Whose shot?
//          0 = Player
//          1 = Computer
function whose_shot() => dword(0x9D89F8)

function our_shot() => whose_shot() == 0
function their_shot() => whose_shot() == 1

// $9D8A1C: [Signed 32-bit] Game state
//          -1 = Frame in progress
//          0 = Frame won
//          1 = Frame lost
function game_state() => dword(0x9D8A1C)

function game_in_progress() => game_state() == -1
function game_won() => game_state() == 0
function game_lost() => game_state() == 1

// $9D8A28: [Signed 32-bit] Current break score (shared for player and CPU)
function current_break() => dword(0x9D8A28)

// $9D8E64: [32-bit] Shot angle
//          - 0x00000000 = Aiming directly right (from top-down view)
//          - 0x00008000 = Aiming directly left (from top-down view)
//          The two highest bytes are counted as well, but since a full rotation is 0x00010000, they are effectively unused
function shot_angle() => dword(0x9D8E64)

// $9D8E68: [Signed 32-bit] X-coordinate of cueball spin (-65536 is all the way left, 65536 is all the way right)
function x_coordinate_of_cueball_spin_65536_is_all_the_way_left_65536_is_all_the_way_right() => dword(0x9D8E68)

// $9D8E6C: [Signed 32-bit] Y-coordinate of cueball spin (-65536 is all the way down, 65536 is all the way up)
function y_coordinate_of_cueball_spin_65536_is_all_the_way_down_65536_is_all_the_way_up() => dword(0x9D8E6C)

// $9D8E70: [Signed 32-bit] Shot power (clamped to 0-65536 inclusive)
function shot_power() => dword(0x9D8E70)

// $9D95F0: [32-bit] Current Career scenario
//          0x00 = Coming of Age
//          0x01 = Practice 1
//          0x02 = Junior Champion
//          0x03 = My First Major Title
//          0x04 = Practice 2
//          0x05 = Rocket Powered 147
//          0x06 = The Re-Spotted Black
//          0x07 = Practice 3
//          0x08 = On Top Of The World
//          0x09 = Against The Clock
//          0x0a = Practice 4
//          0x0b = Big Break Final
//          0x0c = Back On Top
//          0x0d = Practice 5
//          0x0e = Master Class
//          0x0f = Rocket Speed
//          0x10 = Practice 6
//          0x11 = UK Champ
//          0x12 = World Champion
function current_career_scenario() => dword(0x9D95F0)

function in_career_practice() => current_career_scenario() == 0x01 || current_career_scenario() == 0x04 || current_career_scenario() == 0x07 || current_career_scenario() == 0x0a || current_career_scenario() == 0x0d || current_career_scenario() == 0x10

// $9D95F4: [32-bit] Current Career sub-scenario (0-indexed)
function current_career_sub_scenario() => dword(0x9D95F4)



// $BD7690: [32-bit] Current menu
//          0x00 = Main menu
//          0x01 = Start menu
//          0x02 = Records
//          0x03 = Options
//          0x04 = Help
//          0x06 = Career intro
//          0x07 = Practice intro
//          0x0a = Best breaks
//          0x0b = Saved replays
//          0x0c = Quick Match
//          0x0d = Controls
//          0x0e = How to Play
//          0x0f = Game Rules
//          0x10 = Credits
//          0x11 = Career timeline
function current_menu() => dword(0xBD7690)

// $BD7694: [32-bit] Last direction moved on menu
//          0 = Recently advanced menu (X button)
//          1 = Recently backed out of menu (O button)
function last_direction_moved_on_menu() => dword(0xBD7694)

// $BD87D0: [Array] Ball model table (Coordinates are from top-down view perspective, where the X direction runs along the long side of the table and the Y direction is the short side)
//          +0x000 = Cue ball
//          - +0x00 = [Boolean] Ball is on table?
//          - - 0x00 = Not on table (potted)
//          - - 0x01 = On table
//          - +0x10 = [Float] Y scale (1 during gameplay)
//          - +0x24 = [Float] X scale (1 during gameplay)
//          - +0x38 = [Float] Z scale (1 during gameplay)
//          - +0x40 = [Float] Y coordinate (~-0.9 at top of table to ~0.9 at bottom)
//          - +0x44 = [Float] X coordinate (~-1.8 at left end (baulk) to ~1.8 at right end)
//          - +0x4c = [Float] Z coordinate (1 during gameplay - no jump shots in snooker)
//          - +0x50 = [Float] Y velocity
//          - +0x54 = [Float] X velocity
//          +0x060 = Yellow ball
//          +0x0c0 = Green ball
//          +0x120 = Brown ball
//          +0x180 = Blue ball
//          +0x1e0 = Pink ball
//          +0x240 = Black ball
//          From the starting position top-down view, the red balls are ordered starting with the leftmost (near the pink) and then top to bottom in each column.
//          +0x2a0 = Red ball 1
//          +0x300 = Red ball 2
//          +0x360 = Red ball 3
//          +0x3c0 = Red ball 4
//          +0x420 = Red ball 5
//          +0x480 = Red ball 6
//          +0x4e0 = Red ball 7
//          +0x540 = Red ball 8
//          +0x5a0 = Red ball 9
//          +0x600 = Red ball 10
//          +0x660 = Red ball 11
//          +0x6c0 = Red ball 12
//          +0x720 = Red ball 13
//          +0x780 = Red ball 14
//          +0x7e0 = Red ball 15
function array_ball_information_table_coordinates_are_from_top_down_view_perspective_where_the_x_direction_runs_along_the_long_side_of_the_table_and_the_y_direction_is_the_short_side() => float(0xBD87D0)

// $15B2050: [Signed 32-bit] Player score in the current frame
function player_score() => dword(0x15B2050)

// $15B2054: [Signed 32-bit] Opponent score in the current frame
function opponent_score() => dword(0x15B2054)

function player_frames_won() => dword(0x015adbc0)
function opponent_frames_won() => dword(0x015adbc4)

function frame_started() => player_score() == 0 && opponent_score() == 0 && in_game() &&
    (prev(player_score()) > 0 ||
    prev(opponent_score()) > 0 ||
    player_frames_won() > prev(player_frames_won()) ||
    opponent_frames_won() > prev(opponent_frames_won()) ||
    prev(in_menu()))

function frames_won() => dword(0x015adbc0)
function match_total_frames() => dword(0x009d8e60)

function break_off() => byte(0x009d8a61) == 0x01

function shot_timer() => word(0x009d8a7a)

function ball_x_pos(i) => dword(0x015afa90 + i * 0x10 + 0x4)

long_pot_bound = 3500000
left_bound = -1 * long_pot_bound
function long_pot_possible_a(ball)
{
    
    cue_x = ball_x_pos(0)
    ball_x = ball_x_pos(ball)
    return ball_on(ball) && 
    // gt/lt signs for left bound are flipped because RAIntegration logic
    // treats all values as unsigned
    // also why upper bounds are on right bound checks
    (cue_x < left_bound && cue_x > 2000000000 && ball_x > long_pot_bound && ball_x < 2000000000 )
}

function long_pot_possible_b(ball)
{
    
    cue_x = ball_x_pos(0)
    ball_x = ball_x_pos(ball)
    return ball_on(ball) && 
    // gt/lt signs for left bound are flipped because RAIntegration logic
    // treats all values as unsigned
    // also why upper bounds are on right bound checks
    (cue_x > long_pot_bound && cue_x < 2000000000 && ball_x < left_bound && ball_x > 2000000000)
}


function did_long_pot_a(ball)
{
    initial_position_valid = once(shot_timer() == 0 && long_pot_possible_a(ball))
    return initial_position_valid && trigger_when(potted_ball_legally(ball))
}

function did_long_pot_b(ball)
{
    initial_position_valid = once(shot_timer() == 0 && long_pot_possible_b(ball))
    return initial_position_valid && trigger_when(potted_ball_legally(ball))
}

function shot_timer_reset() => prev(shot_timer()) > 0 && shot_timer() == 0

// Achievements

achievement(title = "Long Pot", description = "Legally pot a ball when it and the cue ball are at opposite ends of the table.", points = 3,
    trigger = in_game() && !replay() && our_shot() && (any_of(range(1, 21), did_long_pot_a) || any_of(range(1, 21), did_long_pot_b)) && never(shot_timer_reset()))

// This doesn't need logic protection for the "set up colours" option because the memory I'm using doesn't set them as off the table
achievement(title = "Gotta Hit 'Em All, Snooker Balls", description = "Clear the table in Practice mode (without using the \"Set Up Colours\" option).", points = 3,
            trigger = in_game() && !replay() && in_practice() && none_of(range(1, 21), ball_is_on_table) && any_of(range(1, 21), ball_is_on_table_prev))

achievement(title = "Mercy Kill", description = "Win by concession before starting to pot the colours.", points = 10,
            trigger = in_game() && !replay() && all_colours_left() && (in_tournament() || in_quick_match()) && game_won() && prev(game_in_progress()))

achievement(title = "Zero-Sum Game", description = "Score points due to an opponent's foul.", points = 2,
            trigger = in_game() && !replay() && their_shot() && player_score() > prev(player_score()))

achievement(title = "Wait, This Isn't 8-Ball?", description = "View the Game Rules menu.",
points = 1, trigger = in_menu() && prev(current_menu()) == 0x04 && current_menu() == 0x0f)

achievement(title = "Red, Black, Red, Black...", description = "Pot and re-spot the black ball three or more times in a single break.",
points = 5, trigger = never(in_menu() || !our_shot()) && in_game() && !replay() && our_shot() &&
                      repeated(3, potted_ball_legally(6)) && measured(repeated(3, ball_got_respotted(6))))

achievement(title = "Just Another Notch in the Belt", description = "Win a Final match to become champion of the Premier League in Tournament mode.", points = 25,
            trigger = in_game() && !replay() && in_tournament() && prev(game_in_progress()) && game_won() && match_total_frames() == 7 && prev(frames_won()) == 3 && frames_won() == 4)

// Noticed this achievement adding an always false condition to the reset group - double check that
achievement(title = "Speed Potter", description = "Complete any of the Career mode Practice stages in one minute or less after starting (time bonuses don't count).", points = 10,
    trigger = in_game() && !replay() && in_career() && in_career_practice() && trigger_when(prev(game_in_progress()) && game_won()) &&
    disable_when(repeated(3601, timer_is_running()), until = (in_menu() || game_lost() || !in_career_practice())))

achievement(title = "Ronnie Rainbow II", description = "Pot and re-spot each coloured ball at least once during a single break.", points = 10,
    trigger = in_game() && !replay() && never(in_menu()) && never(their_shot()) && never(current_break() == 0 && prev(current_break() > 0)) && never(frame_started()) && all_of(range(1, 6), our_ball_potted_once) && all_of(range(1, 6), our_ball_respotted_once))

achievement(title = "Ronnie Rainbow I", description = "Pot and re-spot each coloured ball at least once during a single frame.", points = 5,
    trigger = in_game() && !replay() && never(in_menu()) && never(frame_started()) && all_of(range(1, 6), our_ball_potted_once) && all_of(range(1, 6), our_ball_respotted_once))

achievement(title = "Fast Can Be Smooth Too", description = "Legally pot a ball while shooting at full power.", points = 3,
    trigger = in_game() && !replay() && our_shot() && shot_power() == 65536 && trigger_when(prev(player_score()) < player_score()))

// Generates with Reset If alt group instead of ResetNextIf on pauselock - must edit for this to work correctly
achievement(title = "Break-Off to a Good Start", description = "Pot a red ball on the break-off shot in Tournament or Quick Match mode.", points = 5,
    trigger =   disable_when(their_shot(), until = in_menu() || break_off()) &&
    in_game() && (in_tournament() || in_quick_match()) && !replay() && our_shot() &&
    trigger_when(prev(player_score()) < player_score())
)

function achievement_break(target, title, desc, points)
{
    achievement(title = title, description = desc,
    points = points, trigger = never(!our_shot() || in_menu()) &&
    once(our_shot() && current_break() == 0) && in_game() && !replay() &&
    our_shot() && prev(current_break() < target) && current_break() >= target)
}

function achievement_quick_match_win(title, opponent, oppIndex)
{
    achievement(title = title, description = "Defeat " + opponent + " in Quick Match mode.",
    points = 10, trigger = in_game() && !replay() && in_quick_match() &&
    current_opponent() == oppIndex && prev(game_in_progress()) && game_won())
}

function achievement_career_win(scenario, subscenarios, scenarioIndex)
{
    points = 5
    if (scenarioIndex >= 14)
    {
        points = 10
    }
    type = "progression"
    if (scenarioIndex == 18)
    {
        type = "win_condition"
    }
    achievement(title = scenario, description = "Complete the " + scenario + " scenario in Career mode.",
    points = points, trigger = in_game() && !replay() && in_career() && current_career_scenario() == scenarioIndex && current_career_sub_scenario() == subscenarios - 1 && 
    prev(game_in_progress()) && game_won(), type = type)
}

for i in range(7, 16) 
{
    achievement_quick_match_win(nicknames[i], opponents[i], i)
}

for i in range(0, 18)
{
    if (career_scenarios[i] != "Practice")
    {
        achievement_career_win(career_scenarios[i], career_subscenario_amount[i], i)
    }
}

achievement_break(10, "Getting the Hang of It", "Score 10 or more points in a single break.", 3)
achievement_break(25, "That's a Decent Break, Mate", "Score 25 or more points in a single break.", 5)
achievement_break(50, "Running the Table", "Score 50 or more points in a single break.", 10)
achievement_break(100, "Century Break", "Score 100 or more points in a single break.", 25)
achievement_break(147, "Maximum Break", "Achieve the maximum break and score 147 points in one visit to the table.", 50)

// Leaderboards

ordinal_words = [
    "first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth"
]

leaderboard(title = "Tournament/Quick Match Speedrun", description = "Fastest time to win a frame in Tournament or Quick Match mode.", format = "FRAMES", value = always_true(), cancel = in_menu() || replay() || game_lost() || !(in_quick_match() || in_tournament()),
            start = frame_started() && (in_quick_match() || in_tournament()), submit = prev(game_in_progress()) && game_won(), lower_is_better = true)

leaderboard(title = "Tournament/Quick Match High Score", description = "Highest score in Tournament or Quick Match mode upon winning the frame.", format = "VALUE", value = player_score(), cancel = in_menu() || replay() || !(in_quick_match() || in_tournament()), submit = always_true(),
    lower_is_better = false,
    start = in_game() && !replay() && (in_tournament() || in_quick_match()) && prev(game_in_progress()) && game_won())

leaderboard(title = "Tournament/Quick Match Best Break", description = "Highest break in Tournament or Quick Match mode.", format = "VALUE", value = prev(current_break()), cancel = in_menu() || replay() || !(in_quick_match() || in_tournament()), submit = always_true(),
    lower_is_better = false,
    start = prev(current_break()) > 0 && in_game() && !replay() && (in_tournament() || in_quick_match()) && ((game_won() && prev(game_won()) && our_shot()) || (prev(our_shot()) && their_shot())))

function practice_speedrun_leaderboard(scenario_index, practice_index) 
{
    leaderboard(title = "Career Practice " + practice_index + " Speedrun (IGT)", description = "Highest time remaining in the " + ordinal_words[practice_index - 1] + " Practice scenario in Career mode.",
    format = "MILLISECS", value = practice_timer() / 10, cancel = in_menu() || replay() || !in_career() || !in_career_practice(), submit = always_true(), lower_is_better = false,
    start = in_career() && in_career_practice() && current_career_scenario() == scenario_index && prev(game_in_progress()) && game_won())
}

practice_speedrun_leaderboard(0x01, 1)
practice_speedrun_leaderboard(0x04, 2)
practice_speedrun_leaderboard(0x07, 3)
practice_speedrun_leaderboard(0x0a, 4)
practice_speedrun_leaderboard(0x0d, 5)
practice_speedrun_leaderboard(0x10, 6)

// Rich Presence

rp_opponent = rich_presence_lookup("Opponent", current_opponent(), opponents, "an opponent")
rp_score = rich_presence_value("Score", player_score())
rp_oppscore = rich_presence_value("OppScore", opponent_score())
rp_career_scenario = rich_presence_lookup("Career Scenario", current_career_scenario(), career_scenarios)
rp_break = rich_presence_value("Break", current_break())

rich_presence_conditional_display(in_menu(), "In menus")
rich_presence_conditional_display(replay(), "Watching replays")
rich_presence_conditional_display(game_mode() == 0 && our_shot() && current_break() > 0, "Facing {0} in Quick Match mode [Score {1}-{2}] [On a break of {3}]", rp_opponent, rp_score, rp_oppscore, rp_break)
rich_presence_conditional_display(game_mode() == 0, "Facing {0} in Quick Match mode [Score {1}-{2}]", rp_opponent, rp_score, rp_oppscore)
rich_presence_conditional_display(game_mode() == 1, "Playing {0} in Career mode", rp_career_scenario)
rich_presence_conditional_display(game_mode() == 2 && current_break() > 0, "Having a round of practice [On a break of {0}]", rp_break)
rich_presence_conditional_display(game_mode() == 2, "Having a round of practice")
rich_presence_conditional_display(game_mode() == 3 && our_shot() && current_break() > 0, "Facing {0} in Tournament mode [Score {1}-{2}] [On a break of {3}]", rp_opponent, rp_score, rp_oppscore, rp_break)
rich_presence_conditional_display(game_mode() == 3, "Facing {0} in Tournament mode [Score {1}-{2}]", rp_opponent, rp_score, rp_oppscore)
rich_presence_display("Playing Ronnie O'Sullivan's Snooker")
