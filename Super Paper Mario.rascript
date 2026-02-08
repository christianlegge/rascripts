// Super Paper Mario
// #ID = 187

map_addr = 0x525594

function in_game() => byte(map_addr) != 0

function shop_points() => dword_be(0x511b2c)

function npc_entries() => tbyte_be(0x5283e9)

function stylish_points() => dword_be(0x5118fc)
function stylish_combo() => dword_be(0x511904)

function mario() => byte(0x510490) == 0
function peach() => byte(0x510490) == 1
function bowser() => byte(0x510490) == 2
function luigi() => byte(0x510490) == 3

function player_x() => float_be(0x5104b4)
function player_y() => float_be(0x5104b8)
function player_z() => float_be(0x5104bc)

function cooking_disk_2() => bit5(0x5256d8)
function cooking_disk_3() => bit6(0x5256d8)
function cooking_disk_4() => bit7(0x5256d8)
function cooking_disk_5() => bit0(0x5256df)
function cooking_disk_6() => bit1(0x5256df)
function cooking_disk_7() => bit2(0x5256df)

function score() => dword_be(0x511a40)

function story() => dword_be(0x525690)
current_map = 0x525594

function m(id) => ascii_string_equals(map_addr, id)

function map_flag(num, base) {
    num = num - 1
    bitn = num % 8
    if (num >= 32) {
        base = base + 4
        num = num - 32
    }
    off = 3 - num / 8
    return bit(bitn, base + off)
}

function owned_map_flag(num) => map_flag(num, 0x511d34)
function found_map_flag(num) => map_flag(num, 0x511d3c)

saffron_recipes = [
    bit3(0x511d44),
    bit6(0x511d44),
    bit7(0x511d44),
    bit3(0x511d45),
    bit6(0x511d45),
    bit0(0x511d46),
    bit4(0x511d47),
    bit5(0x511d47),
    bit6(0x511d47),
    bit7(0x511d47),
    bit0(0x511d48),
    bit1(0x511d48),
    bit3(0x511d48),
    bit5(0x511d49),
    bit7(0x511d49),
    bit2(0x511d4a),
    bit3(0x511d4a),
    bit5(0x511d4a),
    bit7(0x511d4a),
    bit0(0x511d4b),
    bit1(0x511d4b),
    bit2(0x511d4b),
    bit7(0x511d4b),
    bit2(0x511d4c),
    bit5(0x511d4c),
    bit6(0x511d4c),
    bit0(0x511d4d),
    bit6(0x511d4d),
    bit1(0x511d4e),
    bit5(0x511d4e),
    bit6(0x511d4e),
    bit7(0x511d4e),
    bit4(0x511d4f),
    bit6(0x511d4f)
]

dyllis_recipes = [
    bit0(0x511d44),
    bit1(0x511d44),
    bit2(0x511d44),
    bit4(0x511d44),
    bit5(0x511d44),
    bit0(0x511d45),
    bit1(0x511d45),
    bit2(0x511d45),
    bit4(0x511d45),
    bit5(0x511d45),
    bit7(0x511d45),
    bit1(0x511d46),
    bit2(0x511d46),
    bit3(0x511d46),
    bit4(0x511d46),
    bit5(0x511d46),
    bit6(0x511d46),
    bit7(0x511d46),
    bit0(0x511d47),
    bit1(0x511d47),
    bit2(0x511d47),
    bit3(0x511d47),
    bit2(0x511d48),
    bit4(0x511d48),
    bit5(0x511d48),
    bit6(0x511d48),
    bit7(0x511d48),
    bit0(0x511d49),
    bit1(0x511d49),
    bit2(0x511d49),
    bit3(0x511d49),
    bit4(0x511d49),
    bit6(0x511d49),
    bit0(0x511d4a),
    bit1(0x511d4a),
    bit4(0x511d4a),
    bit6(0x511d4a),
    bit3(0x511d4b),
    bit4(0x511d4b),
    bit5(0x511d4b),
    bit6(0x511d4b),
    bit0(0x511d4c),
    bit1(0x511d4c),
    bit3(0x511d4c),
    bit4(0x511d4c),
    bit7(0x511d4c),
    bit1(0x511d4d),
    bit2(0x511d4d),
    bit3(0x511d4d),
    bit4(0x511d4d),
    bit5(0x511d4d),
    bit7(0x511d4d),
    bit0(0x511d4e),
    bit2(0x511d4e),
    bit3(0x511d4e),
    bit4(0x511d4e),
    bit0(0x511d4f),
    bit1(0x511d4f),
    bit2(0x511d4f),
    bit3(0x511d4f),
    bit5(0x511d4f),
    bit7(0x511d4f)
]

cards_1_star = [
    bit0(0x511d50),
    bit1(0x511d50),
    bit2(0x511d50),
    bit3(0x511d50),
    bit4(0x511d50),
    bit0(0x511d51),
    bit1(0x511d51),
    bit2(0x511d51),
    bit3(0x511d51),
    bit4(0x511d51),
    bit5(0x511d51),
    bit6(0x511d51),
    bit7(0x511d51),
    bit0(0x511d52),
    bit1(0x511d52),
    bit2(0x511d52),
    bit3(0x511d52),
    bit4(0x511d52),
    bit5(0x511d52),
    bit6(0x511d52),
    bit7(0x511d52),
    bit0(0x511d53),
    bit1(0x511d53),
    bit2(0x511d53),
    bit3(0x511d53),
    bit4(0x511d53),
    bit5(0x511d53),
    bit6(0x511d53),
    bit7(0x511d53),
    bit0(0x511d54),
    bit1(0x511d54),
    bit2(0x511d54),
    bit3(0x511d54),
    bit4(0x511d54),
    bit5(0x511d54),
    bit6(0x511d54),
    bit7(0x511d54),
    bit1(0x511d55),
    bit2(0x511d55),
    bit3(0x511d55),
    bit4(0x511d55),
    bit5(0x511d55),
    bit6(0x511d55),
    bit7(0x511d55),
    bit0(0x511d56),
    bit1(0x511d56),
    bit2(0x511d56),
    bit3(0x511d56),
    bit4(0x511d56),
    bit5(0x511d56),
    bit6(0x511d56),
    bit0(0x511d57),
    bit1(0x511d57),
    bit2(0x511d57),
    bit4(0x511d57),
    bit5(0x511d57),
    bit7(0x511d57),
    bit1(0x511d58),
    bit2(0x511d58),
    bit3(0x511d58),
    bit4(0x511d58),
    bit5(0x511d58),
    bit6(0x511d58),
    bit7(0x511d58),
    bit0(0x511d59),
    bit1(0x511d59),
    bit2(0x511d59),
    bit3(0x511d59),
    bit4(0x511d59),
    bit5(0x511d59),
    bit0(0x511d5a),
    bit1(0x511d5a),
    bit2(0x511d5a),
    bit3(0x511d5a),
    bit4(0x511d5a),
    bit5(0x511d5a),
    bit0(0x511d5b),
    bit1(0x511d5b),
    bit2(0x511d5b),
    bit3(0x511d5b),
    bit4(0x511d5b),
    bit5(0x511d5b),
    bit6(0x511d5b),
    bit7(0x511d5b),
    bit0(0x511d5c),
    bit1(0x511d5c),
    bit2(0x511d5c),
    bit3(0x511d5c),
    bit4(0x511d5c),
    bit6(0x511d5c),
    bit7(0x511d5c),
    bit0(0x511d5d),
    bit1(0x511d5d),
    bit2(0x511d5d),
    bit3(0x511d5d),
    bit4(0x511d5d),
    bit5(0x511d5d),
    bit6(0x511d5d),
    bit7(0x511d5d),
    bit0(0x511d5e),
    bit2(0x511d5e),
    bit3(0x511d5e),
    bit4(0x511d5e),
    bit6(0x511d5e),
    bit7(0x511d5e),
    bit0(0x511d5f),
    bit1(0x511d5f),
    bit2(0x511d5f),
    bit3(0x511d5f),
    bit4(0x511d5f),
    bit5(0x511d5f),
    bit6(0x511d5f),
    bit7(0x511d5f),
    bit0(0x511d60),
    bit2(0x511d60),
    bit3(0x511d60),
    bit4(0x511d60),
    bit5(0x511d60),
    bit6(0x511d60),
    bit7(0x511d60),
    bit1(0x511d61),
    bit2(0x511d61),
    bit3(0x511d61),
    bit5(0x511d61),
    bit6(0x511d61),
    bit7(0x511d61),
    bit0(0x511d62),
    bit1(0x511d62),
    bit2(0x511d62),
    bit3(0x511d62),
    bit4(0x511d62),
    bit5(0x511d62),
    bit6(0x511d62),
    bit7(0x511d62),
    bit0(0x511d63),
    bit1(0x511d63),
    bit2(0x511d63),
    bit3(0x511d63),
    bit4(0x511d63),
    bit5(0x511d63),
    bit6(0x511d63),
    bit7(0x511d63),
    bit0(0x511d67),
    bit4(0x511d67),
    bit5(0x511d67),
    bit6(0x511d67),
    bit7(0x511d67),
    bit5(0x511d68),
    bit0(0x511d6c),
    bit1(0x511d6c),
    bit5(0x511d6c),
    bit3(0x511d6d),
    bit4(0x511d6d),
    bit5(0x511d6d),
    bit6(0x511d6d),
    bit7(0x511d6d)
]

cards_2_star = [
    bit5(0x511d50),
    bit6(0x511d50),
    bit7(0x511d50),
    bit0(0x511d55),
    bit3(0x511d57),
    bit6(0x511d57),
    bit0(0x511d58),
    bit6(0x511d59),
    bit7(0x511d59),
    bit6(0x511d5a),
    bit7(0x511d5a),
    bit5(0x511d5c),
    bit1(0x511d5e),
    bit5(0x511d5e),
    bit1(0x511d60),
    bit0(0x511d61),
    bit4(0x511d61),
    bit0(0x511d64),
    bit1(0x511d64),
    bit2(0x511d64),
    bit3(0x511d64),
    bit7(0x511d64),
    bit5(0x511d65),
    bit6(0x511d65),
    bit7(0x511d65),
    bit0(0x511d66),
    bit1(0x511d66),
    bit2(0x511d66),
    bit3(0x511d66),
    bit4(0x511d66),
    bit5(0x511d66),
    bit6(0x511d66),
    bit7(0x511d66),
    bit1(0x511d67),
    bit2(0x511d67),
    bit3(0x511d67),
    bit6(0x511d68),
    bit7(0x511d68),
    bit0(0x511d6b),
    bit1(0x511d6b),
    bit2(0x511d6c),
    bit3(0x511d6c),
    bit4(0x511d6c),
    bit6(0x511d6c),
    bit7(0x511d6c),
    bit2(0x511d6d),
    bit0(0x511d6e),
    bit1(0x511d6e),
    bit2(0x511d6e),
    bit3(0x511d6e),
    bit4(0x511d6e),
    bit5(0x511d6e),
    bit6(0x511d6e),
    bit0(0x511d6f),
    bit1(0x511d6f),
    bit2(0x511d6f),
    bit3(0x511d6f),
    bit4(0x511d6f),
    bit5(0x511d6f),
    bit7(0x511d6f)
]

cards_flipside_pit = [
    bit1(0x5256c9),
    bit2(0x5256c9),
    bit3(0x5256c9),
    bit4(0x5256c9),
    bit5(0x5256c9),
    bit6(0x5256c9),
    bit7(0x5256c9),
    bit0(0x5256c8),
    bit1(0x5256c8)
]

cards_flopside_pit = [
    bit2(0x5256c8),
    bit3(0x5256c8),
    bit4(0x5256c8),
    bit5(0x5256c8),
    bit6(0x5256c8),
    bit7(0x5256c8),
    bit0(0x5256cf),
    bit1(0x5256cf),
    bit2(0x5256cf)
]

cards_shadoo_reward = [
    bit0(0x511d6d),
    bit1(0x511d6d),
    bit0(0x511d65),
    bit7(0x511d6e),
    bit1(0x511d65),
    bit2(0x511d65),
    bit3(0x511d65),
    bit4(0x511d65)
]

class CharacterOrPixlSlot {
    base = 0

    function obtained(id) {
        return prev(byte(this.base)) == 0 &&
        byte(this.base) == 1 &&
        word_be(this.base + 2) == id
    }
}

character_slots = [
    CharacterOrPixlSlot(0x511adc),
    CharacterOrPixlSlot(0x511ae0),
    CharacterOrPixlSlot(0x511ae4),
    CharacterOrPixlSlot(0x511ae8)
]

pixl_slots = [
    CharacterOrPixlSlot(0x511aec),
    CharacterOrPixlSlot(0x511af0),
    CharacterOrPixlSlot(0x511af4),
    CharacterOrPixlSlot(0x511af8),
    CharacterOrPixlSlot(0x511afc),
    CharacterOrPixlSlot(0x511b00),
    CharacterOrPixlSlot(0x511b04),
    CharacterOrPixlSlot(0x511b08),
    CharacterOrPixlSlot(0x511b0c),
    CharacterOrPixlSlot(0x511b10),
    CharacterOrPixlSlot(0x511b14),
    CharacterOrPixlSlot(0x511b18),
    CharacterOrPixlSlot(0x511b1c),
    CharacterOrPixlSlot(0x511b20),
    CharacterOrPixlSlot(0x511b24),
    CharacterOrPixlSlot(0x511b28)
]

flipside_items = [
    bit7(0x5256d1),
    bit0(0x5256d6),
    bit1(0x5256d6),
    bit2(0x5256d6),
    bit3(0x5256d6),
    bit7(0x5256d6),
    bit4(0x5256df)
]

flopside_items = [
    bit2(0x5256d0),
    bit1(0x5256d4),
    bit1(0x5256d5),
    bit4(0x5256d6),
    bit5(0x5256d6),
    bit5(0x5256df),
    bit6(0x5256df),
    bit7(0x5256df)
]

chapter_1_items = [
    bit3(0x5256dc),
    bit4(0x5256dc),
    bit5(0x5256dc),
    bit6(0x5256dc),
    bit2(0x5256e2),
    bit1(0x5256e3),
    bit2(0x5256e3),
    bit3(0x5256e3),
    bit4(0x5256e3),
    bit5(0x5256e3),
]

chapter_2_items = [
    bit1(0x5256ec),
    bit2(0x5256ec),
    bit3(0x5256ec),
    bit4(0x5256ec),
    bit5(0x5256ec),
    bit7(0x5256ec),
    bit6(0x5256ed),
    bit2(0x5256f3)
]

chapter_3_items = [
    bit1(0x5256f8),
    bit2(0x5256f8),
    bit4(0x5256f8),
    bit4(0x5256f9),
    bit5(0x5256f9),
    bit6(0x5256f9),
    bit7(0x5256f9),
    bit0(0x5256ff)
]

function enemy_test(num, predicate) {
    base_addr = npc_entries()
    return any_of(range(0, num - 1), i => predicate(base_addr + 0x748 * i))
}

function enemy_defeated(num, tribe_id) {
    return enemy_test(num, addr =>
        dword_be(addr + 0x49C) == tribe_id &&
        prev(dword_be(addr + 0x4F0)) > 0 &&
        dword_be(addr + 0x4F0) == 0
    )
}

function bitflag_cheevo(flags, title, description, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = 
            sum_of(flags, flag => prev(flag)) == length(flags) - 1 &&
            measured(sum_of(flags, flag => flag) == length(flags))
    )
}

function story_cheevo(seq, map_id, title, description, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger =
            story() == seq &&
            prev(story()) < seq &&
            ascii_string_equals(current_map, map_id)
   ) 
}

function map_cheevo(maps, title, description, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger =
            all_of(maps, n => owned_map_flag(n) == 1) &&
            measured(sum_of(maps, n => found_map_flag(n)) == length(maps)) &&
            sum_of(maps, n => prev(found_map_flag(n))) == length(maps) - 1
    )
}

function cooking_disk_cheevo(addr, title, description) {
    achievement(
        title = title,
        description = description,
        points = 1,
        trigger =
            addr == 1 && prev(addr) == 0 &&
            __ornext(
                ascii_string_equals(current_map, "mac_04")
                || ascii_string_equals(current_map, "mac_19")
            )
    )
}

bitflag_cheevo(cards_1_star, "Ancestral Recall", "Collect all of the 1-star rarity Catch Cards.", 10)
bitflag_cheevo(cards_2_star, "Black Lotus", "Collect all of the 2-star rarity Catch Cards.", 25)
bitflag_cheevo(saffron_recipes, "Joy of Cooking", "Cook all of the 1-ingredient recipes.", 5)
bitflag_cheevo(dyllis_recipes, "Pépin Mario", "Cook all of the 2-ingredient recipes.", 10)

bitflag_cheevo(flipside_items, "Fleecing the Front", "Obtain all chest items and hidden Catch Cards in Flipside.", 5)
bitflag_cheevo(flopside_items, "Burgling the Back", "Obtain all chest items and hidden Catch Cards in Flopside.", 5)
bitflag_cheevo(chapter_1_items, "Lineland's Loot", "Obtain all chest items and hidden Catch Cards in Chapter 1.", 5)
bitflag_cheevo(chapter_2_items, "Gloam Valley Valuables", "Obtain all chest items and hidden Catch Cards in Chapter 2.", 5)
bitflag_cheevo(chapter_3_items, "The Bitlands' Bounty", "Obtain all chest items and hidden Catch Cards in Chapter 3.", 5)

bitflag_cheevo(cards_flipside_pit, "All the Stars Are Here", "Collect all 9 Catch Cards from the Flipside Pit of 100 Trials.", 10)
bitflag_cheevo(cards_flopside_pit, "Old Friends Hide Hard", "Collect all 9 Catch Cards from the Flopside Pit of 100 Trials.", 25)
bitflag_cheevo(cards_shadoo_reward, "The Gauntlet", "Defeat Shadoo in the Flopside Pit of 100 Trials and obtain all 8 Catch Card rewards.", 25)

story_cheevo(8, "mac_01", "The Dark Prognosticus Unfolds", "Place the first Pure Heart in its Heart Pillar.", 1)

achievement(
    title = "A Helping Hand",
    description = "Recruit Thoreau to the party.",
    points = 2,
    type = "progression",
    trigger = ascii_string_equals(map_addr, "he2_07") && any_of(pixl_slots, slot => slot.obtained(0xdd))
)

achievement(
    title = "No Loitering",
    description = "Destroy a Megabite.",
    points = 3,
    trigger = enemy_defeated(80, 254)
)

story_cheevo(0x22, "he3_04", "Thrown Off", "Defeat O'Chunks in the Yold Desert.", 2)

story_cheevo(0x35, "he4_11", "Colossal Wreck", "Defeat Fracktail and complete Chapter 1.", 2)
story_cheevo(0x3f, "mac_02", "Float On", "Recruit Peach to the party.", 2)

achievement(
    title = "Five Big Booms",
    description = "Recruit Boomer to the party.",
    points = 2,
    type = "progression",
    trigger = m("mi1_07") && any_of(pixl_slots, slot => slot.obtained(0xde))
)

achievement(
    title = "Paper Thin",
    description = "Recruit Slim to the party.",
    points = 2,
    type = "progression",
    trigger = m("mi3_01") && any_of(pixl_slots, slot => slot.obtained(0xdf))
)

story_cheevo(0x57, "mi3_06", "The Easy Way or the Hard Way", "Pay off your 1-million Rubee debt.", 3)

story_cheevo(0x5f, "mi4_14", "Arachnanthropy", "Defeat Mimi in Merlee's Mansion and complete Chapter 2.", 3)

// story_cheevo(0x64, "mac_07", "Man in Green", "Place the third Pure Heart in its Heart Pillar.", 1)

achievement(
    title = "A Common Enemy",
    description = "Recruit Bowser to the party.",
    points = 2,
    type = "progression",
    trigger = m("ta1_04") && any_of(character_slots, slot => slot.obtained(0xda))
)

achievement(
    title = "Weight for Me",
    description = "Recruit Thudley to the party.",
    points = 2,
    type = "progression",
    trigger = m("ta2_04") && any_of(pixl_slots, slot => slot.obtained(0xe0))
)

story_cheevo(0x6e, "ta2_05", "Commotion in the Ocean", "Defeat Big Blooper.", 2)

story_cheevo(0x74, "ta3_03", "Treetop Tussle", "Defeat Dimentio in the Dotwood Tree.", 3)

achievement(
    title = "Magic Cuboid Ride",
    description = "Recruit Carrie to the party.",
    points = 2,
    type = "progression",
    trigger = m("ta4_12") && any_of(pixl_slots, slot => slot.obtained(0xe1))
)

story_cheevo(0x7d, "ta4_13", "Vellum Cerebellum", "Defeat Francis and complete Chapter 3.", 4)

map_cheevo(range(1, 11), "Pointing and Clicking", "Collect the treasures from Maps 1-11.", 10)
map_cheevo(range(12, 24), "In Search of Something", "Collect the treasures from Maps 12-24.", 10)
map_cheevo(range(25, 37), "Invisible Treasures", "Collect the treasures from Maps 25-37.", 10)
map_cheevo(range(38, 48), "Right Under Your Nose", "Collect the treasures from Maps 38-48.", 10)

achievement(
    title = "Quaver Mario",
    description = "Recruit Piccolo to the party.",
    points = 10,
    trigger = any_of(pixl_slots, slot => slot.obtained(0xe5))
)

achievement(
    title = "The Best Defense",
    description = "Recruit Barry to the party.",
    points = 5,
    trigger = ascii_string_equals(map_addr, "ta1_01") && any_of(pixl_slots, slot => slot.obtained(0xe6))
)

achievement(
    title = "Welcome to the Pit",
    description = "Defeat Wracktail in the Pit of 100 Trials and recruit Dashell to the party.",
    points = 25,
    trigger = ascii_string_equals(map_addr, "dan_30") && any_of(pixl_slots, slot => slot.obtained(0xe7))
)

achievement(
    title = "Future-Proofing",
    description = "Purchase Tiptron from Francis.",
    trigger = ascii_string_equals(map_addr, "ta4_13") && prev(story()) == 0x1a7 && story() == 0x1a8,
    points = 10
)

cooking_disk_cheevo(cooking_disk_2(), "Red Velvet", "Upload Cooking Disk R to the Dining Specializer.")
cooking_disk_cheevo(cooking_disk_3(), "White Chocolate", "Upload Cooking Disk W to the Dining Specializer.")
cooking_disk_cheevo(cooking_disk_4(), "Yellow Sponge Cake", "Upload Cooking Disk Y to the Dining Specializer.")
cooking_disk_cheevo(cooking_disk_5(), "Chicken Cordon Bleu", "Upload Cooking Disk B to the Dining Specializer.")
cooking_disk_cheevo(cooking_disk_6(), "Salad Greens", "Upload Cooking Disk G to the Dining Specializer.")
cooking_disk_cheevo(cooking_disk_7(), "Plum Pudding", "Upload Cooking Disk PU to the Dining Specializer.")

achievement(
    title = "No Fun Allowed",
    description = "Attempt the classic 1-up trick with a Koopa and lose points.",
    trigger = in_game() && score() - prev(score()) == -1000,
    points = 1
)

achievement(
    title = "For the Fans",
    description = "Perform a 5-move Stylish combo.",
    trigger = in_game() && stylish_points() == 100 && prev(stylish_points()) == 80 && measured(stylish_combo() == 5) && prev(stylish_combo()) == 4,
    points = 1
)

achievement(
    title = "At the Salon",
    description = "Give Peach a new hairstyle.",
    trigger = peach() && ascii_string_equals(map_addr, "mac_19") && bit3(0x510460) > prev(bit3(0x510460)),
    points = 1
)

achievement(
    title = "They Hate to See Me Coming",
    description = "Find Whacka in Chapter 5-1 and obtain a Whacka Bump.",
    trigger = ascii_string_equals(map_addr, "gn1_01") && any_of(range(0, 9), i =>
        word_be(0x511a88 + i*2) == 0x6a &&
        prev(word_be(0x511a88 + i*2)) != 0x6a 
    ),
    points = 3
)

achievement(
    title = "Bullet Sponge",
    description = "Destroy a Hedron.",
    trigger = ascii_string_equals(map_addr, "sp3_") && score() - prev(score()) == 256,
    points = 3
)

achievement(
    title = "Quarter Muncher",
    description = "Purchase the Amazy Dayzee Catch Card from Flipside Arcade.",
    trigger = ascii_string_equals(map_addr, "mac_30") && bit7(0x511d56) == 1 && ((byte(0x511b63) - prev(byte(0x511b63)) == 1) || (byte(0x511b63) == 0 && prev(byte(0x511b63)) == 255)),
    points = 5
)

achievement(
    title = "Exclusive Member",
    description = "Unlock the Hammer Whacker minigame.",
    trigger = ascii_string_equals(map_addr, "mac_30") && bit3(0x5256d8) > prev(bit3(0x5256d8)) && bit2(0x5256d8) == 1,
    points = 5
)

achievement(
    title = "Put It on My Black Card",
    description = "Earn the Whacka Catch Card via Shop Points.",
    trigger = in_game() && bit6(0x511d6f) == 1 && shop_points() == 0 && prev(shop_points()) == 300,
    points = 5
)

// Leaderboards

leaderboard(
    id = 155750,
    title = "Flipside Pit of 100 Trials Speedrun",
    description = "Complete the non-boss enemy floors of the Flipside Pit as fast as possible.",
    start = 
        ascii_string_equals(map_addr, "mac_05", transform = a => prev(a)) &&
        ascii_string_equals(map_addr, "dan_01"),
    cancel =
        !ascii_string_equals(map_addr, "dan_"),
    submit =
        ascii_string_equals(map_addr, "dan_04", transform = a => prev(a)) &&
        ascii_string_equals(map_addr, "dan_30"),
    value = always_true(),
    format = "FRAMES",
    lower_is_better = true
)

leaderboard(
    id = 155775,
    title = "Flipside Pit of 100 Trials Itemless Speedrun",
    description = "Complete the non-boss enemy floors of the Flipside Pit as fast as possible without using items.",
    start = 
        ascii_string_equals(map_addr, "mac_05", transform = a => prev(a)) &&
        ascii_string_equals(map_addr, "dan_01"),
    cancel =
        !ascii_string_equals(map_addr, "dan_") ||
        any_of(range(0, 9), i =>
            word_be(0x511a88 + i*2) == 0 &&
            prev(word_be(0x511a88 + i*2)) != 0
        ),
    submit =
        ascii_string_equals(map_addr, "dan_04", transform = a => prev(a)) &&
        ascii_string_equals(map_addr, "dan_30"),
    value = always_true(),
    format = "FRAMES",
    lower_is_better = true
)

leaderboard(
    title = "Flopside Pit of 100 Trials Speedrun",
    description = "Complete the non-boss enemy floors of the Flopside Pit as fast as possible.",
    start = 
        ascii_string_equals(map_addr, "mac_15", transform = a => prev(a)) &&
        ascii_string_equals(map_addr, "dan_41"),
    cancel =
        !ascii_string_equals(map_addr, "dan_"),
    submit =
        ascii_string_equals(map_addr, "dan_44", transform = a => prev(a)) &&
        ascii_string_equals(map_addr, "dan_70"),
    value = always_true(),
    format = "FRAMES",
    lower_is_better = true
)

leaderboard(
    title = "Flopside Pit of 100 Trials Itemless Speedrun",
    description = "Complete the non-boss floors of the Flopside Pit as fast as possible without using items.",
    start = 
        ascii_string_equals(map_addr, "mac_15", transform = a => prev(a)) &&
        ascii_string_equals(map_addr, "dan_41"),
    cancel =
        !ascii_string_equals(map_addr, "dan_") ||
        any_of(range(0, 9), i =>
            word_be(0x511a88 + i*2) == 0 &&
            prev(word_be(0x511a88 + i*2)) != 0
        ),
    submit =
        ascii_string_equals(map_addr, "dan_44", transform = a => prev(a)) &&
        ascii_string_equals(map_addr, "dan_70"),
    value = always_true(),
    format = "FRAMES",
    lower_is_better = true
)

// Rich Presence

rp_terse_areas = {
    "he1_": "Lineland Road",
    "he2_": "Mount Lineland",
    "he3_": "Yold Desert",
    "he4_": "Yold Ruins",
    "ls1_": "Castle Bleck",
    "mi1_": "Gloam Valley",
    "mi2_": "Merlee's Mansion",
    "mi3_": "Merlee's Mansion",
    "mi4_": "Merlee's Basement",
    "ta1_": "The Bitlands",
    "ta2_": "The Tile Pool",
    "ta3_": "The Dotwood Tree",
    "ta4_": "Fort Francis",
    "ls4_": "Intro",
    "aa1_": "Mario's House",
    "aa2_": "Bowser's Castle"
}
rp_hub_maps = {
    "mac_01": "Flipside",
    "mac_02": "Flipside",
    "mac_03": "Flipside",
    "mac_04": "Flipside",
    "mac_05": "Flipside",
    "mac_06": "Flipside",
    "mac_07": "Flipside",
    "mac_08": "Flipside",
    "mac_09": "Flipside",
    "mac_11": "Flopside",
    "mac_12": "Flopside",
    "mac_15": "Flopside",
    "mac_16": "Flopside",
    "mac_17": "Flopside",
    "mac_18": "Flopside",
    "mac_19": "Flopside",
    "mac_22": "Flopside",
    "mac_30": "Flopside"
}
rp_pit_maps = {
    "dan_01": "Flipside Pit of 100 Trials",
    "dan_02": "Flipside Pit of 100 Trials",
    "dan_03": "Flipside Pit of 100 Trials",
    "dan_04": "Flipside Pit of 100 Trials",
    "dan_21": "Flipside Pit of 100 Trials",
    "dan_22": "Flipside Pit of 100 Trials",
    "dan_23": "Flipside Pit of 100 Trials",
    "dan_24": "Flipside Pit of 100 Trials",
    "dan_30": "Flipside Pit of 100 Trials",
    "dan_61": "Flopside Pit of 100 Trials",
    "dan_62": "Flopside Pit of 100 Trials",
    "dan_63": "Flopside Pit of 100 Trials",
    "dan_64": "Flopside Pit of 100 Trials",
    "dan_70": "Flopside Pit of 100 Trials",
    "dan_41": "Flopside Pit of 100 Trials",
    "dan_42": "Flopside Pit of 100 Trials",
    "dan_43": "Flopside Pit of 100 Trials",
    "dan_44": "Flopside Pit of 100 Trials"
}

rich_presence_conditional_display(
    ascii_string_equals(0x525594, "dan_"),
    "{0}",
    rich_presence_ascii_string_lookup("PitMap", 0x525594, rp_pit_maps)
)

rich_presence_conditional_display(
    ascii_string_equals(0x525594, "mac_"),
    "{0}",
    rich_presence_ascii_string_lookup("HubMap", 0x525594, rp_hub_maps)
)
    
rich_presence_display(
    "{0}",
    rich_presence_ascii_string_lookup("Map", 0x00525594, rp_terse_areas)
)
