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

function boss_dead() => bit3(0x3cc069) == 1

function sea_sector_x() => byte(0x3fd635)
function sea_sector_y() => byte(0x3fd636)

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
function frame_timer() => dword_be(0x3FDFCC)

function stage_id() => byte(0x3cc06c)

function owns_sail() => bit0(0x3cb922) == 1
function owns_waker() => bit0(0x3cb923) == 1
function owns_hook() => bit0(0x3cb924) == 1
function owns_tuner() => bit0(0x3cb928) == 1
function owns_picto_box() => bit0(0x3cb929) == 1
function owns_deluxe_picto_box() => bit1(0x3cb929) == 1
function treasure_chart_23() => bit5(0x3cb9a6) == 1
function note_to_mom() => bit0(0x3cbf1b) == 1

function in_map(name) {
    return ascii_string_equals(0x3d0a04, name)
}

function float_range(min, accessor, max) {
    return min <= accessor && accessor <= max
}

function equals1(accessor) => accessor() == 1

drc_chests = [
    bit2(0x3cc04a),
    bit3(0x3cc04a),
    bit4(0x3cc04a),
    bit5(0x3cc04a),
    bit6(0x3cc04a),
    bit0(0x3cc04b),
    bit1(0x3cc04b),
    bit2(0x3cc04b),
    bit3(0x3cc04b),
    bit4(0x3cc04b),
    bit6(0x3cc04b),
    bit7(0x3cc04b)
]

function dialogue_index() => word_be(tbyte_be(0x3c1559) + 0x40)
function dialogue_index_equals_single(index) => dialogue_index() == index
function dialogue_equals(index) {
    return once(any_of(index, dialogue_index_equals_single))
}

function cutscene_id() => word_be(0x3d0b80)

function picto_quest() => byte(0x3cbfb8)

function sword_id() => byte(0x3cb8de)

function pig_timer() => word_be(0x3d1492)

function in_barrel() => byte(0x3d149d) == 0x09 && byte(0x3d149f) == 0x09
function ff_thrown_in_jail() => bit2(0x3cbef8) == 1

function ffrupee1() => bit0(0x3cc05f)
function ffrupee2() => bit1(0x3cc05f)

function spotlight1() => bit2(0x3cc04e)
function spotlight2() => bit3(0x3cc04e)
function spotlight3() => bit4(0x3cc04e)

function max_hearts() => word_be(0x3cb8d0)

function riding_ship() => bit0(0x3d1599) == 1

function killerbees_found() => bit6(0x3cbf07)

function ff_map() => bit0(0x3cc04b)
function ff_rupee() => bit1(0x3cc04b)
function ff_compass() => bit2(0x3cc04b)
function ff_heart() => bit3(0x3cc04b)

function pawprint_platform_chest() => bit5(0x3cbc77)

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

achievement(title = "Clearing Out the Cavern", description = "[WW] Open all the chests in Dragon Roost Cavern", points = 25,
trigger = ww() && stage_id() == 0x03 && sum_of(drc_chests, x => prev(x)) == length(drc_chests) - 1 &&
measured(sum_of(drc_chests, x => x) == length(drc_chests), when = ww() && stage_id() == 0x03), id = 482744)

achievement(title = "Can I Get a Lift?", description = "[WW] Escape the Forsaken Fortress and meet the King of Red Lions", points = 10,
trigger = ww() && prev(cutscene_id()) == 0x003f && cutscene_id() == 0x00ad && stage_id() == 0x00, id = 482743)

achievement(title = "Tough Love", description = "[WW] Collect 4 Pieces of Heart to earn a new Heart Container", points = 25,
trigger = ww() && prev(max_hearts() == 0x0f) && max_hearts() == 0x10, id = 482739)

achievement(title = "I Can See My House From Here", description = "[WW] Open the chest on the lookout platform near Pawprint Isle", points = 2,
trigger = ww() && stage_id() == 0x00 && prev(pawprint_platform_chest()) == 0 && pawprint_platform_chest() == 1, id = 482740)

achievement(title = "Amateur Photographer", description = "[WW] Find the Picto Box", points = 2,
trigger = ww() && stage_id() == 0x0b && prev(!owns_picto_box()) && owns_picto_box(), id = 482745)

achievement(title = "Squid-Hunt Expert", description = "[WW] Win Treasure Chart #23 from Salvatore", points = 5,
trigger = ww() && stage_id() == 0x0b && prev(!treasure_chart_23()) && treasure_chart_23(), id = 482746)

achievement(title = "The Latest Buzz", description = "[WW] Learn a rumor from the Little Tipsters", points = 2,
trigger = ww() && stage_id() == 0x00 && prev(dialogue_index()) != 13717 && dialogue_index() == 13717, id = 482737)

achievement(title = "Link the Paparazzo", description = "[WW] Complete your work as Lenzo's assistant", points = 10,
trigger = ww() && stage_id() == 0x0b && prev(picto_quest()) == 5 && picto_quest() == 6, id = 482738)

achievement(title = "Get Me Out of Here", description = "[WW] Purchase the Sail", points = 10,
trigger = ww() && stage_id() == 0x00 && sea_sector_x() == 0x00 && sea_sector_y() == 0xfe && prev(!owns_sail()) && owns_sail(), id = 482742)

achievement(title = "The Heist", description = "[WW] Sneak into the bomb shop and upset Cannon", points = 2,
trigger = ww() && stage_id() == 0x0b && prev(dialogue_index()) != 10129 && dialogue_index() == 10129, id = 482752)

achievement(title = "I'm With the Band", description = "[WW] Obtain the Wind Waker from the King of Red Lions", points = 3,
trigger = ww() && stage_id() == 0x00 && sea_sector_x() == 0x02 && sea_sector_y() == 0xfe && prev(!owns_waker()) && owns_waker(), id = 482741)

achievement(title = "Hide and Seek", description = "[WW] Find all the Killer Bees on Windfall Island", points = 5,
trigger = ww() && stage_id() == 0x00 && prev(killerbees_found()) == 0 && killerbees_found() == 1, id = 482751)

achievement(title = "Teacher's Pet", description = "[WW] Bring a Joy Pendant to Ms. Marie for a reward.", points = 3,
trigger = ww() && stage_id() == 0x0b && prev(dialogue_index()) == 0 && dialogue_index() == 10042, id = 482750)

achievement(title = "Fortress Forager", description = "[WW] Open all the chests in the Forsaken Fortress", points = 5,
trigger = ww() && stage_id() == 0x02 && prev(ff_map() + ff_rupee() + ff_compass() + ff_heart()) == 3 &&
measured(ff_map() + ff_rupee() + ff_compass() + ff_heart() == 4, when = ww() && stage_id() == 0x02), id = 482736)

// achievement(title = "Can't Let You Do That", description = "[WW] Try to sail beyond your limits", points = 1,
// trigger = ww() && riding_ship() && prev(dialogue_index()) != 1545 && dialogue_index() == 1545, id = 0)

achievement(title = "Out of the Limelight", description = "[WW] Disable all the spotlights in Forsaken Fortress", points = 5,
trigger = ww() && stage_id() == 0x02 && measured(spotlight1() + spotlight2() + spotlight3() == 3, when = ww() && stage_id() == 0x02), id = 482731)

achievement(title = "Boy You're Poor!", description = "[WW] Get thrown out of the auction house", points = 1,
trigger = never(!ww()) && once(in_map("Orichh") && dialogue_index() == 7216) && prev(stage_id() == 0x0b) && stage_id() == 0x00 && never(prev(stage_id() == 0x00)), id = 482749)

achievement(title = "Rupees Before Swine", description = "[WW] Help find Dampa's pig for a reward", points = 3,
trigger = ww() && stage_id() == 0x00 && dialogue_index() == 12938, id = 482729)

achievement(title = "Taking the Scenic Route II", description = "[WW] Starting from the Island save file, enter Dragon Roost Cavern", points = 10,
trigger = ww() && island_file() && prev(stage_id() == 0x0b) && in_map("M_NewD2") && stage_id() == 0x03, id = 482730)

achievement(title = "Taking the Scenic Route I", description = "[WW] Starting from the Stealth save file, reach Dragon Roost Island", points = 25,
trigger = ww() && stealth_file() && stage_id() == 0x00 && sea_sector_x() == 0x02 && prev(cutscene_id()) == 0xffff && cutscene_id() == 0x0097, id = 482733)

achievement(title = "Prison Break", description = "[WW] Escape the jail in Forsaken Fortress", points = 1,
trigger = ww() && in_air() && prev(on_ground()) &&
in_map("majroom") && stage_id() == 0x02 && float_range(2500.0, ypos(), 2525.0) &&
float_range(-3425.0, xpos(), -3400.0) && float_range(7575.0, zpos(), 7600.0), id = 482728)

achievement(title = "I Really Would, But I Gotta Run", description = "[WW] Promise to deliver the Note to Mom for Baito", points = 5,
trigger = ww() && stage_id() == 0x0b && prev(!note_to_mom()) && note_to_mom(), id = 482747)

achievement(title = "Census Taker", description = "[WW] Speak to all the denizens of Windfall Island", points = 5,
trigger = never(!ww()) && measured(tally(length(windfall_dialogue),
array_map(windfall_dialogue, dialogue_equals)), when = ww()), id = 482748)

achievement(title = "Cash Grab", description = "[WW] Collect both red Rupees in the Forsaken Fortress main entrance", points = 2,
trigger = ww() && stage_id() == 0x02 && prev(ffrupee1()) + prev(ffrupee2()) == 1 && ffrupee1() + ffrupee2() == 2, id = 482735)

achievement(title = "Express Exterminator", description = "[WW] Defeat Gohma in Dragon Roost Cavern", points = 25,
trigger = ww() && stage_id() == 0x03 && prev(!boss_dead()) && boss_dead(), id = 482732)

achievement(title = "The Shadow", description = "[WW] Recover your sword from the Forsaken Fortress without getting thrown in jail or hiding in a barrel", points = 10,
trigger = never(!ww()) && once(prev(!stealth_file()) && stealth_file()) && trigger_when(prev(sword_id() == 0xff) && sword_id() == 0x38) &&
never(ff_thrown_in_jail()) && never(in_barrel()), id = 482734)

// Void cheevos
//
for i in range(482764, 482786) {
    achievement(title = "[VOID]", description = "[VOID]", points = 0, trigger = always_false(), id = i)
}

// Leaderboards

leaderboard(title = "[WW] Get Rich Quick", description = "Have the most Rupees at the end of the Wind Waker demo",
start = prev(ww()) && !ww(),
cancel = always_false(),
submit = always_true(),
value = wind_waker_demo_rupees(),
format = "VALUE")

leaderboard(title = "[WW] Porcine Procurer (IGT)", description = "Find Dampa's pig on Windfall Island with the most time remaining",
start = ww() && stage_id() == 0x00 && dialogue_index() == 12935,
cancel = always_false(),
submit = always_true(),
value = pig_timer() * 2,
format = "FRAMES")

leaderboard(title = "[WW] Swift Sword Salvage", description = "Recover your sword from the Forsaken Forest the fastest from starting the demo",
start = ww() && stage_id() == 0x02 && prev(sword_id() == 0xff) && sword_id() == 0x38,
cancel = always_false(),
submit = always_true(),
value = frame_timer(),
format = "FRAMES", lower_is_better = true)

leaderboard(title = "[WW] Speedy Spider Squash", description = "Defeat Gohma the fastest from starting the demo",
start = ww() && stage_id() == 0x03 && prev(!boss_dead()) && boss_dead(),
cancel = always_false(),
submit = always_true(),
value = frame_timer(),
format = "FRAMES", lower_is_better = true)

leaderboard(title = "[WW] Flash Photography", description = "Complete Lenzo's Picto Box quest the fastest from starting the demo",
start = ww() && stage_id() == 0x0b && prev(picto_quest()) == 5 && picto_quest() == 6,
cancel = always_false(),
submit = always_true(),
value = frame_timer(),
format = "FRAMES", lower_is_better = true)
