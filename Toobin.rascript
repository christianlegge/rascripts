// Toobin'
// #ID = 2037

// $0007: Pause On/Off
//        0b = Pause
//        0d = Play
function pause_on_off() => byte(0x000007)

// $0013: X axis
function x_axis() => byte(0x000013)

// $0014: X quadrant
function x_quadrant() => byte(0x000014)

// $0015: Player Movement
//        Y axis
function player_movement() => byte(0x000015)

// $0016: Y Quadrant
function y_quadrant() => byte(0x000016)

// $001B: Portal hit at 01
function portal_hit_at_01() => byte(0x00001B)

// $0038: 01 = A
//        02 = B
//        04 = Select
//        08 = Start
//        10 = Up
//        20 = Down
//        40 = Left
//        80 = Right
//        50 = Up Left
//        90 = Up Right
//        a0 = Down Right
//        60 = Down Left
function a() => byte(0x000038)

// $0044: Acceleration x axis
function acceleration_x_axis() => byte(0x000044)

// $0047: Acceleration Y axis
function acceleration_y_axis() => byte(0x000047)

// $004C: Number of Cans Remaining
function number_of_cans_remaining() => byte(0x00004C)

// $0066: Multiplyer
//        Max 5
//        Obtained through perfectly passing through gates
function multiplyer() => byte(0x000066)

// $006F: Class level
//        00 = Class 1
//        01 = Class 2
//        02 = Class 3
//        03 = Class 4
//        04 = Class 5
//        05 = Class 6
//        06 = Class 7
//        07 = Class 8
//        08 = Class 9
function class_level() => byte(0x00006F)

// $0070: [8bit] River (level part 2) number (can edit to skip levels). Sister address is class level (0x006f)
//        
//        EX: 0x5 class level and 0xb (this address) = Black Forest Class Level 6.
//        
//        Class 4 values:
//        -------------------------
//        0x02 - Argentum
//        0x04 - American
//        0x18 - Beach Party
//        
//        Class 6 Values
//        ---------------------
//        0x12 = Brontosauri
//        0xa = Rio Grande
//        0xb= Black Forest
//        0x7 = Styx
//        0xc = canals of mars
//        0xd = Nightmare
//        
//        
//        Class 7 Values
//        ----------------------
//        0x17 = Snake
//        0x01 = Amazon
//        0x02 = Argentum
//        0x15 = Warp Zone III (locks Deflateless Class 7 Cheevo)
//        
//        ------------------------
//        level 01 = 00 (Colorado)
//        level 02 = 03 (Okefenokee)
//        level 03 = 0a (Rio Grande)
//        
//        warp zone 1 = 13
//        
//        level 01 class 02 = 05 (Yukon)
function river() => byte(0x000070)
function level_idx() => byte(0x71)

// $007B: [bitflag] Start of 9 Twigs blocking Class 7 River 1 - Snake.
//        0x14 = stick to shoot with can
//        0x0 = stick destroyed
function start_of_9_twigs_blocking_class_7_river_1_snake() => byte(0x00007B)

// $0083: [bitflag] End of 9 Twigs blocking Class 7 River 1 - Snake.
//        0x14 = stick to shoot with can
//        0x0 = stick destroyed
function end_of_9_twigs_blocking_class_7_river_1_snake() => byte(0x000083)

// $008C: Second Gate (Okee)
//        02 = 1000
//        01 = 500
//        00 = 200
function second_gate_okee() => byte(0x00008C)

// $008F: First Gate Colorado
//        02 = 1000
//        01 = 500
//        00 = 200
function first_gate_colorado() => byte(0x00008F)

// $0093: First gate (Okefenoke)
//        02 = 1000
//        01 = 500
//        00 = 200
function first_gate_okefenoke() => byte(0x000093)

// $009F: First Gate Colorado
//        00 = Miss
//        01 = Hit
function first_gate_colorado() => byte(0x00009F)

// $00E5: f0 = portal?
function f0_portal() => byte(0x0000E5)

// $0100: Level/Screens
//        00 = Tengen, Black Forest, American
//        09 = Okefenokee, Jurassic, Mississippi, Brontisauri, Amazon
//        0f = Nightmare / Warp Screen / Styx
//        11 = Get Ready Screen / Credits
//        13 = Player Select
//        16 = Canals of Mars
//        20 = Colorado, Nile, Nevada, Beach Party, Snake
//        27 = Rio Grande, Rio Del Oro
//        30 = Cuprum, Argentum
//        31 = Yukon
function level_screens() => byte(0x000100)

// $02D9: CODE BLOCK
//        07 = Level Skip Active
function code_block() => byte(0x0002D9)

// $0550: sfx hits
function sfx_hits() => byte(0x000550)

// $0551: Counts SFX hits
function counts_sfx_hits() => byte(0x000551)

// $0553: SFX
//        10 = death sound
//        11 = New High Score!!!
//        12 = hit item with can
//        13 = gate collision (bouncing letters)
//        14 = gate pass
//        15 = out of cans
//        16 = Green item (chip bag?) pick up
//        17 = Black Cross pick up
//        18 = ball pick up
//        19 = Can throw
//        20 = spear throw
//        24 = skull chomp
//        26 = Skeeto buzz hover
//        27 = Skeeto buzz dive
//        29 = Hammer throw, Tornado
//        2b = 6pack get
//        2c = Soda Can pick up
//        2d = Bullet shot
//        2e = blow dart (machine gun?)
//        31 = lazer shot
//        32 = lazer charge
//        35 = rock rapid hit
function sfx() => byte(0x000553)

// $0562: Music?
//        00 = Black Forest
//        06 = Main Menu/Colorado/Nevada
//        02 = Okefenokee, Mississippi
//        03 = Canals of Mars
//        04 = Rio Grande
//        05 = Rio Del Oro
//        07 = Snake
//        08 = Jurassic, Brontisauri, Amazon
//        2a = Yukon (switches to 06 halfway)
//        09 = Nile
//        01 = Cuprum
//        0b = Warp Room, Argentum
//        0c = American
//        0d = Beach Party
//        0e = Nightmare, Styx
function music() => byte(0x000562)

// $058A: Music High Hat/Snare
function music_high_hat_snare() => byte(0x00058A)

// $058B: Music Bass
function music_bass() => byte(0x00058B)

// $058C: Music High Keys 1
function music_high_keys_1() => byte(0x00058C)

// $058D: music high keys 2
function music_high_keys_2() => byte(0x00058D)

// $0869: Score
//        10's
function score() => byte(0x000869)

// $086A: Score
//        100's and 1000's
//        {i.e. 35 = 3500}
function score() => byte(0x00086A)

// $086B: Score
//        10,000's and 100,000's
function score() => byte(0x00086B)

// $086C: Score
//        10,000,000's and 1,000,000's
function score() => byte(0x00086C)

// $086E: Lives Remaining
function lives_remaining() => byte(0x00086E)

function lv_ach(preriv, curr, class, class_idx_pre) {
return class_level() == class && prev(river()) == preriv && river() == curr && prev(level_idx()) == class_idx_pre && level_idx() == class_idx_pre + 4 && code_block() != 7
}

function class_end_lv() {
return always_false()
}

achievement(
    title = "Colorado Koozie", points = 1,
    description = "TOOB down Colorado",
    id = 86353, badge = "94406", published = "10/21/2019 9:57:26 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = lv_ach(0, 3, 0, 0)
)

achievement(
    title = "Okidokiee Okefenokee", points = 1,
    description = "TOOB down Okefenokee",
    id = 86354, badge = "94410", published = "10/21/2019 9:57:32 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = lv_ach(3, 0xa, 0, 4))

achievement(
    title = "Relaxing on the Rio Grande", points = 1,
    description = "TOOB down Rio Grande",
    id = 86355, badge = "94411", published = "10/21/2019 9:57:37 PM", modified = "2/21/2023 12:29:08 AM",
    trigger = lv_ach(0xa, 9, 0, 8)
)

achievement(
    title = "Splashtastic Jurassic", points = 1,
    description = "TOOB down Jurassic",
    id = 86356, badge = "94412", published = "10/21/2019 9:57:43 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = class_end_lv()
)

achievement(
    title = "2oober", points = 5,
    description = "Reach Class 2",
    id = 86357, badge = "94414", published = "10/21/2019 9:58:48 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(level_screens() == 9) && once(class_level() == 0) && once(class_level() == 1) &&
              never(level_screens() == 19) && never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Down on the Yukon", points = 1,
    description = "TOOB down Yukon",
    id = 86358, badge = "94425", published = "10/21/2019 9:58:52 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = lv_ach(5, 8, 1, 0))

achievement(
    title = "In de-Nile", points = 1,
    description = "TOOB down Nile",
    id = 86359, badge = "94426", published = "10/21/2019 9:58:55 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 1) && once(level_screens() == 49) && once(music() == 42) &&
              once(level_screens() == 32) && never(level_screens() == 19) && never(class_level() != 1) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Why is the Cuprum Gone?", points = 1,
    description = "TOOB down Cuprum",
    id = 86360, badge = "94427", published = "10/21/2019 9:58:59 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 1) && once(level_screens() == 48) && once(music() == 1) &&
              once(level_screens() == 9) && never(level_screens() == 19) && never(level_screens() == 0) &&
              never(class_level() != 1) && never(code_block() == 7)
)

achievement(
    title = "Mississippi Sized Mosquitos", points = 1,
    description = "TOOB down Mississippi",
    id = 86361, badge = "94462", published = "10/21/2019 9:59:03 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 1) && once(level_screens() == 9) && once(music() == 1) &&
              once(level_screens() == 15) && never(level_screens() == 19) && never(level_screens() == 0) &&
              never(class_level() != 1) && never(code_block() == 7)
)

achievement(
    title = "Oh What a Night to Toob", points = 1,
    description = "TOOB down Nightmare",
    id = 86362, badge = "94429", published = "10/21/2019 9:59:07 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 1) && once(class_level() == 2) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Thrice a Toober", points = 5,
    description = "Reach Class 3",
    id = 86363, badge = "94415", published = "10/21/2019 9:59:10 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 1) && once(class_level() == 2) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Deflateless Class 1", points = 10,
    description = "Toob all the rivers without dying in Class 1",
    id = 86364, badge = "94481", published = "10/21/2019 9:59:14 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 0) && once(class_level() == 1) &&
              disable_when(lives_remaining() < prev(lives_remaining())) &&
              (always_false() || (never(level_screens() == 19) && never(code_block() == 7)))
)

achievement(
    title = "Brontosauri Bobbin'", points = 2,
    description = "TOOB down Brontosauri",
    id = 86365, badge = "94430", published = "10/21/2019 9:59:24 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 2) && once(level_screens() == 9) && once(music() == 8) &&
              once(level_screens() == 39) && never(class_level() != 2) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Rapids Del Oro", points = 2,
    description = "TOOB down Rio Del Oro",
    id = 86366, badge = "94431", published = "10/21/2019 9:59:27 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 2) && once(level_screens() == 39) && once(music() == 5) && once(music() == 0) &&
              never(class_level() != 2) && never(level_screens() == 19) && never(code_block() == 7)
)

achievement(
    title = "White Wizard Rapids", points = 2,
    description = "TOOB down Black Forrest",
    id = 86367, badge = "94432", published = "10/21/2019 9:59:30 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 2) && once(music() == 0) && level_screens() == 22 && never(class_level() != 2) &&
              never(level_screens() == 19) && never(code_block() == 7)
)

achievement(
    title = "\"Blood River, wider than a mile\"", points = 2,
    description = "TOOB down Styx",
    id = 86368, badge = "94434", published = "10/21/2019 9:59:35 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 2) && once(class_level() == 3) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "4tified Toober", points = 5,
    description = "Reach Class 4",
    id = 86369, badge = "94416", published = "10/21/2019 9:59:40 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 2) && once(class_level() == 3) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "...Mars? ...k", points = 2,
    description = "TOOB down Canals of Mars",
    id = 86370, badge = "94433", published = "10/21/2019 9:59:43 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 2) && once(level_screens() == 22) && once(music() == 3) &&
              once(level_screens() == 15) && never(class_level() != 2) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "What's the madda' Nevada?", points = 2,
    description = "TOOB down Nevada",
    id = 86371, badge = "94435", published = "10/21/2019 9:59:47 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 3) && once(level_screens() == 32) && once(music() == 6) &&
              once(level_screens() == 9) && never(class_level() != 3) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Accurate Amazons", points = 2,
    description = "TOOB down Amazon",
    id = 86372, badge = "94436", published = "10/21/2019 9:59:50 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 3) && once(level_screens() == 9) && once(music() == 8) &&
              once(level_screens() == 48) && never(class_level() != 3) && never(level_screens() == 19) &&
              never(code_block() == 7)
)

achievement(
    title = "Argentum? I Hardly Knew Him!", points = 2,
    description = "TOOB down Argentum",
    id = 86373, badge = "94437", published = "10/21/2019 9:59:54 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 3) && once(level_screens() == 48) && once(music() == 11) && once(music() == 12) &&
              never(class_level() != 3) && never(level_screens() == 19) && never(code_block() == 7)
)

achievement(
    title = "Bald Eagles and Such", points = 2,
    description = "TOOB down American",
    id = 86374, badge = "94438", published = "10/21/2019 9:59:58 PM", modified = "3/26/2023 11:44:26 AM",
    trigger = class_level() == 3 &&
              river() == 4 &&
              prev(level_screens()) == 0 && level_screens() == 17 && code_block() != 7
)

achievement(
    title = "End of the Game (ARCADE ONLY)", points = 2,
    description = "TOOB down Beach Party",
    id = 86375, badge = "94439", published = "10/21/2019 10:00:01 PM", modified = "3/26/2023 11:38:25 AM",
    trigger = prev(class_level()) == 3 && class_level() == 4 &&
              river() == 24 &&
              level_screens() == 17 && code_block() != 7
)

achievement(
    title = "Forti5 Toober", points = 10,
    description = "Reach Class 5",
    id = 86376, badge = "94417", published = "10/21/2019 10:00:05 PM", modified = "3/15/2023 7:14:11 AM",
    trigger = prev(class_level()) == 3 && class_level() == 4 && level_screens() != 19 && level_screens() != 0 &&
              code_block() != 7
)

achievement(
    title = "2kon", points = 3,
    description = "TOOB down Yukon II",
    id = 86377, badge = "94440", published = "10/21/2019 10:00:09 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 4) && once(level_screens() == 49) && once(music() == 42) &&
              once(level_screens() == 48) && never(class_level() != 4) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "I've Seen this Cuprum Before", points = 3,
    description = "TOOB down Cuprum II",
    id = 86378, badge = "94441", published = "10/21/2019 10:00:12 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 4) && once(level_screens() == 48) && once(music() == 1) &&
              once(level_screens() == 9) && never(class_level() != 4) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "OkefenokeeMyBrokeeTubeFloatee", points = 3,
    description = "TOOB down Okefenokee II",
    id = 86379, badge = "94442", published = "10/21/2019 10:00:16 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 4) && once(level_screens() == 9) && once(music() == 2) &&
              once(level_screens() == 15) && never(class_level() != 4) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Who Needs a Boatman? I Has Tube", points = 3,
    description = "TOOB down Styx II",
    id = 86380, badge = "94443", published = "10/21/2019 10:00:20 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 4) && once(level_screens() == 15) && once(music() == 14) &&
              once(level_screens() == 32) && never(class_level() != 4) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Pyramids and Rapids", points = 3,
    description = "TOOB down Nile II",
    id = 86381, badge = "94444", published = "10/21/2019 10:00:24 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 4) && once(class_level() == 5) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Class 6?! You can get into R movies now", points = 10,
    description = "Reach Class 6",
    id = 86382, badge = "94423", published = "10/21/2019 10:00:27 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 4) && once(class_level() == 5) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Double Dino Damage", points = 3,
    description = "TOOB down Brontosauri II",
    id = 86383, badge = "94445", published = "10/21/2019 10:00:31 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 5) && once(level_screens() == 9) && once(music() == 8) &&
              once(level_screens() == 39) && never(class_level() != 5) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Rio Repetative", points = 3,
    description = "TOOB down Rio Grande II",
    id = 86384, badge = "94446", published = "10/21/2019 10:00:34 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 5) && once(level_screens() == 39) && once(music() == 4) && once(music() == 0) &&
              never(class_level() != 5) && never(level_screens() == 19) && never(code_block() == 7)
)

achievement(
    title = "Get Bent Ent!", points = 3,
    description = "TOOB down Black Forest II",
    id = 86385, badge = "94447", published = "10/21/2019 10:00:38 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 5) && once(music() == 0) && once(level_screens() == 22) && never(class_level() != 5) &&
              never(level_screens() == 19) && never(code_block() == 7)
)

achievement(
    title = "Martian Circus Tents?", points = 3,
    description = "TOOB down Canals of Mars II",
    id = 86386, badge = "94448", published = "10/21/2019 10:00:41 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 5) && once(level_screens() == 22) && once(music() == 3) &&
              once(level_screens() == 15) && never(class_level() != 5) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "It's Like Being in a Dollar Hell", points = 3,
    description = "TOOB down Nightmare II",
    id = 86387, badge = "94449", published = "10/21/2019 10:00:45 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 5) && once(class_level() == 6) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Toobin' in 7th Heaven", points = 10,
    description = "Reach Class 7",
    id = 86388, badge = "94420", published = "10/21/2019 10:00:49 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 5) && once(class_level() == 6) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "\"Why'd it have to be snakes?\"", points = 4,
    description = "TOOB down Snake",
    id = 86389, badge = "94450", published = "10/21/2019 10:00:53 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 6) && once(level_screens() == 32) && once(music() == 7) &&
              once(level_screens() == 9) && never(class_level() != 6) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "I Bought This Tube on Amazon", points = 4,
    description = "TOOB down Amazon II",
    id = 86390, badge = "94454", published = "10/21/2019 10:00:56 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 6) && once(level_screens() == 9) && once(music() == 8) &&
              once(level_screens() == 48) && never(class_level() != 6) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Arggh, gent! Um...", points = 4,
    description = "TOOB down Argentum II",
    id = 86391, badge = "94453", published = "10/21/2019 10:01:00 PM", modified = "3/26/2023 12:20:26 PM",
    trigger = class_level() == 6 &&
              river() == 2 &&
              prev(level_screens()) == 48 && level_screens() == 17 && code_block() != 7
)

achievement(
    title = "Okefenok3", points = 4,
    description = "TOOB down Okefenokee III",
    id = 86392, badge = "94455", published = "10/21/2019 10:01:03 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 6) && once(level_screens() == 9) && once(music() == 2) &&
              once(level_screens() == 39) && never(class_level() != 6) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "3-o-Grande", points = 4,
    description = "TOOB down Rio Grande",
    id = 86393, badge = "94456", published = "10/21/2019 10:01:06 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 6) && once(level_screens() == 39) && once(music() == 4) &&
              once(level_screens() == 22) && never(class_level() != 6) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "The Pepto Bismol River of Mars", points = 4,
    description = "TOOB down Canals of Mars III",
    id = 86394, badge = "94458", published = "10/21/2019 10:01:10 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 6) && once(level_screens() == 22) && once(music() == 3) &&
              once(level_screens() == 15) && never(class_level() != 6) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Beware the River Ripper", points = 4,
    description = "TOOB down Nightmare III",
    id = 86395, badge = "94459", published = "10/21/2019 10:01:14 PM", modified = "11/22/2022 2:47:36 PM",
    trigger = once(class_level() == 0) && prev(class_level()) == 6 && class_level() == 7 &&
              never(river() == 21)
)

achievement(
    title = "Gr8 Toober Right Here", points = 10,
    description = "Reach Class 8",
    id = 86396, badge = "94422", published = "10/21/2019 10:01:17 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 6) && once(class_level() == 7) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Yukon Do It (I'm so sorry)", points = 5, type="progression",
    description = "TOOB down Yukon III",
    id = 86397, badge = "94460", published = "10/21/2019 10:01:21 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 7) && once(level_screens() == 49) && once(music() == 42) &&
              once(level_screens() == 48) && never(class_level() != 7) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "107.8682 u", points = 5, type="progression",
    description = "TOOB down Argentum III",
    id = 86398, badge = "94461", published = "10/21/2019 10:01:24 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 7) && once(level_screens() == 48) && once(music() == 11) &&
              once(level_screens() == 9) && never(class_level() != 7) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Yippie Skippy Mississippi", points = 5, type="progression",
    description = "TOOB down Mississippi II",
    id = 86399, badge = "94463", published = "10/21/2019 10:01:28 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 7) && once(level_screens() == 9) && once(music() == 2) &&
              once(level_screens() == 15) && never(class_level() != 7) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "The Grand Illusion Was Better", points = 5, type="progression",
    description = "TOOB down Styx III",
    id = 86400, badge = "94465", published = "10/21/2019 10:01:31 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 7) && once(level_screens() == 15) && once(music() == 14) &&
              once(level_screens() == 32) && never(class_level() != 7) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Nile Mile", points = 5, type="progression",
    description = "TOOB down Nile III",
    id = 86401, badge = "94466", published = "10/21/2019 10:01:35 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 7) && once(class_level() == 8) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "The Gnarest of Gnar Toober", points = 10, type="progression",
    description = "Reach Class 9",
    id = 86402, badge = "94424", published = "10/21/2019 10:01:38 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 7) && once(class_level() == 8) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Cattle Paddle", points = 10, type="progression",
    description = "TOOB down Rio Grande IV",
    id = 86403, badge = "94467", published = "10/21/2019 10:01:41 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 8) && once(level_screens() == 39) && once(music() == 4) &&
              once(level_screens() == 49) && never(class_level() != 8) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Dooby-DoobyDo", points = 10, type="progression",
    description = "TOOB down Yukon IV",
    id = 86404, badge = "94468", published = "10/21/2019 10:01:44 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 8) && once(level_screens() == 49) && once(music() == 42) &&
              once(level_screens() == 9) && never(class_level() != 8) && never(level_screens() == 19) &&
              never(level_screens() == 0) && never(code_block() == 7)
)

achievement(
    title = "Archeolotoob", points = 10, type="progression",
    description = "TOOB down Brontosauri III",
    id = 86405, badge = "94470", published = "10/21/2019 10:01:47 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 8) && once(level_screens() == 9) && once(music() == 8) && once(music() == 0) &&
              never(class_level() != 8) && never(level_screens() == 19) && never(code_block() == 7)
)

achievement(
    title = "Don't Wiz in the River", points = 10, type="progression",
    description = "TOOB down Black Forest III",
    id = 86406, badge = "94474", published = "10/21/2019 10:01:50 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 8) && once(music() == 0) && once(level_screens() == 22) && never(class_level() != 8) &&
              never(level_screens() == 19) && never(code_block() == 7)
)

achievement(
    title = "Mars Flota", points = 10, type="progression",
    description = "TOOB down Canals of Mars IV",
    id = 86407, badge = "94472", published = "10/21/2019 10:01:54 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 8) && once(level_screens() == 22) && once(music() == 3) && once(music() == 12) &&
              never(class_level() != 8) && never(level_screens() == 19) && never(code_block() == 7)
)

achievement(
    title = "Hot Dogs? Check.", points = 10, type="progression",
    description = "TOOB down American II",
    id = 86408, badge = "94475", published = "10/21/2019 10:01:58 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 8) && once(music() == 12) && once(level_screens() == 32) &&
              never(class_level() != 8) && never(level_screens() == 19) && never(code_block() == 7)
)

achievement(
    title = "Don't Forget the TUNES!", points = 10, type="progression",
    description = "Make it to the final level. Rejoice, and chill.",
    id = 86409, badge = "94476", published = "10/21/2019 10:02:02 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 8) && once(level_screens() == 32) && never(class_level() != 8) &&
              never(level_screens() != 32) && never(code_block() == 7)
)

achievement(
    title = "Rock Out with Your Toob Sock Out", points = 25, type="win_condition",
    description = "Turn on the tunes to claim your trophy",
    id = 86410, badge = "94477", published = "10/21/2019 10:02:17 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 8) && once(level_screens() == 32) && once(music() == 13) &&
              never(class_level() != 8) && never(code_block() == 7) && never(level_screens() != 32)
)

achievement(
    title = "Deflateless Class 2", points = 10,
    description = "Toob all the rivers without dying in Class 2",
    id = 86411, badge = "94482", published = "10/21/2019 10:03:31 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 1) && once(class_level() == 2) &&
              disable_when(lives_remaining() < prev(lives_remaining())) &&
              (always_false() || (never(level_screens() == 19) && never(code_block() == 7) && never(once(class_level() < 1))))
)

achievement(
    title = "Deflateless Class 3", points = 10,
    description = "Toob all the rivers without dying in Class 3",
    id = 86412, badge = "94483", published = "10/21/2019 10:03:36 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 2) && once(class_level() == 3) &&
              disable_when(lives_remaining() < prev(lives_remaining())) &&
              (always_false() || (never(level_screens() == 19) && never(code_block() == 7) && never(once(class_level() < 2))))
)

achievement(
    title = "Deflateless Class 4", points = 10,
    description = "Toob all the rivers without dying in Class 4",
    id = 86413, badge = "94484", published = "10/21/2019 10:03:39 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 3) && once(class_level() == 4) &&
              disable_when(lives_remaining() < prev(lives_remaining())) &&
              (always_false() || (never(level_screens() == 19) && never(code_block() == 7) && never(once(class_level() < 3))))
)

achievement(
    title = "Deflateless Class 5", points = 10,
    description = "Toob all the rivers without dying in Class 5",
    id = 86414, badge = "94485", published = "10/21/2019 10:03:42 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 4) && once(class_level() == 5) &&
              disable_when(lives_remaining() < prev(lives_remaining())) &&
              (always_false() || (never(level_screens() == 19) && never(code_block() == 7) && never(once(class_level() < 4))))
)

achievement(
    title = "Deflateless Class 6", points = 25,
    description = "Toob all the rivers without dying in Class 6",
    id = 86415, badge = "94486", published = "10/21/2019 10:03:45 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 5) && once(class_level() == 6) &&
              disable_when(lives_remaining() < prev(lives_remaining())) &&
              (always_false() || (never(level_screens() == 19) && never(code_block() == 7) && never(once(class_level() < 5))))
)

achievement(
    title = "Deflateless Class 7", points = 25,
    description = "Toob all the rivers without dying in Class 7",
    id = 86416, badge = "94487", published = "10/21/2019 10:03:49 PM", modified = "11/22/2022 2:42:29 PM",
    trigger = once(class_level() == 0) && prev(class_level()) == 6 && class_level() == 7 &&
              never(lives_remaining() < prev(lives_remaining())) &&
              never(river() == 21)
)

achievement(
    title = "Deflateless Class 8", points = 25,
    description = "Toob all the rivers without dying in Class 8",
    id = 86417, badge = "94488", published = "10/21/2019 10:03:52 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 7) && once(class_level() == 8) &&
              disable_when(lives_remaining() < prev(lives_remaining())) &&
              (always_false() || (never(level_screens() == 19) && never(code_block() == 7) && never(once(class_level() < 7))))
)

achievement(
    title = "Deflateless Class 9", points = 25,
    description = "Toob all the rivers without dying in Class 9",
    id = 86418, badge = "94489", published = "10/21/2019 10:03:55 PM", modified = "10/22/2019 7:26:04 AM",
    trigger = once(class_level() == 8) && once(level_screens() == 32) &&
              disable_when(lives_remaining() < prev(lives_remaining())) &&
              (always_false() || (never(level_screens() == 19) && never(code_block() == 7) && never(once(class_level() < 8))))
)

achievement(
    title = "Ur-Murllion?", points = 25,
    description = "Score 1,000,000 pts",
    id = 86419, badge = "94478", published = "10/21/2019 10:03:58 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = score() == 1 && never(level_screens() == 19)
)

achievement(
    title = "You Can't See It, But Good Job", points = 25,
    description = "Score 500,000 pts",
    id = 86420, badge = "94479", published = "10/21/2019 10:04:04 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = score() == 80 && never(level_screens() == 19)
)

achievement(
    title = "Ultimate Toob Dude", points = 50,
    description = "Reach Class 9 without using a warp",
    id = 86421, badge = "94480", published = "10/21/2019 10:04:08 PM", modified = "10/24/2019 1:14:01 AM",
    trigger = once(class_level() == 1) && once(class_level() == 2) && once(class_level() == 3) &&
              once(class_level() == 4) && once(class_level() == 5) && once(class_level() == 6) &&
              once(class_level() == 7) && once(class_level() == 8) && once(music() == 12) && once(level_screens() == 32) &&
              disable_when(code_block() == 7) &&
              (always_false() || (never(level_screens() == 19)))
)
