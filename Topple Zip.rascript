// Topple Zip
// #ID = 30808
// #MinimumVersion = 1.3

// $4821: [8-bit] Demo active
//        0x00 = Normal gameplay
//        0xFF = Demo, controls disabled
function demo_flag() => byte(0x004821)
function demo_active() => demo_flag() == 0xFF
function no_demo() => demo_flag() == 0x00

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

function is_crashing() => byte(0x951e) == 1

function missile_a() => byte(0x64fe)
function barrier() => byte(0x64ff)
function missile_b() => byte(0x6500)
function ranger() => byte(0x64fc)
function kyouka() => byte(0x64fd)
function radar() => byte(0x5d8d)

function status_byte() => byte(0x4822)
function in_scene_transition() => bit0(0x4822) == 1
function in_game_over() => bit4(0x4822) == 1

function boot_status() => byte(0x482a)

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

function in_game() => demo_flag() == 0 && !in_scene_transition() && !in_game_over()

function game_start() => tally(1, prev(boot_status()) == 0 && boot_status() == 0xFF, prev(status_byte()) == 0x10 && status_byte() == 0)

function goal_trigger() => prior(status_byte() == 0) && status_byte() == 0x11 && prev(current_scene()) < 0x0b && current_scene() == 0x0b

function gen_reset() => never(demo_active()) && never(status_byte() == 0x10)

// Achievements

function pickup_achievement(name, desc, points, accessor, id) {
    achievement(name, desc, points,
        in_game() && prev(accessor != id) && accessor == id)
}

pickup_achievement("Smokescreen placeholder", "Equip the Zipping with Smokescreen missiles.", 1, missile_a(), 0x35)
pickup_achievement("You're a Firework", "Equip the Zipping with Miracle missilies.", 1, missile_b(), 0x34)
pickup_achievement("Bomb Has Been Planted", "Equip the Zipping with Timer Bomb missiles.", 1, missile_b(), 0x36)
pickup_achievement("Homer Zipson", "Equip the Zipping with Feint missiles.", 1, missile_b(), 0x37)
pickup_achievement("Smokescreen placeholder", "Equip the Zipping with Flower missiles.", 1, missile_b(), 0x38)
pickup_achievement("Triple Shot", "Equip the Zipping with Diffusion missiles.", 1, missile_a(), 0x33)
pickup_achievement("The Hedgehog", "Equip the Zipping with Barrier bombs.", 1, barrier(), 0x39)
pickup_achievement("Finger on the Trigger", "Activate the Zipping's Ranger mode.", 2, ranger(), 0xFF)
pickup_achievement("Harder, Better, Faster", "Activate the Zipping's Strength mode.", 3, kyouka(), 0xFF)
pickup_achievement("Target Acquired", "Activate the Zipping's radar.", 2, radar(), 0x01)

achievement("Goal placeholder", "Reach the Goal scene and see the ending.", 5,
    no_demo() && goal_trigger())

achievement("Where We're Going, We Don't Need Maps", "Reach the Goal scene without using the radar.", 10,
    game_start() && trigger_when(goal_trigger()) && gen_reset() && never(radar() == 0x01))

achievement("A Steady Hand", "Reach the Goal scene without letting the Zipping topple.", 25,
    game_start() && trigger_when(goal_trigger()) && gen_reset() && never(is_crashing()))

achievement("Sector Clear", "Shoot or stun every type of enemy ship in a single scene.", 10, 
    never(demo_active()) && never(current_scene() != prev(current_scene())) && never(in_game_over()) && never(in_scene_transition()) &&
    measured(tally_of(ship_hit_addrs, 12, addr => once(byte(addr) > 0 && prev(byte(addr)) == 0))))
