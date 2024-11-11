// Topple Zip
// #ID = 30808
// #MinimumVersion = 1.3

// $4821: [8-bit] Demo active
//        0x00 = Normal gameplay
//        0xFF = Demo, controls disabled
function demo_active() => byte(0x004821)

// $482D: [8-bit] Current scene number
function current_scene_number() => byte(0x00482D)

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
