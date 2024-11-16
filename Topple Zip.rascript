// Topple Zip
// #ID = 30808
// #MinimumVersion = 1.3

// $4821: [8-bit] Demo active
//        0x00 = Normal gameplay
//        0xFF = Demo, controls disabled
function demo_active() => byte(0x004821) == 0xFF

// $482D: [8-bit] Current scene number
function current_scene() => byte(0x00482D)

// $5274: [16-bit BCD] Health (displayed on screen as fuel gauge)
//        Decreases in increments of 10, each segment is 20
//        Starts at 100
function health_displayed_on_screen_as_fuel_gauge() => word(0x005274)

// $5276: [8-bit] Fuel segment 1 (starting from left)
//        0x00 = Empty
//        0x10 = Taken one hit
//        0x20 = Full
function fuel_segment_1_starting_from_left() => byte(0x005276)

// $5277: [8-bit] Fuel segment 2 (starting from left)
//        0x00 = Empty
//        0x10 = Taken one hit
//        0x20 = Full
function fuel_segment_2_starting_from_left() => byte(0x005277)

// $5278: [8-bit] Fuel segment 3 (starting from left)
//        0x00 = Empty
//        0x10 = Taken one hit
//        0x20 = Full
function fuel_segment_3_starting_from_left() => byte(0x005278)

// $5279: [8-bit] Fuel segment 4 (starting from left)
//        0x00 = Empty
//        0x10 = Taken one hit
//        0x20 = Full
function fuel_segment_4_starting_from_left() => byte(0x005279)

// $527A: [8-bit] Fuel segment 5 (starting from left)
//        0x00 = Empty
//        0x10 = Taken one hit
//        0x20 = Full
function fuel_segment_5_starting_from_left() => byte(0x00527A)

function in_scene_transition() => bit0(0x4822) == 1
function in_game_over() => bit4(0x4822) == 1

function collectible_array() => byte(0x42c0) // 14 entries, 0x20 bytes each
function ship_array() => byte(0x4640) // 12 entries, 0x20 bytes each

ship_hit_addrs = range(0x4640, 0x4640 + 0x20 * 11, 0x20)

bad_collectibles = [
    0x44, // Minus
    0x45 // Poison
]

ship_ids = [
    0xedb8,
    0xeb60,
    0xf718,
    0xf268,
    0xe200,
    0xe32c,
    0xe458,
    0xe584,
    0xe6b0,
    0xe7dc,
    0xe908,
    0xea34,
    0xf4c0,
    0xf970,
    0xfbc8,
    0xf010,

]

function in_game() => demo_active() == 0 && !in_scene_transition() && !in_game_over()

// Achievements

achievement("Sector Clear", "Shoot or stun every type of enemy ship in a single scene.", 10, 
    never(demo_active()) && never(current_scene() != prev(current_scene())) && never(in_game_over()) && never(in_scene_transition()) &&
    measured(tally_of(ship_hit_addrs, 12, addr => once(byte(addr) > 0 && prev(byte(addr)) == 0))))
