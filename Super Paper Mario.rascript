// Super Paper Mario
// #ID = 187

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

function story() => dword_be(0x525690)
current_map = 0x525594

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

class CharacterOrPixlSlot {
    base = 0

    function obtained(id) {
        return prev(byte(this.base)) == 0 &&
        byte(this.base) == 1 &&
        word(this.base + 2) == id
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

function bitflag_cheevo(flags, title, description, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = 
            measured(sum_of(flags, flag => prev(flag)) == length(flags))
    )
}

function story_cheevo(seq, map_id, title, description, points) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger =
            story() == seq &&
            prev(story) < seq &&
            ascii_string_equals(current_map, map_id)
   ) 
}

bitflag_cheevo(cards_1_star, "Ancestral Recall", "Collect all of the 1-star rarity Catch Cards.", 10)
bitflag_cheevo(cards_2_star, "Black Lotus", "Collect all of the 2-star rarity Catch Cards.", 25)
bitflag_cheevo(saffron_recipes, "Saffron Placeholder", "Cook all of the 1-ingredient recipes.", 5)
bitflag_cheevo(dyllis_recipes, "Dyllis Placeholder", "Cook all of the 2-ingredient recipes.", 10)

achievement(
    title = "A Helping Hand",
    description = "Recruit Thoreau to the party.",
    points = 2,
    type = "progression",
    trigger = any_of(pixl_slots, slot => slot.obtained(0xdd))
)

achievement(
    title = "Float On",
    description = "Recruit Peach to the party.",
    points = 2,
    type = "progression",
    trigger = any_of(character_slots, slot => slot.obtained(0xd9))
)

achievement(
    title = "A Helping Hand",
    description = "Recruit Boomer to the party.",
    points = 2,
    type = "progression",
    trigger = any_of(pixl_slots, slot => slot.obtained(0xde))
)

achievement(
    title = "A Helping Hand",
    description = "Recruit Slim to the party.",
    points = 2,
    type = "progression",
    trigger = any_of(pixl_slots, slot => slot.obtained(0xdf))
)

achievement(
    title = "A Helping Hand",
    description = "Recruit Bowser to the party.",
    points = 2,
    type = "progression",
    trigger = any_of(character_slots, slot => slot.obtained(0xda))
)

achievement(
    title = "A Helping Hand",
    description = "Recruit Thudley to the party.",
    points = 2,
    type = "progression",
    trigger = any_of(pixl_slots, slot => slot.obtained(0xe0))
)

achievement(
    title = "A Helping Hand",
    description = "Recruit Carrie to the party.",
    points = 2,
    type = "progression",
    trigger = any_of(pixl_slots, slot => slot.obtained(0xe1))
)
