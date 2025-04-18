// Topple Zip
// #ID = 30808

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
collectible_addrs = range(0x42c0, 0x42c0 + 0x20 * 13, 0x20)

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

function in_game() => demo_flag() == 0 && !in_scene_transition() && !in_game_over() && boot_status() == 0xFF
function in_game_or_transition() => demo_flag() == 0 && !in_game_over() && boot_status() == 0xFF

function game_start() => tally(1, prev(boot_status()) == 0 && boot_status() == 0xFF, prev(status_byte()) == 0x10 && status_byte() == 0)
function game_start_lb() => (prev(boot_status()) == 0 && boot_status() == 0xFF) || (prev(status_byte()) == 0x10 && status_byte() == 0)

function goal_trigger() => prior(status_byte() == 0) && in_scene_transition() && prev(current_scene()) < 0x0b && current_scene() == 0x0b
function p_goal_trigger() => prior(status_byte() == 0) && in_scene_transition() && prev(current_scene()) < 0x0a && current_scene() == 0x0a

function gen_reset() => never(demo_active()) && never(status_byte() == 0x10) && never(boot_status() == 0)
function negate_gen_reset() => demo_active() || status_byte() == 0x10 || boot_status() == 0

function item_collected(element, id) => prev(byte(element)) == 2 && byte(element) == 0xFE && byte(element + 2) == id && byte(0x790e) == id 
function item_collected_any(element) => prev(byte(element)) == 2 && byte(element) == 0xFE && byte(element + 2) != 0 && byte(0x790e) == byte(element + 2)

function ship_speed() => byte(0x5d8c)

// Achievements

function pickup_achievement(name, desc, points, accessor, id, type = "") {
    achievement(name, desc, points,
        in_game() && prev(accessor != id) && accessor == id, type = type)
}

pickup_achievement("Up in Smoke", "Equip the Zipping with Smokescreen missiles.", 1, missile_a(), 0x35)
pickup_achievement("Triple Shot", "Equip the Zipping with Diffusion missiles.", 1, missile_a(), 0x33)
pickup_achievement("The Hedgehog", "Equip the Zipping with Barrier bombs.", 1, barrier(), 0x39)
pickup_achievement("You're a Firework", "Equip the Zipping with Miracle missilies.", 1, missile_b(), 0x34)
pickup_achievement("Bomb Has Been Planted", "Equip the Zipping with Timer Bomb missiles.", 1, missile_b(), 0x36)
pickup_achievement("Homer Zipson", "Equip the Zipping with Feint missiles.", 1, missile_b(), 0x37)
pickup_achievement("Give Peace a Chance", "Equip the Zipping with Flower missiles.", 1, missile_b(), 0x38)
pickup_achievement("Finger on the Trigger", "Activate the Zipping's Ranger mode.", 2, ranger(), 0xFF)
pickup_achievement("Harder, Better, Faster...", "Activate the Zipping's Strength mode.", 3, kyouka(), 0xFF)
pickup_achievement("Target Acquired", "Activate the Zipping's radar.", 2, radar(), 0x01)
pickup_achievement("Outer Limits", "Reach scene 6.", 3, current_scene(), 6,"progression")
pickup_achievement("In Another Castle", "Upgrade your capabilities with the P-Radar.", 4, radar(), 0x02, "progression")
pickup_achievement("Infiltrating the Fortress", "Reach scene 9.", 5, current_scene(), 9,"progression")
pickup_achievement("Brains Over Brawn", "Equip the Zipping with Key missiles.", 5, missile_a(), 0x3A,"progression")

achievement("Kitted Out", "Have all three types of missile at once.", 5,
    in_game() && missile_a() != 0 && missile_b() != 0 && barrier() == 0x39)

achievement("Gas Gas Gas", "Equip the Zipping with Mach Bars for a speed boost.", 1,
    in_game() && prev(ship_speed()) < 1 && ship_speed() == 1)

achievement("Quick as a Flash", "Equip the Zipping with Turbo for maximum speed.", 4,
    in_game() && prev(ship_speed()) < 2 && ship_speed() == 2)

achievement("King of the Sky", "Reach the Goal scene and finish the race.", 5,
    no_demo() && goal_trigger(), type = "progression")

achievement("Princess of the Stars", "Reach the Princess scene and foster peace in the galaxy.", 10,
    no_demo() && p_goal_trigger(), type = "win_condition")

achievement("Where We're Going, We Don't Need Maps", "Reach any ending without using the radar.", 25,
    game_start() && trigger_when(goal_trigger() || p_goal_trigger()) && gen_reset() && never(radar() == 0x01))

achievement("A Steady Hand", "Reach any ending without letting the Zipping topple.", 25,
    game_start() && trigger_when(goal_trigger() || p_goal_trigger()) && gen_reset() && never(is_crashing()))

achievement("World Traveller", "Reach any ending after visiting scenes 1-8 in a single game.", 10,
    game_start() && (goal_trigger() || p_goal_trigger()) && gen_reset() && measured(tally_of(range(1,8), 8, num => once(current_scene() == num))))

achievement("Chaff Dodger", "Reach any ending without collecting any negative items.", 10,
    game_start() && trigger_when(goal_trigger() || p_goal_trigger()) && gen_reset() &&
    never(any_of(collectible_addrs, addr => item_collected(addr, 0x44))) &&
    never(any_of(collectible_addrs, addr => item_collected(addr, 0x45))))

achievement("Sector Clear", "Shoot or stun every type of enemy ship in a single scene.", 10, 
    never(demo_active()) && never(current_scene() != prev(current_scene())) && never(in_game_over()) && never(in_scene_transition()) &&
    measured(tally_of(ship_hit_addrs, 12, addr => once(byte(addr) > 0 && prev(byte(addr)) == 0))))

// Leaderboards

leaderboard("Reach the Goal (RTA)", "Fastest time to reach the Goal scene.",
    start = game_start_lb(),
    cancel = __ornext(negate_gen_reset() || p_goal_trigger()),
    submit = goal_trigger(),
    value = measured(always_true()),
    format = "FRAMES", lower_is_better = true)

leaderboard("World Traveller (RTA)", "Fastest time to reach any ending after visiting scenes 1-8 in a single game.",
    start = game_start_lb(),
    cancel = __ornext(negate_gen_reset()) || (goal_trigger() || p_goal_trigger()) && tally(1, [
    repeated(8, always_true()),
    deduct(once(current_scene() == 1)),
    deduct(once(current_scene() == 2)),
    deduct(once(current_scene() == 3)),
    deduct(once(current_scene() == 4)),
    deduct(once(current_scene() == 5)),
    deduct(once(current_scene() == 6)),
    deduct(once(current_scene() == 7)),
    deduct(once(current_scene() == 8))
    ]),
    submit = (goal_trigger() || p_goal_trigger()) && tally_of(range(1,8), 8, num => once(current_scene() == num)),
    value = measured(always_true()),
    format = "FRAMES", lower_is_better = true)

leaderboard("Princess of the Stars (RTA)", "Fastest time to reach the princess.",
    start = game_start_lb(),
    cancel = __ornext(negate_gen_reset() || goal_trigger()),
    submit = p_goal_trigger(),
    value = measured(always_true()),
    format = "FRAMES", lower_is_better = true)

leaderboard("Road Rage", "Shoot or stun the most ships before reaching the Goal scene.",
    start = game_start_lb(),
    cancel = __ornext(negate_gen_reset() || p_goal_trigger()),
    submit = goal_trigger(),
    value = measured(tally_of(ship_hit_addrs, 0, addr => byte(addr) > 0 && prev(byte(addr)) == 0)),
    format = "VALUE")

leaderboard("Mini Zipping vs. The World", "Shoot or stun the most ships without picking up any items.",
    start = game_start_lb(),
    cancel = __ornext(negate_gen_reset()),
    submit = goal_trigger() || p_goal_trigger() || any_of(collectible_addrs, addr => item_collected_any(addr)),
    value = measured(tally_of(ship_hit_addrs, 0, addr => byte(addr) > 0 && prev(byte(addr)) == 0)),
    format = "VALUE")

// Rich Presence

missile_dict = {
    0x33: "Diffusion",
    0x34: "Miracle",
    0x35: "Smokescreen",
    0x36: "Timer Bomb",
    0x37: "Feint",
    0x38: "Flower",
    0x39: "Barrier",
    0x3A: "Key"
}

rp_scene = rich_presence_value("Scene", current_scene())
rp_radar = rich_presence_lookup("Radar", radar(), {
    0x00: "✗",
    0x01: "✓",
    0x02: "P"
})
rp_missile_a = rich_presence_lookup("MissileA", missile_a(), missile_dict, "Normal")
rp_missile_b = rich_presence_lookup("MissileB", missile_b(), missile_dict, "None")
rp_speed = rich_presence_lookup("Speed", ship_speed(), { 0: "1", 1: "2", 2: "3" }, "1")

rich_presence_conditional_display(in_game_or_transition(), "Flying the Zipping through scene {0} | MissileA:{1} | MissileB:{2} | Radar:{3} | Speed:{4}", rp_scene, rp_missile_a, rp_missile_b, rp_radar, rp_speed)
rich_presence_conditional_display(no_demo() && current_scene() == 0x0b, "Enjoying a sweet victory over the Zipping's competition")
rich_presence_conditional_display(no_demo() && current_scene() == 0x0a, "Fostering peace in the galaxy with the princess")
rich_presence_conditional_display(demo_active(), "Viewing a training montage")
rich_presence_display("Playing Topple Zip")
