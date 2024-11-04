// The Legend of Zelda: Collector's Edition
// #ID = 2198
// #MinimumVersion = 1.3

// $029B45: [8-bit] Game ID? (Probably not, but it might be good enough)
//          
//          0x21=Game Select
//          0x81=Wind Waker Special Movie/Retrospective
//          0x01=Legend of Zelda
//          0x02=Adventure of Link
//          0x03=Ocarina of Time
//          0x83=Majora's Mask
//          0x08=Wind Waker Demo
function game_id_probably_not_but_it_might_be_good_enough() => byte(0x029B45)
function ww() => byte(0x029b45) == 0x08

// $3C1558: [32-bit BE] -Wind Waker demo- Pointer to dialogue index, NULL when not in dialogue
//          +0x40 = [16-bit BE] Dialogue index
function wind_waker_demo_pointer_to_dialogue_index_null_when_not_in_dialogue() => word_be(0x3C1558)

// $3CB8D2: [16-bit BE] -Wind Waker Demo- Remaining Hearts
function wind_waker_demo_remaining_hearts() => word_be(0x3CB8D2)

// $3CB8D4: [16-bit BE] -Wind Waker Demo- Rupees
function wind_waker_demo_rupees() => word_be(0x3CB8D4)

// $3CB98D: [8-bit] -Wind Waker Demo-
//          
//          bit0=Wind's Requiem Learned
function wind_requiem() => bit0(0x3CB98D)

// $3CBF07: [8-bit] -Wind Waker Demo-
//          
//          bit6=Killer Bees Quest Completed
//          bit7=Killer Bees Quest Started
// function wind_waker_demo() => byte(0x3CBF07)

// $3CBF13: [8-bit] -Wind Waker Demo-
//          
//          bit7=Reward from Ms. Marie
// function wind_waker_demo() => byte(0x3CBF13)

// $3CC048: [Bitfield] Pawprint Isle bitflags (1=collected)
//          Bit2 = Piece of Heart
function pawprint_isle_bitflags_1_collected() => byte(0x3CC048)

// $3CCB60: [8-bit] -Wind Waker Demo- Selected Save Slot
//          
//          0x00=Dungeon/None
//          0x01=Stealth
//          0x02=Island
function wind_waker_demo_selected_save_slot() => byte(0x3CCB60)
function dungeon_file() => byte(0x3ccb60) == 0x00
function stealth_file() => byte(0x3ccb60) == 0x01
function island_file() => byte(0x3ccb60) == 0x02

// $3D4CD0: [8-bit] -Wind Waker demo- Ground state
//          0x00 = In air
//          0xBA = On ground
function wind_waker_demo_ground_state() => byte(0x3D4CD0)
function in_air() => byte(0x3d4cd0) == 0x00
function on_ground() => byte(0x3d4cd0) == 0xba

// $3EB0D4: [Float BE] -Wind Waker demo- Link X position (neg-pos = west-east)
function xpos() => float_be(0x3EB0D4)

// $3EB0D8: [Float BE] -Wind Waker demo- Link Y position (up = higher)
function ypos() => float_be(0x3EB0D8)

// $3EB0DC: [Float BE] -Wind Waker demo- Link Z position (neg-pos = south-north)
function zpos() => float_be(0x3EB0DC)

// $3FDFCC: [32-bit BE] -Wind Waker Demo- Frame Timer
//          
//          Demo ends at 0x10c8c (68748 frames)
function wind_waker_demo_frame_timer() => dword_be(0x3FDFCC)

function stage_id() => byte(0x3cc06c)

function in_map(name) {
    return ascii_string_equals(0x3d0a04, name)
}

function float_range(min, accessor, max) {
    return min <= accessor && accessor <= max
}

function dialogue_index() => word_be(tbyte_be(0x3c1559) + 0x40)
function dialogue_index_equals_single(index) => dialogue_index() == index
function dialogue_equals(index) {
    return once(any_of(index, dialogue_index_equals_single))
}

windfall_dialogue = [
    [12802],
    [12501],
    [11607],
    [7001],
    [7601],
    [13409],
    [11401],
    [11402],
    [11502],
    [11701],
    [11204],
    [11113],
    [11301],
    [10001],
    [11801],
    [7501],
    [12202],
    [12401],
    [12902],
    [13711],
    [13701],
    [12301],
    [8901],
    [10371, 10384],
    [9943, 9917],
    [9944, 9919],
    [9945, 9921],
    [9947, 9923],
    [10801, 10805],
    [7201, 7225],
    [10101, 10129],
    [4301, 4314],
]

// Achievements

achievement(title = "Taking the Scenic Route", description = "[WW] Starting from the Island save file, enter Dragon Roost Cavern.", points = 5,
trigger = ww() && island_file() && prev(stage_id() == 0x0b) && in_map("M_NewD2") && stage_id() == 0x03)

achievement(title = "Prison Break", description = "[WW] Escape the jail in Forsaken Fortress.", points = 1,
trigger = ww() && stealth_file() && in_air() && prev(on_ground()) &&
in_map("majroom") && stage_id() == 0x02 && float_range(2500.0, ypos(), 2525.0) &&
float_range(-3425.0, xpos(), -3400.0) && float_range(7575.0, zpos(), 7600.0))

achievement(title = "Windfall Island Census", description = "[WW] Speak to all the denizens of Windfall Island.", points = 5,
trigger = never(!ww()) && measured(tally(length(windfall_dialogue),
array_map(windfall_dialogue, dialogue_equals))))
