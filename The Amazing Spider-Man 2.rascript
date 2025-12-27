// The Amazing Spider-Man 2
// #ID = 5602

// $D097: Pause Screen Address[8-bit]
//        00=Playing
//        01=Paused/Room Transition
function pause_screen_address() => byte(0x00D097)

// $D0A6: Boss Rooms[8-bit]
//        09=Lizard Boss Room
//        24=Graviton Boss Room
//        1b=Mysterio Room
function boss_rooms() => byte(0x00D0A6)

// $D0B4: Game State[8-bit]
//        00=Main Menu
//        01=In Game
//        02=Cutscene
//        03=Game Over Screen
function game_state() => byte(0x00D0B4)

// $D0DF: Spider-Man Health[8-bit]
function spider_man_health() => byte(0x00D0DF)

// $D0E0: Lives[8-bit]
//        00-05
function lives() => byte(0x00D0E0)

// $D0E1: Strength Boosts[8-bit]
//        00-04
function strength_boosts() => byte(0x00D0E1)

// $D0E2: Webs[8-bit]
function webs() => byte(0x00D0E2)

// $D0E3: Boss Health Bar Display[8-bit]
//        96=Full Health
//        00=Dead
function boss_health_bar_display() => byte(0x00D0E3)

// $D0F7: Riding Glider[8-bit]
//        00=Not on glider
//        01=Riding Glider
function riding_glider() => byte(0x00D0F7)

// $D114: [8-bit] Game complete check (Mysterio fight)
//        0x00 = Not finished
//        0x01 = Mysterio dead
function game_complete() => byte(0x00D114)

// $D116: Level 1 complete check[8-bit]
//        01=Level 1
//        02=Level 2
function level_1_complete_check() => byte(0x00D116)

// $D118: Lizard Defeated[8-bit]
//        
//        0=Defeated
//        1=Not Defeated
//        04=after cutscene
function lizard_defeated() => byte(0x00D118)

// $D119: Escape Carnage[8-bit]
//        00=not escaped
//        05=escaped
function escape_carnage() => byte(0x00D119)

// $D11A: Graviton Defeated[8-bit]
//        00=Graviton Alive
//        06=dead
function graviton_defeated() => byte(0x00D11A)

// $D151: Jump and Freeze to fly[8-bit]
function jump_and_freeze_to_fly() => byte(0x00D151)

// $D3A3: Cutscene Address[8-bit]
function cutscene_address() => byte(0x00D3A3)

// $D9A5: Door Key Check[8-bit]
//        fe=Hobgoblin still alive
//        01=Hobgoblin down
//        00=Key Obtained
function door_key_check() => byte(0x00D9A5)

// $D9AA: Door Combination[8-bit]
//        fe=Not obtained
//        00=obtained
function door_combination() => byte(0x00D9AA)

// $D9AF: Antidote Check[8-bit]
//        00=Antidote obtained
//        0c=Not obtained
function antidote_check() => byte(0x00D9AF)

// $D9D7: Oil Check[8-bit]
//        00=Oil obtained
//        03=Oil Not obtained
function oil_check() => byte(0x00D9D7)

// $D9DC: Wrench Check[8-bit]
//        00=Wrench Obtained
//        02=Wrench Not obtained
function wrench_check() => byte(0x00D9DC)

// $D9E1: Access Card Check[8-bit]
//        00=Card Obtained
//        08=Not Obtained
function access_card_check() => byte(0x00D9E1)

achievement(
    title = "Even A Spider Has Need For Tools", points = 5, type="progression",
    description = "Collect the Wrench.",
    id = 306558, badge = "339258", published = "2023-04-04 12:37:14 PM", modified = "2023-04-04 12:37:30 PM",
    trigger = game_state() == 1 && wrench_check() == 0 && prev(wrench_check()) == 2
)

achievement(
    title = "Slippery Spider", points = 5, type="progression",
    description = "Collect the Oil.",
    id = 306559, badge = "339259", published = "2023-04-04 12:37:14 PM", modified = "2023-04-04 12:37:30 PM",
    trigger = game_state() == 1 && oil_check() == 0 && prev(oil_check()) == 3
)

achievement(
    title = "Had To Beat A Villain With My Fists To Get This Key", points = 5, type="progression",
    description = "Defeat Hobgoblin and Collect the Key.",
    id = 306560, badge = "339260", published = "2023-04-04 12:37:14 PM", modified = "2023-04-04 12:37:31 PM",
    trigger = game_state() == 1 && door_key_check() == 0 && prev(door_key_check()) == 1
)

achievement(
    title = "I Was Thinking...You Really Smell", points = 10,
    description = "Defeat Lizard and revert him to his human form without using webs. (Leave boss room or die to reset)",
    id = 306561, badge = "339261", published = "2023-04-04 12:37:15 PM", modified = "2023-04-06 2:39:47 AM",
    trigger = boss_rooms() == 9 && game_state() == 1 && trigger_when(lizard_defeated() == 0) &&
              prev(lizard_defeated()) == 1 &&
              disable_when(webs() < prev(webs()), until=spider_man_health() == 0 || boss_rooms() != 9)
)

achievement(
    title = "Spidey Always Breaking Into Places", points = 5, type="progression",
    description = "Collect the Access Card.",
    id = 306562, badge = "339262", published = "2023-04-04 12:37:15 PM", modified = "2023-04-04 12:37:31 PM",
    trigger = game_state() == 1 && access_card_check() == 0 && prev(access_card_check()) == 8
)

achievement(
    title = "Now To Pay Connors A Visit", points = 5, type="progression",
    description = "Collect the Antidote.",
    id = 306563, badge = "339263", published = "2023-04-04 12:37:15 PM", modified = "2023-04-04 12:37:32 PM",
    trigger = game_state() == 1 && antidote_check() == 0 && prev(antidote_check()) == 12
)

achievement(
    title = "This Day Just Keeps Getting Better", points = 5, type="progression",
    description = "Defeat Lizard and collect the Door Combination.",
    id = 306564, badge = "339264", published = "2023-04-04 12:37:16 PM", modified = "2023-04-04 12:37:32 PM",
    trigger = game_state() == 1 && antidote_check() == 0 && prev(antidote_check()) == 12
)

achievement(
    title = "Fist VS Face", points = 10,
    description = "Defeat Graviton without using webs.(Leave boss room or die to reset)",
    id = 306565, badge = "339265", published = "2023-04-04 12:37:16 PM", modified = "2023-04-06 2:39:47 AM",
    trigger = boss_rooms() == 36 && game_state() == 1 &&
              never((spider_man_health() == 0 || prev(boss_rooms()) == 18) && boss_rooms() == 36) &&
              (always_false() || (prev(boss_health_bar_display()) > 0 && trigger_when(boss_health_bar_display() == 0) &&
                disable_when(webs() < prev(webs()))))
)

achievement(
    title = "On The Cover But You Don't Even Fight Him", points = 5, type="progression",
    description = "Escape Carnage.",
    id = 306566, badge = "339266", published = "2023-04-04 12:37:16 PM", modified = "2023-04-04 12:37:33 PM",
    trigger = game_state() == 1 && escape_carnage() == 5 && prev(escape_carnage()) == 0
)

achievement(
    title = "Gonna Knock That Fish Bowl Off The Old Fashioned Way", points = 10,
    description = "Defeat Mysterio without using webs. (Leave boss room or die to reset)",
    id = 306567, badge = "339273", published = "2023-04-04 12:37:17 PM", modified = "2023-04-06 2:39:47 AM",
    trigger = boss_rooms() == 27 && game_state() == 1 && trigger_when(game_complete() == 1) &&
              prev(game_complete()) == 0 &&
              disable_when(webs() < prev(webs()), until=spider_man_health() == 0 || boss_rooms() != 27)
)

achievement(
    title = "Who Even Was That?", points = 5, type="progression",
    description = "Defeat Graviton and discover the power has returned.",
    id = 306568, badge = "339268", published = "2023-04-04 12:37:17 PM", modified = "2023-04-04 12:37:33 PM",
    trigger = game_state() == 1 && graviton_defeated() == 6 && prev(graviton_defeated()) == 0
)

achievement(
    title = "You Lose Again Beck", points = 5, type="win_condition",
    description = "Defeat Mysterio.",
    id = 306569, badge = "339269", published = "2023-04-04 12:37:17 PM", modified = "2023-04-04 12:37:34 PM",
    trigger = game_state() == 1 && boss_rooms() == 27 && game_complete() == 1 &&
              prev(game_complete()) == 0
)

achievement(
    title = "Strongest Spider", points = 10,
    description = "Obtain all 4 Strength Boosts and reach 5 Strength.",
    id = 306570, badge = "339270", published = "2023-04-04 12:37:18 PM", modified = "2023-04-04 12:37:34 PM",
    trigger = game_state() == 1 && strength_boosts() == 4 && prev(strength_boosts()) == 3
)

achievement(
    title = "Lively Spider", points = 10,
    description = "Have 5 Extra Lives at one time.",
    id = 306571, badge = "339271", published = "2023-04-04 12:37:18 PM", modified = "2023-04-04 12:37:34 PM",
    trigger = game_state() == 1 && lives() == 5 && prev(lives()) == 4
)

achievement(
    title = "I Have Places To Be, People To Save", points = 25,
    description = "Defeat Mysterio to save New York in under 30 minutes.",
    id = 306572, badge = "339272", published = "2023-04-04 12:37:18 PM", modified = "2023-04-06 2:33:36 AM",
    trigger = game_state() == 1 && never(game_state() == 0) &&
              (always_false() || (trigger_when(prev(cutscene_address()) == 0) && trigger_when(cutscene_address() == 26) &&
                unless((cutscene_address() == 0 && pause_screen_address() == 1)) &&
                disable_when(repeated(108000, game_state() == 1))))
)
