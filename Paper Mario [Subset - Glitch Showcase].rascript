// Paper Mario [Subset - Glitch Showcase]
// #MinimumVersion = 1.3
// #ID = 33114

debug = false

regions = [ "US", "JP", "EU" ]

region_check = {
    "US": ascii_string_equals(0x77bd0, " grP", 4),
    "JP": ascii_string_equals(0x77ba0, " grP", 4),
    "EU": ascii_string_equals(0x73f70, " grP", 4)
}

in_game = {
    "US": word(0xa094a) == 1,
    "JP": word(0x9e75a) == 1,
    "EU": word(0x9f0aa) == 1
}

sprite_instances = {
    "US": 0x2dfa48,
    "JP": 0x113598,
    "EU": 0x2e5d3c
}

world_triggers = {
    "US": 0x159190,
    "JP": 0x15e110,
    "EU": 0x157d60
}

battle_state = {
    "US": byte(0xdc070 - 8),
    "JP": byte(0xdc050 - 8),
    "EU": byte(0xd87e0 - 8)
}

battle_status = {
    "US": byte(0xdc070),
    "JP": byte(0xdc050),
    "EU": byte(0xd87e0)
}

can_flee_battle = {
    "US": bit5(0xdc070 + 0x4),
    "JP": bit5(0xdc050 + 0x4),
    "EU": bit5(0xd87e0 + 0x4)
}

battle_player_actor = {
    "US": tbyte(0xdc070 + 0xd8),
    "JP": tbyte(0xdc050 + 0xd8),
    "EU": tbyte(0xd87e0 + 0xd8)
}

move_argument = {
    "US": word(0xdc070 + 0x178),
    "JP": word(0xdc050 + 0x178),
    "EU": word(0xd87e0 + 0x178)
}

selected_move_category = {
    "US": byte(0xdc070 + 0x17b),
    "JP": byte(0xdc050 + 0x17b),
    "EU": byte(0xd87e0 + 0x17b)
}

selected_move_id = {
    "US": word(0xdc070 + 0x17e),
    "JP": word(0xdc050 + 0x17e),
    "EU": word(0xd87e0 + 0x17e)
}

enemy_actors_start = {
    "US": 0xdc070 + 0xe0,
    "JP": 0xdc050 + 0xe0,
    "EU": 0xd87e0 + 0xe0
}

changing_map = {
    "US": bit4(0x10f080 - 0xb2),
    "JP": bit4(0x10f240 - 0xb2),
    "EU": bit4(0x10db80 - 0xb2)
}

player_animation = {
    "US": byte(0x10f080),
    "JP": byte(0x10f240),
    "EU": byte(0x10db80)
}

time_freeze = {
    "US": dword(0x9a5d8),
    "JP": dword(0x9a5b8),
    "EU": dword(0x969ac)
}

picking_up_item = {
    "US": word(0x1565a6),
    "JP": word(0x15b526),
    "EU": word(0x155166)
}

game_status = {
    "US": tbyte(0x7419c),
    "JP": tbyte(0x7417c),
    "EU": tbyte(0x714ac)
}

shop_addr = {
    "US": tbyte(game_status["US"] + 0x144),
    "JP": tbyte(game_status["JP"] + 0x144),
    "EU": tbyte(game_status["EU"] + 0x144)
}

is_peach = {
    "US": bit0(game_status["US"] + 0x7d),
    "JP": bit0(game_status["JP"] + 0x7d),
    "EU": bit0(game_status["EU"] + 0x7d)
}

first_enemy_type = {
    "US": byte(tbyte(0xdc070 + 0xe0) + 0x135),
    "JP": byte(tbyte(0xdc050 + 0xe0) + 0x135),
    "EU": byte(tbyte(0xd87e0 + 0xe0) + 0x135)
}

function enemy_type(n, region) {
    if (region == "US") {
        return byte(tbyte(enemy_actors_start["US"] + n*4) + 0x135)
    } else if (region == "JP") {
        return byte(tbyte(enemy_actors_start["JP"] + n*4) + 0x135)
    } else if (region == "EU") {
        return byte(tbyte(enemy_actors_start["EU"] + n*4) + 0x135)
    }
}

function enemy_prev_current_hp(n, region) {
    if (region == "US") {
        return prev(byte(tbyte(enemy_actors_start["US"] + n*4) + 0x1bb))
    } else if (region == "JP") {
        return prev(byte(tbyte(enemy_actors_start["JP"] + n*4) + 0x1bb))
    } else if (region == "EU") {
        return prev(byte(tbyte(enemy_actors_start["EU"] + n*4) + 0x1bb))
    }
}


function enemy_current_hp(n, region) {
    if (region == "US") {
        return byte(tbyte(enemy_actors_start["US"] + n*4) + 0x1bb)
    } else if (region == "JP") {
        return byte(tbyte(enemy_actors_start["JP"] + n*4) + 0x1bb)
    } else if (region == "EU") {
        return byte(tbyte(enemy_actors_start["EU"] + n*4) + 0x1bb)
    }
}

world_npcs = {
    "US": 0xa0990,
    "JP": 0x9e7a0,
    "EU": 0x9f100
}

max_star_power = {
    "US": byte(0x10f51d),
    "JP": byte(0x10f6dd),
    "EU": byte(0x10e01d)
}

mario_x_pos = {
    "US": float(0x740bc),
    "JP": float(0x10f1b0),
    "EU": float(0x713cc)
}

mario_y_pos = {
    "US": float(0x740c0),
    "JP": float(0x10f1b4),
    "EU": float(0x713d0)
}

mario_z_pos = {
    "US": float(0x740c4),
    "JP": float(0x10f1b8),
    "EU": float(0x713d4)
}

current_partner = {
    "US": byte(0x10f2a1),
    "JP": byte(0x10f461),
    "EU": byte(0x10dda1)
}

acting_partner = {
    "US": byte(0x10ebb0),
    "JP": byte(0x10ed70),
    "EU": byte(0x10d6b0)
}

partner_action_state = {
    "US": byte(0x10ebb3),
    "JP": byte(0x10ed73),
    "EU": byte(0x10d6b3)
}

area_id = {
    "US": word(tbyte(0x7419c) + 0x8a),
    "JP": word(tbyte(0x7417c) + 0x8a),
    "EU": word(tbyte(0x714ac) + 0x8a)
}

entry_id = {
    "US": word(tbyte(0x7419c) + 0x8c),
    "JP": word(tbyte(0x7417c) + 0x8c),
    "EU": word(tbyte(0x714ac) + 0x8c)
}

map_id = {
    "US": word(tbyte(0x7419c) + 0x8e),
    "JP": word(tbyte(0x7417c) + 0x8e),
    "EU": word(tbyte(0x714ac) + 0x8e)
}

story_progress = {
    "US": byte(0xdbd73),
    "JP": byte(0xdbd53),
    "EU": byte(0xd84e3)
}

jump_byte = {
    "US": byte(0x10efc8),
    "JP": byte(0x10f188),
    "EU": byte(0x10dac8)
}

jump_ascent = {
    "US": bit1(0x10efc8),
    "JP": bit1(0x10f188),
    "EU": bit1(0x10dac8)
}

air_falling = {
    "US": bit2(0x10efc8),
    "JP": bit2(0x10f188),
    "EU": bit2(0x10dac8)
}

max_hp = {
    "US": byte(0x10f290),
    "JP": byte(0x10f450),
    "EU": byte(0x10dd90)
}

max_fp = {
    "US": byte(0x10f295),
    "JP": byte(0x10f455),
    "EU": byte(0x10dd95)
}

max_bp = {
    "US": byte(0x10f29b),
    "JP": byte(0x10f45b),
    "EU": byte(0x10dd9b)
}

current_hp = {
    "US": byte(0x10f291),
    "JP": byte(0x10f451),
    "EU": byte(0x10dd91)
}

current_fp = {
    "US": byte(0x10f296),
    "JP": byte(0x10f456),
    "EU": byte(0x10dd96)
}

mario_level = {
    "US": byte(0x10f29a),
    "JP": byte(0x10f45a),
    "EU": byte(0x10dd9a)
}

current_hammer = {
    "US": byte(0x10f292),
    "JP": byte(0x10f452),
    "EU": byte(0x10dd92)
}

current_boots = {
    "US": byte(0x10f293),
    "JP": byte(0x10f453),
    "EU": byte(0x10dd93)
}

coins = {
    "US": word(0x10f29e),
    "JP": word(0x10f45e),
    "EU": word(0x10dd9e)
}


has_goombario = {
    "US": byte(0x10f290 + 0x1f),
    "JP": byte(0x10f450 + 0x1f),
    "EU": byte(0x10dd90 + 0x1f)
}


has_kooper = {
    "US": byte(0x10f290 + 0x27),
    "JP": byte(0x10f450 + 0x27),
    "EU": byte(0x10dd90 + 0x27)
}

has_bombette = {
    "US": byte(0x10f290 + 0x2f),
    "JP": byte(0x10f450 + 0x2f),
    "EU": byte(0x10dd90 + 0x2f)
}

has_parakarry = {
    "US": byte(0x10f290 + 0x37),
    "JP": byte(0x10f450 + 0x37),
    "EU": byte(0x10dd90 + 0x37)
}

has_bow = {
    "US": byte(0x10f290 + 0x5f),
    "JP": byte(0x10f450 + 0x5f),
    "EU": byte(0x10dd90 + 0x5f)
}

has_watt = {
    "US": byte(0x10f290 + 0x47),
    "JP": byte(0x10f450 + 0x47),
    "EU": byte(0x10dd90 + 0x47)
}

has_sushie = {
    "US": byte(0x10f290 + 0x4f),
    "JP": byte(0x10f450 + 0x4f),
    "EU": byte(0x10dd90 + 0x4f)
}

has_laki = {
    "US": byte(0x10f290 + 0x57),
    "JP": byte(0x10f450 + 0x57),
    "EU": byte(0x10dd90 + 0x57)
}

item_inv = {
    "US": (0x10f290 + 0x1b4),
    "JP": (0x10f450 + 0x1b4),
    "EU": (0x10dd90 + 0x1b4)
}

function key_item_slot(region, i) {
    if (i % 2 == 0) {
        i = i + 1
    }
    else {
        i = i - 1
    }
    if (region == "US") {
        return word(0x10f290 + 0x74 + i*2)
    } else if (region == "JP") {
        return word(0x10f450 + 0x74 + i*2)
    } else if (region == "EU") {
        return word(0x10dd90 + 0x74 + i*2)
    }
}

function prev_key_item_slot(region, i) {
    if (i % 2 == 0) {
        i = i + 1
    }
    else {
        i = i - 1
    }
    if (region == "US") {
        return prev(word(0x10f290 + 0x74 + i*2))
    } else if (region == "JP") {
        return prev(word(0x10f450 + 0x74 + i*2))
    } else if (region == "EU") {
        return prev(word(0x10dd90 + 0x74 + i*2))
    }
}

function prev_item_slot(region, i) {
    if (i % 2 == 0) {
        i = i + 1
    }
    else {
        i = i - 1
    }
    if (region == "US") {
        return prev(word(0x10f290 + 0x1b4 + i*2))
    } else if (region == "JP") {
        return prev(word(0x10f450 + 0x1b4 + i*2))
    } else if (region == "EU") {
        return prev(word(0x10dd90 + 0x1b4 + i*2))
    }
}

function item_slot(region, i) {
    if (i % 2 == 0) {
        i = i + 1
    }
    else {
        i = i - 1
    }
    if (region == "US") {
        return word(0x10f290 + 0x1b4 + i*2)
    } else if (region == "JP") {
        return word(0x10f450 + 0x1b4 + i*2)
    } else if (region == "EU") {
        return word(0x10dd90 + 0x1b4 + i*2)
    }
}

badge_inv = {
    "US": (0x10f290 + 0xb4),
    "JP": (0x10f450 + 0xb4),
    "EU": (0x10dd90 + 0xb4)
}

function prev_badge_slot(region, i) {
    if (region == "US") {
        return prev(word(0x10f290 + 0xb4 + i*2))
    } else if (region == "JP") {
        return prev(word(0x10f450 + 0xb4 + i*2))
    } else if (region == "EU") {
        return prev(word(0x10dd90 + 0xb4 + i*2))
    }
}

function badge_slot(region, i) {
    if (region == "US") {
        return word(0x10f290 + 0xb4 + i*2)
    } else if (region == "JP") {
        return word(0x10f450 + 0xb4 + i*2)
    } else if (region == "EU") {
        return word(0x10dd90 + 0xb4 + i*2)
    }
}

function equipped_badge(r, id) {
    return __ornext(any_of(range(0, 63), i => word(badge_inv[r] + 340 + i*2) == id))
}

area_id_values = {
    0x00: "Goomba Village",
    0x01: "Toad Town",
    0x02: "Toad Town Tunnels",
    0x03: "Inside the Whale",
    0x04: "Peach's Castle",
    0x05: "Shooting Star Summit",
    0x06: "Koopa Village",
    0x07: "Koopa Bros. Fortress",
    0x08: "Mt. Rugged",
    0x09: "Dry Dry Outpost",
    0x0A: "Dry Dry Desert",
    0x0B: "Dry Dry Ruins",
    0x0C: "Forever Forest",
    0x0D: "Bow's Mansion",
    0x0E: "Gusty Gulch",
    0x0F: "Tubba Blubba's Castle",
    0x10: "Shy Guy's Toy Box",
    0x11: "Jade Jungle",
    0x12: "Mt. Lavalava",
    0x13: "Flower Fields",
    0x14: "Shiver City",
    0x15: "Crystal Palace",
    0x16: "Bowser's Castle",
    0x17: "Peach's Castle cutscenes",
    0x18: "Credits",
    0x19: "Mini Game House",
    0x1A: "Game Over screen",
    0x1B: "Debug rooms"
}

partner_values = {
    0x00: "is",
    0x01: "and Goombario are",
    0x02: "and Kooper are",
    0x03: "and Bombette are",
    0x04: "and Parakarry are",
    0x05: "and Goompa are",
    0x06: "and Watt are",
    0x07: "and Sushie are",
    0x08: "and Lakilester are",
    0x09: "and Bow are",
    0x0A: "and Goombaria are",
    0x0B: "and Twink are"
}

prologue_repel_gel = {
    "US": bit4(0xdbc76),
    "JP": bit4(0xdbc56),
    "EU": bit4(0xd83e6)
}

prologue_stone_block = {
    "US": bit6(0xdbc76),
    "JP": bit6(0xdbc56),
    "EU": bit6(0xd83e6)
}

mt_rugged_seed = {
    "US": bit4(0xdbcc9),
    "JP": bit4(0xdbca9),
    "EU": bit4(0xd8439)
}

buzzar_defeated = {
    "US": bit4(0xdbcc8),
    "JP": bit4(0xdbca8),
    "EU": bit4(0xd8438)
}

function map_flag(bit_index) {
    byte_index = bit_index / 8
    bit_in_byte = bit_index % 8
    if (bit_in_byte == 0) {
        return {
            "US": bit0(0x2dbc70 + byte_index),
            "JP": bit0(0x2dbc70 + byte_index),
            "EU": bit0(0x2e1f50 + byte_index)
        }
    } else if (bit_in_byte == 1) {
        return {
            "US": bit1(0x2dbc70 + byte_index),
            "JP": bit1(0x2dbc70 + byte_index),
            "EU": bit1(0x2e1f50 + byte_index)
        }
    } else if (bit_in_byte == 2) {
        return {
            "US": bit2(0x2dbc70 + byte_index),
            "JP": bit2(0x2dbc70 + byte_index),
            "EU": bit2(0x2e1f50 + byte_index)
        }
    } else if (bit_in_byte == 3) {
        return {
            "US": bit3(0x2dbc70 + byte_index),
            "JP": bit3(0x2dbc70 + byte_index),
            "EU": bit3(0x2e1f50 + byte_index)
        }
    } else if (bit_in_byte == 4) {
        return {
            "US": bit4(0x2dbc70 + byte_index),
            "JP": bit4(0x2dbc70 + byte_index),
            "EU": bit4(0x2e1f50 + byte_index)
        }
    } else if (bit_in_byte == 5) {
        return {
            "US": bit5(0x2dbc70 + byte_index),
            "JP": bit5(0x2dbc70 + byte_index),
            "EU": bit5(0x2e1f50 + byte_index)
        }
    } else if (bit_in_byte == 6) {
        return {
            "US": bit6(0x2dbc70 + byte_index),
            "JP": bit6(0x2dbc70 + byte_index),
            "EU": bit6(0x2e1f50 + byte_index)
        }
    } else if (bit_in_byte == 7) {
        return {
            "US": bit7(0x2dbc70 + byte_index),
            "JP": bit7(0x2dbc70 + byte_index),
            "EU": bit7(0x2e1f50 + byte_index)
        }
    }
}

function map_var(idx) {
    return {
        "US": dword(0x2dbca8 + idx),
        "JP": dword(0x2dbca8 + idx),
        "EU": dword(0x2e1f88 + idx)
    }
}

function game_flag(bit_index) {
    byte_index = bit_index / 8
    bit_in_byte = bit_index % 8
    if (bit_in_byte == 0) {
        return {
            "US": bit0(0xdbc70 + byte_index),
            "JP": bit0(0xdbc50 + byte_index),
            "EU": bit0(0xd83e0 + byte_index)
        }
    } else if (bit_in_byte == 1) {
        return {
            "US": bit1(0xdbc70 + byte_index),
            "JP": bit1(0xdbc50 + byte_index),
            "EU": bit1(0xd83e0 + byte_index)
        }
    } else if (bit_in_byte == 2) {
        return {
            "US": bit2(0xdbc70 + byte_index),
            "JP": bit2(0xdbc50 + byte_index),
            "EU": bit2(0xd83e0 + byte_index)
        }
    } else if (bit_in_byte == 3) {
        return {
            "US": bit3(0xdbc70 + byte_index),
            "JP": bit3(0xdbc50 + byte_index),
            "EU": bit3(0xd83e0 + byte_index)
        }
    } else if (bit_in_byte == 4) {
        return {
            "US": bit4(0xdbc70 + byte_index),
            "JP": bit4(0xdbc50 + byte_index),
            "EU": bit4(0xd83e0 + byte_index)
        }
    } else if (bit_in_byte == 5) {
        return {
            "US": bit5(0xdbc70 + byte_index),
            "JP": bit5(0xdbc50 + byte_index),
            "EU": bit5(0xd83e0 + byte_index)
        }
    } else if (bit_in_byte == 6) {
        return {
            "US": bit6(0xdbc70 + byte_index),
            "JP": bit6(0xdbc50 + byte_index),
            "EU": bit6(0xd83e0 + byte_index)
        }
    } else if (bit_in_byte == 7) {
        return {
            "US": bit7(0xdbc70 + byte_index),
            "JP": bit7(0xdbc50 + byte_index),
            "EU": bit7(0xd83e0 + byte_index)
        }
    }
}

playground_starpiece = game_flag(0x04a)
toadtown_starpiece = game_flag(0x12d)
bluehouse_unlock = game_flag(0x83)
toytrain = game_flag(0x121)
sewer_ch5_blooper = game_flag(0x1af)
sewer_ch5_pipe = game_flag(0x78e)
ultraboots_chest = game_flag(0x1a7)
ultraboots_block = game_flag(0x18e)
fpplus_bombwall = game_flag(0x241)
fpplus_koopa_chest = game_flag(0x282)
smash_charge = game_flag(0x27e)
koopa_fortress_key1 = game_flag(0x285)
koopa_fortress_key2 = game_flag(0x288)
koopa_fortress_key3_bombwall = game_flag(0x291)
koopa_fortress_key3 = game_flag(0x287)
koopa_fortress_door1 = game_flag(0x28A)
koopa_fortress_door2 = game_flag(0x28D)
koopa_fortress_door3 = game_flag(0x28C)
koopa_fortress_door4 = game_flag(0x28B)
artifact_obtained = game_flag(0x374)
ruins_key4 = game_flag(0x377)
ruins_door1 = game_flag(0x366)
ruins_door2 = game_flag(0x369)
ruins_door3 = game_flag(0x36d)
ruins_door4 = game_flag(0x378)
artifact_block = game_flag(0x37F)
slow_go_chest = game_flag(0x385)
super_hammer_chest = game_flag(0x384)
super_hammer_block = game_flag(0x380)
bubulb_seed3 = game_flag(0x3A2)
record_chest = game_flag(0x3D2)
spike_room_chest = game_flag(0x421)
yakkey_chest = game_flag(0x42f)
anti_guy_defeated = game_flag(0x451)
anti_guy_chest = game_flag(0x49F)
dictionary_chest = game_flag(0x47B)
toybox_blue_switch = game_flag(0x44D)
toybox_red_barricade = game_flag(0x459)
dizzy_stomp_chest = game_flag(0x52c)
ultra_hammer_chest = game_flag(0x523)
happyflower_tree = game_flag(0x566)
yellow_plant_fed = game_flag(0x554)
bubble_plant_fed = game_flag(0x584)
sun_tower_rock = game_flag(0x579)
warehouse_key = game_flag(0x5BA)
warehouse_unlocked = game_flag(0x5BB)
bowserjail_bombwall = game_flag(0x616)
shutofflava = game_flag(0x614)
floodroom_bombwall = game_flag(0x631)
floodroom_passage = game_flag(0x636)
peachcastle_mettoad = game_flag(0x1f9)
finalbowser = game_flag(0x1fd)

mf0 = map_flag(0)
mf1 = map_flag(1)
mf10 = map_flag(10)
mf13 = map_flag(13)

mv0 = map_var(0)

ch1_started = game_flag(0x1)
ch2_started = game_flag(0x2)
ch3_started = game_flag(0x3)
ch4_started = game_flag(0x4)
ch5_started = game_flag(0x5)
ch6_started = game_flag(0x6)
ch7_started = game_flag(0x7)
ch8_started = game_flag(0x8)

ch1_beatkoopabros = game_flag(0x297)
ch2_beattutankoopa = game_flag(0x386)
ch3_mysticalkey = game_flag(0x42F)
ch4_bombedwall = game_flag(0x459)
ch5_intruderalert2 = game_flag(0x51E)
ch6_placedbean = game_flag(0x55C)
ch7_palacekeyused = game_flag(0x5F0)

function unsigned_lt(a, b) {
    if (b >= 0x80) {
        return a >= 0x80 && a < b
    } else {
        return __ornext(a >= 0x80 || a < b)
    }
}

function unsigned_gt(a, b) {
    if (b >= 0x80) {
        return __ornext(a < 0x80 || a > b)
    } else {
        return a < 0x80 && a > b
    }
}

function encode_area_map(r) {
    return area_id[r] * 256 + map_id[r]
}

function check_npc(list, num, cmp) {
    return any_of(range(0, num), idx => cmp(tbyte(list + 4*idx)))
}

function all_inv_slots(r, cmp) {
    return all_of(range(0, 9), idx => cmp(word(item_inv[r] + 2*idx)))
}

function lzs(story, area, map, cutscene_map, exit_map) {
    return any_of(regions, r =>
        region_check[r] && trigger_when(prior(story_progress[r] == story) && story_progress[r] == story+1) &&
        __ornext(prev(story_progress[r] == story) || prev(area_id[r] == 0)) &&
        __ornext(map_id[r] == exit_map || map_id[r] == map) && area_id[r] == area &&
        trigger_when(prev(area_id[r] == 0)) && prev(map_id[r] == cutscene_map) && trigger_when(map_id[r] == exit_map)
    )
}

function rac(story, area, map, yes_flags, no_flags) {
    return any_of(regions, r =>
        region_check[r] && prev(area_id[r] == area) && prev(map_id[r] == map) &&
        prev(story_progress[r] == story) && story_progress[r] == story+1 &&
        all_of(yes_flags, flag => flag[r] == 1) &&
        all_of(no_flags, flag => flag[r] == 0) 
    )
}

// Achievements
// Prologue

achievement("Cream Cheese", "Obtain the Repel Gel in Prologue without breaking the stone block.", points = 2,
    trigger = any_of(regions, r => 
        region_check[r] && prologue_stone_block[r] == 0 && prologue_repel_gel[r] > prev(prologue_repel_gel[r]) && map_id[r] == 0x02 && area_id[r] == 0x00
    )
)

achievement("Beating a Dead Horse", "After defeating Goomba King, fight him again.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 0x00 && map_id[r] == 0x09 &&
        trigger_when(first_enemy_type[r] == 146 && battle_state[r] != 0) && prev(first_enemy_type[r] != 146) &&
        unsigned_gt(story_progress[r], 0x8f)
    )
)

achievement("Grab and Go", "Obtain the Hammer and exit the Playground without fighting Jr. Troopa.", points = 25, 
    trigger = any_of(regions, r => 
        region_check[r] && __ornext(map_id[r] == 0x03 || map_id[r] == 0x02) && area_id[r] == 0 &&
        story_progress[r] == 0x88 && trigger_when(prev(current_hammer[r]) == 0xff && current_hammer[r] == 0x00) &&
        trigger_when(map_id[r] == 0x02)
    )
)

achievement("Once More, from the Top", "[US/JP] After completing the Prologue, fight Jr. Troopa in the playground again.", points = 25, 
    trigger = any_of(regions, r => 
        region_check[r] && map_id[r] == 0x03 && area_id[r] == 0 &&
        trigger_when(story_progress[r] == 0x8a) && unsigned_gt(prev(story_progress[r]), 0x98)
    )
)

achievement("Hey Old Man, Check This Out!", "In Prologue and with Goompa as your partner, obtain the Star Piece on the ledge without walking to the right of the tree.", points = 10,
    trigger = any_of(regions, r => 
        region_check[r] && once(prev(map_id[r] == 0x02) && map_id[r] == 0x04) &&
        never(region_check[r] && current_partner[r] != 5) &&
        never(region_check[r] && area_id[r] != 0) && never(region_check[r] && map_id[r] != 4) &&
        never(region_check[r] && mario_x_pos[r] >= 600.0 && mario_x_pos[r] < 700.0) &&
        prev(playground_starpiece[r] == 0) && trigger_when(playground_starpiece[r] == 1)
    )
)

achievement("No Hard Hat Required", "Reach the southern area of Toad Town beyond the logs before clearing them.", points = 5,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 0x01 && trigger_when(entry_id[r] == 0x02) && __ornext(map_id[r] == 0x02 || map_id[r] == 0x03) && trigger_when(map_id[r] == 0x03) && unsigned_lt(story_progress[r], 0xb4) && trigger_when(mario_x_pos[r] > 80 && prev(air_falling[r] == 1) && air_falling[r] == 0)
    )
)

achievement("Breaking and Entering", "After entering from another Toad Town screen, go down the pipe in the blue house without unlocking the door or riding Lakilester.", points = 10,
    trigger = any_of(regions, r => 
        region_check[r] &&
        once(area_id[r] == 0x01 && prev(map_id[r] != 0x03) && map_id[r] == 0x03) &&
        never(region_check[r] && entry_id[r] > 3) &&
        never(bluehouse_unlock[r] == 1) &&
        never(region_check[r] && area_id[r] == 1 && map_id[r] != 3) &&
        never(region_check[r] && area_id[r] != 1 && area_id[r] != 2) &&
        never(region_check[r] && partner_action_state[r] == 0x01 && acting_partner[r] == 0x08) &&
        trigger_when(area_id[r] == 2 && map_id[r] == 12)
    )
)

achievement("The Great Train Robbery", "Obtain the Toy Train without turning in the Storeroom Key, then exit the area.", points = 4,
    trigger = any_of(regions, r => 
        region_check[r] && 
        once(unsigned_lt(story_progress[r], 0xf9) && prev(toytrain[r] == 0) && toytrain[r] == 1) &&
        never(region_check[r] && area_id[r] != 1) &&
        prev(map_id[r] == 5) && __ornext(map_id[r] == 6 || map_id[r] == 3) &&
        never(region_check[r] && map_id[r] != 5 && map_id[r] != 6 && map_id[r] != 3)
    )
)

achievement("Whalebreak", "After Jr. Troopa has been defeated near the whale and while he is still in the area, enter the whale's mouth again.", points = 10,
    trigger = any_of(regions, r => 
        region_check[r] && once(area_id[r] == 1 && prev(map_id[r] != 0x06) && map_id[r] == 0x06) &&
        unsigned_gt(prev(story_progress[r]), 0x9) && 
        never(region_check[r] && mario_y_pos[r] <= -50.0) &&
        never(region_check[r] && area_id[r] != 1 && area_id[r] != 3) &&
        never(region_check[r] && area_id[r] == 1 && map_id[r] != 6) &&
        story_progress[r] == 9
    )
)

achievement("Bountiful Harvest", "Obtain a second Magical Seed from the Forever Forest Bub-ulb.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 12 && map_id[r] == 3 &&
        tally_of(range(0, 31), 2, idx => 
            once(key_item_slot(r, idx) == 0x002d)
        ) &&
        never(region_check[r] && area_id[r] != 12) &&
        never(region_check[r] && map_id[r] != 3) &&
        bubulb_seed3[r] == 1 && prev(bubulb_seed3[r] == 0)
    )
)

achievement("Back to the Belly", "After Fuzzipede has been defeated and without Jr. Troopa in the area, enter the whale's mouth again without using Bombette.", points = 25,
    trigger = any_of(regions, r => 
        region_check[r] && once(area_id[r] == 1 && prev(map_id[r] == 0x05) && map_id[r] == 0x06) &&
        unsigned_gt(prev(story_progress[r]), 0x9) && 
        never(region_check[r] && acting_partner[r] == 0x03 && partner_action_state[r] == 0x01) &&
        never(region_check[r] && area_id[r] != 1 && area_id[r] != 3) &&
        never(region_check[r] && area_id[r] == 1 && map_id[r] != 6) &&
        trigger_when(story_progress[r] == 9)
    )
)

achievement("Hop the Fence", "Collect the Star Piece in Toad Town's gate district without riding Sushie.", points = 4,
    trigger = any_of(regions, r => 
        region_check[r] && once(area_id[r] == 1 && prev(map_id[r] != 1) && map_id[r] == 0x01) &&
        in_game[r] &&
        never(region_check[r] && partner_action_state[r] == 0x01 && acting_partner[r] == 0x07) &&
        never(region_check[r] && area_id[r] != 1) &&
        never(region_check[r] && map_id[r] != 1) &&
        never(region_check[r] && prev(toadtown_starpiece[r] == 1)) &&
        trigger_when(toadtown_starpiece[r] == 1)
    )
)

achievement("Save the Animals", "After entering from the left side of the room, activate and enter the Chapter 5 warp pipe in Toad Town Tunnels without fighting the Blooper.", points = 10,
    trigger = any_of(regions, r => 
        region_check[r] &&
        once(area_id[r] == 2 && prev(map_id[r] != 0x07) && map_id[r] == 0x07 && sewer_ch5_pipe[r] == 0) &&
        never(region_check[r] && entry_id[r] != 2 && entry_id[r] != 0 && entry_id[r] != 3) &&
        never(region_check[r] && sewer_ch5_blooper[r] == 1) &&
        never(region_check[r] && area_id[r] != 2 && area_id[r] != 17) &&
        never(region_check[r] && area_id[r] == 2 && map_id[r] != 7) &&
        never(region_check[r] && area_id[r] == 17 && map_id[r] != 3) &&
        trigger_when(sewer_ch5_pipe[r] == 1 && area_id[r] == 17 && map_id[r] == 0x03)
    )
)

achievement("Clippy Boots", "Open the Ultra Boots chest without breaking the Ultra Hammer block to get into the room.", points = 10,
    trigger = any_of(regions, r => 
        region_check[r] &&
        area_id[r] == 2 && __ornext(map_id[r] == 21 || map_id[r] == 20) &&
        ultraboots_block[r] == 0 && has_laki[r] == 1 &&
        prev(ultraboots_chest[r] == 0) && trigger_when(ultraboots_chest[r] == 1)
    )
)

// Chapter 1

achievement("I Wonder Who Those Fellas Are... Well, See Ya", "Begin Chapter 1 without speaking to Merlon while the black Toads are blocking the path.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] && prev(area_id[r]) == 0x1 && prev(map_id[r]) == 0x2 && trigger_when(area_id[r] == 0x0 && map_id[r] == 13) && unsigned_lt(story_progress[r], 0x9c)
    )
)

achievement("A Pleasant Crawl", "On the second screen of Pleasant Path, cross from the left entrance to the right exit without jumping or using Parakarry.", points = 5,
    trigger = any_of(regions, r => 
        region_check[r] && once(prev(map_id[r] == 0x4) && map_id[r] == 0x5) &&
        never(region_check[r] && area_id[r] != 6) &&
        never(region_check[r] && map_id[r] != 5 && map_id[r] != 6) &&
        never(region_check[r] && jump_ascent[r] == 1) &&
        never(region_check[r] && partner_action_state[r] == 0x01 && acting_partner[r] == 0x04) &&
        trigger_when(map_id[r] == 0x6)
    )
)

achievement("When You Can't Go Over, Go Under", "In Pleasant Path, on the screen to the right of Koopa Village, cross the river and exit the screen without hitting the blue switch and without riding Lakilester.", points = 50,
    trigger = any_of(regions, r => 
        region_check[r] && once(prev(map_id[r] == 0x6) && map_id[r] == 0x7) &&
        never(region_check[r] && area_id[r] != 6) &&
        never(region_check[r] && map_id[r] != 7 && map_id[r] != 8) &&
        never(region_check[r] && partner_action_state[r] == 0x01 && acting_partner[r] == 0x08) &&
        unsigned_lt(story_progress[r], 0xa5) &&
        trigger_when(map_id[r] == 0x8)
    )
)

// NEED TO ADD ALWAYS_FALSE CLAUSE TO RESET ALTS
achievement("The Emperor's New Bridge", "In Pleasant Path, on the screen to the right of Koopa Village, cross the river and exit the screen without hitting the blue switch and without using LZS.", points = 5,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 6 && prev(map_id[r] == 7) && entry_id[r] == 0 &&
        unsigned_lt(story_progress[r], 0xa5) &&
        trigger_when(map_id[r] == 0x8) &&
        trigger_when(repeated(4, mario_x_pos[r] >= -200.0 && mario_x_pos[r] <= 0.0 &&
            jump_ascent[r] == 0 && prev(jump_ascent[r] == 0) &&
            air_falling[r] == 0 && prev(air_falling[r] == 0) &&
            never(prev(map_id[r]) != 7) && never(mario_x_pos[r] <= -250.0)
        ))
    ) ||
    any_of(regions, r => 
        disable_when(repeated(4, region_check[r] && jump_ascent[r] == 0 && prev(jump_ascent[r] == 0) &&
            air_falling[r] == 0 && prev(air_falling[r] == 0)
        ),
        until = prev(map_id[r]) != 7 || mario_x_pos[r] <= -250.0) &&
        never(region_check[r] && jump_ascent[r] == 1)
    )
)

achievement("Express Elevator", "Reach the Koopa Bros. Fortress battlements without unlocking any of its doors.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 7 && prev(map_id[r] == 0x1) && entry_id[r] == 0 &&
        unsigned_lt(story_progress[r], 0xb0) &&
        koopa_fortress_door1[r] == 0 && koopa_fortress_door2[r] == 0 && koopa_fortress_door3[r] == 0 && koopa_fortress_door4[r] == 0 &&
        trigger_when(map_id[r] == 0x9)
    )
)

achievement("Theft Is Okay, but I Draw the Line at Vandalism", "Obtain the FP Plus above Koopa Bros. Fortress without blowing up the wall to reach the pipe.", points = 10,
    trigger = any_of(regions, r => 
        region_check[r] &&
        __ornext(encode_area_map(r) == 0x0700 || encode_area_map(r) == 0x0608) &&
        fpplus_bombwall[r] == 0 && prev(fpplus_koopa_chest[r] == 0) && 
        trigger_when(fpplus_koopa_chest[r] == 1)
    )
)

achievement("Out on Good Behavior", "In Koopa Bros. Fortress, recruit Bombette before obtaining the second Fortress Key.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 7 && __ornext(map_id[r] == 0x4 || map_id[r] == 0x5 || map_id[r] == 0x6) &&
        koopa_fortress_key1[r] == 1 && koopa_fortress_key2[r] == 0 && koopa_fortress_door2[r] == 0 &&
        prev(has_bombette[r] == 0) && trigger_when(has_bombette[r] == 1)
    )
)

achievement("Around the Outside", "Cross the top of the room with 3 jail cells while only hitting the red switch once.", points = 2,
    trigger = any_of(regions, r => 
        region_check[r] && once(prev(map_id[r] == 4) && map_id[r] == 3 && entry_id[r] == 3) &&
        never(region_check[r] && area_id[r] != 7) &&
        never(region_check[r] && map_id[r] != 2 && map_id[r] != 3) &&
        never(region_check[r] && map_id[r] == 2 && entry_id[r] != 3) &&
        never(repeated(2, region_check[r] && mv0[r] != prev(mv0[r]))) &&
        trigger_when(prev(map_id[r] == 0x3) && map_id[r] == 0x2 && entry_id[r] == 3)
    )
)

achievement("Reach Up and Touch Something", "[US/JP] Obtain the Smash Charge badge in Koopa Bros. Fortress from the platform below.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] &&
        never(region_check[r] && has_kooper[r] == 0) &&
        never(region_check[r] && area_id[r] != 7) &&
        never(region_check[r] && map_id[r] != 1) &&
        never(region_check[r] && prev(smash_charge[r] == 1)) &&
        once(mario_y_pos[r] >= 399.0 && mario_y_pos[r] < 401.0 && mario_x_pos[r] < -100.0) &&
        never(region_check[r] && mario_x_pos[r] > 100.0 && mario_y_pos[r] > 450.0) &&
        prev(smash_charge[r] == 0) && trigger_when(smash_charge[r] == 1)
    )
)

achievement("Prison Break-In", "Obtain the Fortress Key in the rightmost cell in the room with the red switches without blowing up the wall, then exit the area.", points = 5,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 7 && prev(map_id[r]) == 3 &&
        has_laki[r] == 1 &&
        trigger_when(__ornext(map_id[r] == 0x2 || map_id[r] == 0x4)) &&
        koopa_fortress_key3_bombwall[r] == 0 && trigger_when(koopa_fortress_key3[r] == 1)
    )
)

// Chapter 2

achievement("Taking Root", "Obtain the Magical Seed from the Bub-ulb in Mt. Rugged without using Parakarry.", points = 25,
    trigger = any_of(regions, r => 
        region_check[r] && never(region_check[r] && area_id[r] != 8) && never(region_check[r] && map_id[r] != 2) && once(prev(map_id[r]) != 2 && map_id[r] == 2) && never(region_check[r] && acting_partner[r] == 0x04 && partner_action_state[r] == 0x01) && trigger_when(mt_rugged_seed[r] == 1) && prev(mt_rugged_seed[r]) == 0
    )
)

achievement("Mystic Ruins", "Enter Dry Dry Ruins before placing the Pulse Stone.", points = 2,
    trigger = any_of(regions, r => 
        region_check[r] && trigger_when(area_id[r] == 11 && map_id[r] == 0x00) &&
        __ornext(has_laki[r] == 1 || current_boots[r] == 0x02) &&
        prev(area_id[r] == 10) && prev(map_id[r] == 0x02) &&
        unsigned_lt(story_progress[r], 0xc2)
    )
)

achievement("Archaeological Dig", "After completing Chapter 2, obtain the Ruins Key under the sand to the right of the statue room.", points = 5,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 11 && __ornext(map_id[r] == 11 || map_id[r] == 15) &&
        unsigned_gt(story_progress[r], 0xc5) && has_laki[r] == 1 && current_hammer[r] >= 0x01 &&
        prev(ruins_key4[r] == 0) && trigger_when(ruins_key4[r] == 1)
    )
)

achievement("Maybe He Doesn't See Us", "Cross Buzzar's bridge and enter Dry Dry Desert without alerting him.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && once(area_id[r] == 8 && prev(map_id[r] == 2) && map_id[r] == 4) && 
        buzzar_defeated[r] == 0 && trigger_when(area_id[r] == 10 && map_id[r] == 49) &&
        never(region_check[r] && area_id[r] == 8 && map_id[r] != 4) && never(region_check[r] && area_id[r] != 8 && area_id[r] != 10) &&
        check_npc(world_npcs[r], 12, addr => never(byte(addr + 0xa7) == 1 && bit0(addr + 2) > prev(bit0(addr + 2))))
    )
)

achievement("Mario, Use Rock Climb", "On the third screen of Mt. Rugged, enter from the lower left entrance and exit on the upper left.", points = 1,
    trigger = any_of(regions, r =>
        region_check[r] && prev(entry_id[r]) == 0 && prev(map_id[r] == 1) && area_id[r] == 8 &&
        trigger_when(map_id[r] == 3)
    )
)

achievement("Mario Auditore", "On the east screen of Dry Dry Outpost, enter the rooftop house without entering through the rightmost door.", points = 2,
    trigger = any_of(regions, r =>
        region_check[r] && never(region_check[r] && mario_x_pos[r] >= 225.0 && mario_z_pos[r] <= -63.0) && 
        never(region_check[r] && area_id[r] != 9) && never(region_check[r] && map_id[r] != 1) && once(prev(map_id[r] == 0) && map_id[r] == 1) &&
        trigger_when(mario_y_pos[r] == 140.0 && prev(mario_z_pos[r]) >= -180.0 && mario_z_pos[r] <= -180.0 && mario_x_pos[r] >= -430.0 && mario_x_pos[r] <= -350.0)
    )
)

achievement("Maybe It's Booby Trapped", "Obtain the Artifact in Dry Dry Ruins without hitting the switch or breaking the block.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && never(region_check[r] && mf0[r] != prev(mf0[r])) && 
        prev(artifact_obtained[r] == 0) && artifact_block[r] == 0 &&
        once(region_check[r] && area_id[r] == 11 && map_id[r] == 6 && prev(map_id[r] != 6)) &&
        never(region_check[r] && area_id[r] != 11) && never(region_check[r] && map_id[r] != 6) &&
        trigger_when(artifact_obtained[r] == 1)
    )
)

achievement("Best Not to Disturb Them", "Obtain the Super Hammer without breaking the block and without pressing any of the staircase switches.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 7) && map_id[r] == 8) &&
        prev(super_hammer_chest[r] == 0) && trigger_when(super_hammer_chest[r] == 1) &&
        never(region_check[r] && mf0[r] != prev(mf0[r])) &&
        never(region_check[r] && mf1[r] != prev(mf1[r])) &&
        never(super_hammer_block[r] == 1) &&
        never(region_check[r] && map_id[r] != 8) && never(region_check[r] && area_id[r] != 11)
    )
)


achievement("Chest Hop", "Obtain Slow Go without pressing any of the staircase switches.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 7) && map_id[r] == 8) &&
        prev(slow_go_chest[r] == 0) && trigger_when(slow_go_chest[r] == 1) &&
        never(region_check[r] && mf0[r] != prev(mf0[r])) &&
        never(region_check[r] && mf1[r] != prev(mf1[r])) &&
        never(region_check[r] && map_id[r] != 8) && never(region_check[r] && area_id[r] != 11)
    )
)

achievement("Ruined Key", "Reach the room beyond the any of the locked doors in Dry Dry Ruins without unlocking that door.", points = 5,
    trigger = any_of(regions, r =>
        any_of([
            [ruins_door1, 1, 2, 0],
            [ruins_door2, 3, 6, 1],
            [ruins_door3, 6, 7, 2],
            [ruins_door4, 10, 11, 0]
        ], door_info =>
            region_check[r] && area_id[r] == 11 &&
            prev(map_id[r]) == door_info[1] && map_id[r] == door_info[2] && entry_id[r] == door_info[3] &&
            door_info[0][r] == 0 
        )
    )
)

achievement("Sneak Attack", "Reach Tutankoopa without solving the stone puzzle.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 11 && prev(map_id[r] == 10) &&
        unsigned_lt(story_progress[r], 0xc7) &&
        trigger_when(map_id[r] == 16)
    )
)

achievement("Watch Your Head", "Touch Mamar's Star Spirit card without activating the cutscene.", points = 10,
    trigger = lzs(200, 11, 14, 14, 16)
)

// Chapter 3

achievement("Get Outta the Way", "Obtain the Weight in Boo's Mansion without playing the Record.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] != 0x6) && map_id[r] == 0x6) &&
        prev(record_chest[r] == 0) && trigger_when(record_chest[r] == 1) &&
        never(region_check[r] && area_id[r] != 13) && never(region_check[r] && map_id[r] != 6) &&
        never(region_check[r] && mf13[r] != prev(mf13[r])) 
    )
)

achievement("Stanley Save", "Reach the screen beyond the Boos' village in Gusty Gulch without watching Tubba Blubba eat Stanley.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && prev(map_id[r] == 3) && entry_id[r] == 0 &&
        area_id[r] == 14 && trigger_when(map_id[r] == 0) &&
        unsigned_lt(story_progress[r], 0xdf)
    )
)

achievement("A Gusty Crawl", "Go from the Boo's village in Gusty Gulch to Tubba Blubba's Castle without jumping or using Parakarry.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 0x3) && map_id[r] == 0x0) &&
        never(region_check[r] && area_id[r] != 14 && area_id[r] != 15) &&
        never(region_check[r] && area_id[r] == 14 && map_id[r] != 0 && map_id[r] != 2) &&
        never(region_check[r] && area_id[r] == 15 && map_id[r] != 0) &&
        never(region_check[r] && jump_ascent[r] == 1) &&
        never(region_check[r] && partner_action_state[r] == 0x01 && acting_partner[r] == 0x04) &&
        trigger_when(prev(area_id[r] == 14) && area_id[r] == 15 && map_id[r] == 0x0)
    )
)

achievement("Rationing Made Easy", "Get healed from an item without consuming it.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] &&
        has_laki[r] == 1 &&
        once(current_hp[r] > prev(current_hp[r])) &&
        never(region_check[r] && map_id[r] != prev(map_id[r]) && map_id[r] != 0) &&
        all_inv_slots(r, slot => never(slot != prev(slot))) &&
        never(region_check[r] && area_id[r] != 15) &&
        map_id[r] == 0
    )
)

achievement("Hopping in the Breeze", "Touch Skolar's Star Spirit card without activating the cutscene.", points = 10,
    trigger = any_of([1, 11], el => lzs(0xf0, 14, 4, 14, el))
)

achievement("Hot Stepper", "Obtain the Castle Key in Tubba's Castle's spike room without using Bow.", points = 3,
    trigger  = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] != 12) && map_id[r] == 12) &&
        never(region_check[r] && area_id[r] != 15) && never(region_check[r] && map_id[r] != 12) &&
        prev(spike_room_chest[r] == 0) && trigger_when(spike_room_chest[r] == 1) &&
        never(region_check[r] && acting_partner[r] == 0x09 && partner_action_state[r] == 0x01)
    )
)

achievement("Yakkey Trickshot", "Have Tubba Blubba enter his room and get on the bed while talking to Yakkey.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] &&
        once(unsigned_lt(story_progress[r], 226) && yakkey_chest[r] > prev(yakkey_chest[r])) &&
        never(region_check[r] && area_id[r] != 15) &&
        never(region_check[r] && map_id[r] != 0x1 && map_id[r] != 18) &&
        prev(map_id[r] == 18) && map_id[r] == 1
    )
)

achievement("Quick Escape", "After obtaining the Mystical Key in Tubba's Castle, leave the castle by falling off the bridge above the main room.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 15 && trigger_when(prev(map_id[r] == 1) && prev(entry_id[r] == 4)) &&
        has_parakarry[r] == 1 && prev(map_id[r] != 0) &&
        story_progress[r] == 228 && trigger_when(map_id[r] == 0)
    )
)

// Chapter 4

achievement("Play Time Is Now", "Enter Shy Guy's Toybox without Bow and without revealing the door.", points = 4,
    trigger = any_of(regions, r =>
        region_check[r] && unsigned_lt(story_progress[r], 0xf6) &&
        prev(area_id[r] == 1) && prev(map_id[r] == 0x5) &&
        trigger_when(area_id[r] == 0 && map_id[r] == 13)
    )
)

achievement("I Never Thought About Going Left", "Pull the lever in Shy Guy's Toybox's Blue Station without arriving from the left on the train, then exit the area.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && 
        never(region_check[r] && map_id[r] != 2 && toybox_blue_switch[r] == 0) &&
        once(area_id[r] == 16 && prev(map_id[r] != 0x2) && map_id[r] == 0x2 && entry_id[r] != 2 && toybox_blue_switch[r] == 0) &&
        trigger_when(prev(map_id[r] == 0x2) && map_id[r] != 0x2 && toybox_blue_switch[r] == 1) 
    )
)

achievement("On a Diet", "In Shy Guy's Toybox's Pink Station, pull the lever to fix the track without giving a cake to Gourmet Guy.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 16 && map_id[r] == 5 &&
        unsigned_lt(prev(story_progress[r]), 0xfe) && trigger_when(story_progress[r] == 0xff)
    )
)

achievement("Anti-Anti Guy", "Open Anti Guy's chest while he's still guarding it.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 16 && map_id[r] == 12 &&
        prev(anti_guy_chest[r] == 0) && trigger_when(anti_guy_chest[r] == 1) &&
        anti_guy_defeated[r] == 0
    )
)

achievement("No Wallhacks Allowed", "In the room with the conveyor belts in Shy Guy's Toybox's Green Station, get the Dictionary and exit the room without using Bow.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && never(region_check[r] && area_id[r] != 16) && once(prev(map_id[r] == 0x7) && map_id[r] == 0x8 && dictionary_chest[r] == 0) &&
        never(region_check[r] && map_id[r] != 8 && dictionary_chest[r] == 0) && 
        trigger_when(prev(map_id[r] == 0x8) && map_id[r] == 0x7 && dictionary_chest[r] == 1) &&
        never(region_check[r] && acting_partner[r] == 0x09 && partner_action_state[r] == 0x01)
    )
)

achievement("Must Be Load-Bearing", "Reach General Guy without blowing up the wall in Shy Guy's Toybox.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 16 && trigger_when(map_id[r] == 13) &&
        prev(map_id[r] == 1) && toybox_red_barricade[r] == 0
    )
)

achievement("Jumping for Joy", "Touch Muskular's Star Spirit card without activating the cutscene.", points = 10,
    trigger = lzs(4, 16, 14, 14, 13)
)

// Chapter 5

achievement("Intimidation Tactics", "Clear the Piranha Plants to the left of Raphael's tree without defeating them in a fight.", points = 1,
    trigger = any_of(regions, r =>
        region_check[r] &&
        once(prev(map_id[r] == 14) && map_id[r] == 15 && story_progress[r] == 0x12) &&
        never(region_check[r] && area_id[r] != 17) &&
        never(region_check[r] && map_id[r] != 15 && map_id[r] != 14) &&
        never(repeated(100, region_check[r] && map_id[r] == 15 && battle_state[r] != 0 && can_flee_battle[r] == 0)) &&
        all_of(range(0, 5), i =>
            never(region_check[r] && prev(changing_map[r] == 0) &&
            prev(dword(world_npcs[r] + 4*i) != 0) && dword(world_npcs[r] + 4*i) == 0)
        ) &&
        trigger_when(story_progress[r] == 0x13 && prev(map_id[r] == 14) && map_id[r] == 15)
    )
)

achievement("The Yoshi Kids Will Be Fine, Probably", "Enter Mt. Lavalava without taking the zipline.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && once(area_id[r] == 17 && prev(map_id[r] != 20) && map_id[r] == 20 && entry_id[r] != 2) &&
        never(region_check[r] && mf10[r] == 1) &&
        never(region_check[r] && area_id[r] != 17 && area_id[r] != 18) &&
        never(region_check[r] && area_id[r] == 17 && map_id[r] != 20) &&
        trigger_when(prev(area_id[r] == 17) && area_id[r] == 18)
    )
)

achievement("Seared Seafood", "Using Sushie to cross the lava, open the Dizzy Stomp chest in Mt. Lavalava.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] &&
        once(prev(map_id[r] == 5) && acting_partner[r] == 0x07 && partner_action_state[r] == 0x01) &&
        never(prev(dizzy_stomp_chest[r] != 0)) && trigger_when(dizzy_stomp_chest[r] == 1) &&
        never(region_check[r] && area_id[r] != 18) &&
        never(region_check[r] && map_id[r] != 7)
    )
)

achievement("Quick Dip", "Open the Ultra Hammer chest without using Parakarry or Lakilester while in the room and without riding Sushie.", points = 4,
    trigger = any_of(regions, r =>
        region_check[r] && once(ultra_hammer_chest[r] == 0 && area_id[r] == 18 && prev(map_id[r] != 0x6) && map_id[r] == 0x6) &&
        never(region_check[r] && area_id[r] != 18) && never(region_check[r] && map_id[r] != 6) &&
        never(acting_partner[r] == 0x04 && partner_action_state[r] == 0x01) &&
        never(acting_partner[r] == 0x08 && partner_action_state[r] == 0x01) &&
        never(acting_partner[r] == 0x07 && partner_action_state[r] == 0x01) &&
        trigger_when(ultra_hammer_chest[r] > prev(ultra_hammer_chest[r]))
    )
)

achievement("Swords Into Plowshares", "Reach the third zipline in Mt. Lavalava without breaking the Ultra Hammer block in front of the door.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && unsigned_lt(story_progress[r], 0x1d) && 
        area_id[r] == 18 && prev(map_id[r] == 2) && trigger_when(map_id[r] == 8 && entry_id[r] == 0)
    )
)

achievement("Short Way Down", "Go from the upper left entrance in Mt. Lavalava's main room to the lower left exit without crossing to the right side of the room.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 0x1) && map_id[r] == 0x2) &&
        never(region_check[r] && mario_x_pos[r] >= 0.0 && mario_x_pos[r] < 300.0) &&
        never(region_check[r] && area_id[r] != 18) &&
        never(region_check[r] && map_id[r] != 2 && map_id[r] != 4) &&
        trigger_when(prev(map_id[r] == 0x2) && map_id[r] == 0x4)
    )
)

achievement("Flarakarry", "Reach the room in Mt. Lavalava behind the boulder without smashing it.", points = 2,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 18 && prev(map_id[r] == 11) && trigger_when(map_id[r] == 12) &&
        unsigned_lt(story_progress[r], 0x20)
    )
)

achievement("Catch Him Off Guard", "First Strike Lava Piranha.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 18 && map_id[r] == 13 && battle_state[r] < 3 &&
        unsigned_lt(story_progress[r], 0x23) &&
        trigger_when(prev(battle_state[r] == 1) && battle_state[r] == 2 && first_enemy_type[r] == 179)
    )
)

achievement("This Volcano Sure Is Active", "After completing Chapter 5, trigger the volcano escape sequence again.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 18 && trigger_when(prev(map_id[r] == 14) && map_id[r] == 15) &&
        unsigned_gt(story_progress[r], 0x25) &&
        __ornext(map_id[r] == 12 || map_id[r] == 13 || map_id[r] == 14 || map_id[r] == 15)
    )
)

// Chapter 6

achievement("Squeak by the Bubble", "Reach Lakilester without feeding the Bubble Plant.", points = 25,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 19 && trigger_when(map_id[r] == 8 && has_laki[r] > prev(has_laki[r])) &&
        __ornext(map_id[r] == 9 || map_id[r] == 10 || map_id[r] == 8 || map_id[r] == 0) &&
        bubble_plant_fed[r] == 0
    )
)

achievement("Dayzed and Confused", "Reach the Upgrade Block behind the Yellow Plant without walking to the right of the gate.", points = 2,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 0x0) && map_id[r] == 0x3 && entry_id[r] == 0) &&
        never(region_check[r] && mario_x_pos[r] >= -600.0 && mario_x_pos[r] < -500.0) &&
        never(region_check[r] && area_id[r] != 19) &&
        never(region_check[r] && map_id[r] != 3) &&
        ((trigger_when(mario_y_pos[r] >= 50.0 && mario_z_pos[r] <= -72.9 && prev(acting_partner[r] == 0x8) && acting_partner[r] == 0x0)) ||
        (trigger_when(mario_y_pos[r] >= 50.0 && mario_z_pos[r] <= -73.0 && prev(mario_z_pos[r]) > 73.0 && acting_partner[r] == 0x0)))
    )
)

achievement("Be Fruitful and Multiply", "Obtain more than one Happy Flower badge from the trees in Flower Fields.", points = 1,
    trigger = any_of(regions, r =>
        region_check[r] &&
        once(area_id[r] == 19 && map_id[r] == 4 && prev(map_id[r] != 4) && happyflower_tree[r] == 0) &&
        trigger_when(tally_of(range(0, 127), 2, idx => 
            once(badge_slot(r, idx) == 0x141)
        )) &&
        never(region_check[r] && area_id[r] != 19) &&
        never(region_check[r] && map_id[r] != 4)
    )
)

achievement("What Are You Gonna Do, Run After Me?", "Reach the area beyond the Yellow Plant's gate in Flower Fields without feeding it or riding Lakilester.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 0x0) && map_id[r] == 0x3 && entry_id[r] == 0) &&
        never(region_check[r] && acting_partner[r] == 0x08 && partner_action_state[r] == 0x01) &&
        never(region_check[r] && area_id[r] != 19) &&
        never(region_check[r] && map_id[r] != 3) &&
        never(region_check[r] && yellow_plant_fed[r] == 1) &&
        ((trigger_when(mario_y_pos[r] >= 0.0 && mario_z_pos[r] <= 137.0 && prev(mario_x_pos[r]) < -530.0 && mario_x_pos[r] >= -530.0)) ||
        (trigger_when(mario_y_pos[r] >= 0.0 && mario_z_pos[r] <= 137.0 && prev(mario_z_pos[r]) > 137.0 && mario_x_pos[r] >= -530.0)))
    )
)

achievement("This One's for Lakilulu", "Without obtaining Lakilester, destroy the Puff Puff Machine in Flower Fields and return to the main area.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 19 &&
        story_progress[r] == 53 && has_laki[r] == 0 &&
        prev(map_id[r] == 11) && map_id[r] == 0x0
    )
)

achievement("Peace Tower", "Speak to the Sun in Flower Fields without blowing up the rock to fix the staircase.", points = 25,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 19 && map_id[r] == 10 &&
        sun_tower_rock[r] == 0 &&
        prev(story_progress[r] != 50) && trigger_when(story_progress[r] == 50)
    )
)

achievement("One Little Slap", "Crash the game by using Bow on Huff N. Puff.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 19 && map_id[r] == 15 &&
        enemy_type(0, r) == 186 && all_of(range(1, 23), idx =>
            dword(enemy_actors_start[r] + idx*4) == 0x00000000
        ) && enemy_prev_current_hp(0, r) == 1 && enemy_current_hp(0, r) == 0 &&
        selected_move_category[r] == 6 && selected_move_id[r] == 0xb3
    )
)

achievement("Skipping Through the Clouds", "Touch Klevar's Star Spirit card without activating the cutscene.", points = 50,
    trigger = lzs(0x38, 19, 15, 14, 14)
)

// Chapter 7

achievement("Old Boot Goofin'", "Reach Chapter 7 without Ultra Boots.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && prev(area_id[r] == 2) &&
        __ornext(prev(map_id[r] == 13) || prev(map_id[r] == 18) || prev(map_id[r] == 17)) &&
        current_boots[r] < 2 && prev(ch7_started[r] == 0) && trigger_when(ch7_started[r] == 1 && prev(map_id[r] == 13))
    )
)

achievement("Quick Change", "Change Herringway to a normal Bumpty during the murder sequence or change the innkeeper Toad to a normal one.", points = 1,
    trigger = any_of(regions, r =>
        (region_check[r] && area_id[r] == 20 && map_id[r] == 0 &&
        check_npc(world_npcs[r], 16, npc =>
            byte(npc + 0xa7) == 0x04 &&
            dword(sprite_instances[r] + 0x14 * byte(npc + 0x24)) == 0x9a &&
            prev(dword(sprite_instances[r] + 0x14 * byte(npc + 0x24))) != 0x9a)) ||
        (region_check[r] && area_id[r] == 20 && map_id[r] == 1 &&
        check_npc(world_npcs[r], 8, npc =>
            byte(npc + 0xa7) == 0x01 &&
            dword(sprite_instances[r] + 0x14 * byte(npc + 0x24)) == 0x83 &&
            prev(dword(sprite_instances[r] + 0x14 * byte(npc + 0x24))) != 0x83)
        )
    )
)

achievement("Something's Wrong, I Can Feel It", "In Shiver City, speak to Herringway before witnessing Mayor Penguin's murder or obtaining the Warehouse Key.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && unsigned_lt(prev(story_progress[r]), 0x3f) && trigger_when(story_progress[r] == 0x41) &&
        warehouse_key[r] == 0 && warehouse_unlocked[r] == 0 &&
        area_id[r] == 20 && map_id[r] == 10
    )
)

achievement("If You're Cold, They're Cold", "Without opening the door and without riding Sushie, enter the door past the snowmen in Shiver Region.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && unsigned_lt(prev(story_progress[r]), 0x4a) &&
        prev(map_id[r] == 3) && trigger_when(map_id[r] == 6) &&
        area_id[r] == 20 && acting_partner[r] != 0x07 && has_laki[r] == 1
    )
)

achievement("You Are Traveling Through Another Dimension", "Enter the main hall on one side of the mirror and exit on the other side.", points = 3,
    trigger = any_of(regions, r =>
        any_of([0, 1, 2], prev_entry =>
            any_of([
                [0, 2],
                [3, 0],
                [13, 3],
                [10, 3]
            ], next_info =>
                region_check[r] && area_id[r] == 21 && prev(map_id[r]) == 1 &&
                prev(entry_id[r] == prev_entry) && has_laki[r] == 1 &&
                trigger_when(map_id[r] == next_info[0] && entry_id[r] == next_info[1])
            )
        )
    )
)

achievement("Fish Scales", "Ride Sushie from Shiver City, past the snowmen and up the mountain past the blue switch, up the stairs, then exit on foot through the right exit.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && 
        once(
            prev(map_id[r] == 3) && map_id[r] == 6 &&
            acting_partner[r] == 0x07 && partner_action_state[r] == 0x01
        ) &&
        never(region_check[r] && area_id[r] != 20) &&
        never(region_check[r] && map_id[r] != 6 && map_id[r] != 7) &&
        map_id[r] == 7 && partner_action_state[r] == 0
    )
)

achievement("Non-Star-ter", "Enter Crystal Palace without raising the staircase with the Star Stone.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && prev(area_id[r] == 20) && prev(map_id[r] == 9) &&
        unsigned_lt(story_progress[r], 0x4d) && trigger_when(area_id[r] == 21 && map_id[r] == 0)
    )
)

achievement("I Think I Left My Coat", "After raising the ice staircase in Shiver Region, re-enter the Sanctuary.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 20 && prev(map_id[r] == 9) &&
        unsigned_gt(story_progress[r], 0x4c) && trigger_when(map_id[r] == 11)
    )
)

achievement("Shovel Jump", "In the west screen of Shiver City, jump from the handle of the shovel to the ledge of the house.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] &&
        once(
            mario_x_pos[r] >= -120.0 && mario_x_pos[r] <= -60.0 &&
            mario_y_pos[r] >= 25.0 && mario_y_pos[r] <= 80.0 &&
            mario_z_pos[r] <= -50.0 && jump_ascent[r] == 0 && air_falling[r] == 0
        ) &&
        never(region_check[r] && map_id[r] != 0) &&
        never(region_check[r] && area_id[r] != 20) &&
        never(region_check[r] && mario_y_pos[r] < 25.0) &&
        mario_y_pos[r] >= 80.0 && jump_ascent[r] == 0 && air_falling[r] == 0 &&
        prev(jump_byte[r] > 1)
    )
)

achievement("Save Your Strength", "Enter the room underneath the large statue in Crystal Palace without moving it out of the way.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 21 && prev(map_id[r] == 17) &&
        unsigned_lt(story_progress[r], 0x54) &&
        trigger_when(map_id[r] == 27)
    )
)

achievement("Platonic Friendship", "[JP] In Crystal Palace, escape from the Duplighosts who are trying to impersonate Bombette without revealing any of them.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 21 && prev(map_id[r] == 6) &&
        trigger_when(map_id[r] == 8) &&
        unsigned_lt(story_progress[r], 80)
    )
)

achievement("Not Worth the Effort to Bonk You", "[JP] In Crystal Palace, escape from the Duplighosts who are trying to impersonate Kooper without revealing any of them.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 21 && prev(map_id[r] == 15) &&
        trigger_when(map_id[r] == 16) &&
        unsigned_lt(story_progress[r], 0x52)
    )
)

// Chapter 8

achievement("I Await Your Swift Return", "After being jailed in Bowser's Castle, re-enter through the front door without draining the lava.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 22 && prev(map_id[r]) == 23 &&
        shutofflava[r] == 0 && bowserjail_bombwall[r] == 1 && map_id[r] == 25
    )
)

achievement("Cloud Strife", "Enter the door in the lava moat in Bowser's Castle before being jailed.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 22 && prev(map_id[r]) == 23 &&
        shutofflava[r] == 0 && bowserjail_bombwall[r] == 0 && map_id[r] == 6
    )
)

achievement("Deep-Sea Diving", "[US/JP] In the room with changing water levels in Bowser's Castle, unlock the door without blowing up the wall or opening the secret hallway.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 22 &&
        __ornext(prev(map_id[r] == 48) || prev(map_id[r] == 49)) &&
        trigger_when( prev(map_id[r] == 49) && map_id[r] == 47) &&
        floodroom_bombwall[r] == 0 && floodroom_passage[r] == 0
    )
)

achievement("Cannonless", "In the room in Bowser's Castle with B. Bill Blasters, make it from the left entrance to the right exit without getting in any battles and without jumping over them.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 49) && map_id[r] == 47) &&
        dword(world_npcs[r] + 18*4) != 0 &&
        never(region_check[r] && battle_state[r] != 0) &&
        never(region_check[r] && area_id[r] != 22) &&
        never(region_check[r] && map_id[r] == 49) &&
        never(region_check[r] && mario_x_pos[r] > -350.0 && mario_x_pos[r] <= -300.0 && mario_y_pos[r] < 400.0) &&
        trigger_when(map_id[r] == 37)
    )
)

achievement("Thread the Needle", "In the room in Bowser's Castle with B. Bill Blasters, make it from the left entrance to the right exit without getting in any battles and without clipping under the floor.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 49) && map_id[r] == 47) &&
        dword(world_npcs[r] + 18*4) != 0 &&
        never(region_check[r] && battle_state[r] != 0) &&
        never(region_check[r] && area_id[r] != 22) &&
        never(region_check[r] && map_id[r] == 49) &&
        never(region_check[r] && mario_y_pos[r] < -100.0) &&
        trigger_when(map_id[r] == 37)
    )
)

achievement("Scooch Over, I'm Tired", "Take a nap in Peach's Castle without freeing the Toad from the wardrobe.", points = 2,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 4 && map_id[r] == 14 &&
        mario_y_pos[r] >= 29.0 && mario_y_pos[r] <= 31.0 &&
        (prev(player_animation[r] == 0x2) && player_animation[r] == 0x1d)
    )
)

achievement("See You There, Bro", "After defeating Final Bowser and recovering the Star Rod, reach Peach's Castle without talking to Luigi in Toad Town.", points = 1,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 1 && map_id[r] == 2 &&
        prev(map_id[r] == 1) && story_progress[r] == 0x60 &&
        check_npc(world_npcs[r], 24, addr =>
            byte(addr + 0xa7) == 0x19 &&
            byte(addr + 0x28) == 0
        )
    )
)

// Miscellaneous

achievement("Potent Edible", "Heal 30 or more FP from eating an Electro Pop.", points = 1,
    trigger = any_of(regions, r =>
        region_check[r] &&
        selected_move_category[r] == 2 && move_argument[r] == 0xcc &&
        current_fp[r] - prev(current_fp[r]) >= 30
    )
)

achievement("Feeling Foul", "Have a Repel Gel or Volt Shroom last only one turn.", points = 1,
    trigger = any_of(regions, r =>
        region_check[r] && equipped_badge(r, 0xf2) &&
        selected_move_category[r] == 2 && __ornext(move_argument[r] == 0x97 || move_argument[r] == 0x8b) &&
        __ornext(any_of([0x210, 0x21a], off =>
            byte(battle_player_actor[r] + off) > prev(byte(battle_player_actor[r] + off))
        ))
    )
)

achievement("Exotic Wares", "Sell a badge to a shop.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && any_of(range(0, 9), idx =>
            prev_item_slot(r, idx) >= 0xe0 && prev_item_slot(r, idx) <= 0x154 &&
            dword(shop_addr[r] + 0xc) == idx &&
            coins[r] > prev(coins[r])
        )
    )
)

achievement("Free Range Farming", "Grab an item from a Li'l Oink without scaring them away.", points = 2,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] != 0x4) && map_id[r] == 0x4) &&
        trigger_when(region_check[r] && mario_x_pos[r] >= 270.0 && mario_x_pos[r] <= 590.0 &&
            mario_z_pos[r] >= -260.0 && mario_z_pos[r] <= -100.0 && picking_up_item[r] == 1) &&
        never(region_check[r] && mario_x_pos[r] >= 270.0 && mario_x_pos[r] <= 590.0 &&
            mario_z_pos[r] >= -260.0 && mario_z_pos[r] <= -100.0 && time_freeze[r] == 1) &&
        never(region_check[r] && area_id[r] != 1) &&
        never(region_check[r] && map_id[r] != 4)
    )
)

achievement("Beauty Sleep", "Take a nap as Peach.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 4 && map_id[r] == 14 &&
        is_peach[r] == 1 &&
        (prev(player_animation[r] == 0x2) && player_animation[r] == 0x1d)
    )
)

// Full Game Runs

achievement("Awesomely Cool Endeavor", "View the end screen without defeating Final Bowser.", points = 100,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 0 && map_id[r] == 0x10 && prev(map_id[r] != 0x10) &&
        finalbowser[r] == 0
    )
)

achievement("No, I Want a Real RPG", "Beat Final Bowser without the Lucky Star and all 7 Star Spirits.", points = 50,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 4 && map_id[r] == 19 &&
        ch1_beatkoopabros[r] == 1 && ch2_beattutankoopa[r] == 1 && ch3_mysticalkey[r] == 1 &&
        ch4_bombedwall[r] == 1 && ch5_intruderalert2[r] == 1 && ch6_placedbean[r] == 1 &&
        ch7_palacekeyused[r] == 1 &&
        all_of(range(0, 31), idx =>
            key_item_slot(r, idx) != 7
        ) &&
        prev(finalbowser[r] == 0) && finalbowser[r] == 1
    )
)


achievement("Whirlwind Tour", "Beat Final Bowser without saving any Star Spirits and with your only partners being Goombario, Kooper, Bombette, Sushie and Lakilester.", points = 50,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 4 && map_id[r] == 19 &&
        has_goombario[r] == 1 && has_bombette[r] == 1 && has_sushie[r] == 1 && has_laki[r] == 1 &&
        has_kooper[r] == 1 && has_parakarry[r] == 0 && has_watt[r] == 0 && has_bow[r] == 0 &&
        ch1_beatkoopabros[r] == 0 && ch2_beattutankoopa[r] == 0 && ch3_mysticalkey[r] == 0 &&
        ch4_bombedwall[r] == 0 && ch6_placedbean[r] == 0 && ch7_palacekeyused[r] == 0 &&
        prev(finalbowser[r] == 0) && finalbowser[r] == 1
    )
)

achievement("Reverse All Cards I", "Touch Kalmar's Star Spirit card before any of the other ones.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && prev(story_progress[r] == 0x56) && story_progress[r] == 0x57 &&
        prev(area_id[r] == 21) && prev(map_id[r] == 23) && max_star_power[r] == 0
    )
)

achievement("Reverse All Cards II", "Touch Klevar's Star Spirit card having only completed Chapter 7 previously.", points = 10,
    trigger = rac(0x38, 19, 15, [ch7_palacekeyused], [ch1_beatkoopabros, ch2_beattutankoopa, ch3_mysticalkey, ch4_bombedwall])
)

achievement("Reverse All Cards III", "Touch Misstar's Star Spirit card having only completed Chapters 6 and 7 previously.", points = 10,
    trigger = rac(0x23, 18, 13, [ch6_placedbean, ch7_palacekeyused], [ch1_beatkoopabros, ch2_beattutankoopa, ch3_mysticalkey, ch4_bombedwall])
)

achievement("Reverse All Cards IV", "Touch Muskular's Star Spirit card having only completed Chapters 5 through 7 previously.", points = 10,
    trigger = rac(4, 16, 14, [ch5_intruderalert2, ch6_placedbean, ch7_palacekeyused], [ch1_beatkoopabros, ch2_beattutankoopa, ch3_mysticalkey])
)

achievement("Reverse All Cards V", "Touch Skolar's Star Spirit card having only completed Chapters 4 through 7 previously.", points = 10,
    trigger = rac(240, 14, 4, [ch4_bombedwall, ch5_intruderalert2, ch6_placedbean, ch7_palacekeyused], [ch1_beatkoopabros, ch2_beattutankoopa])
)

achievement("Reverse All Cards VI", "Touch Mamar's Star Spirit card having only completed Chapters 3 through 7 previously.", points = 10,
    trigger = rac(200, 11, 14, [ch3_mysticalkey, ch4_bombedwall, ch5_intruderalert2, ch6_placedbean, ch7_palacekeyused], [ch1_beatkoopabros])
)

achievement("Reverse All Cards VII", "Touch Eldstar's Star Spirit card having completed Chapters 2 through 7 previously.", points = 10,
    trigger = rac(178, 7, 10, [ch2_beattutankoopa, ch3_mysticalkey, ch4_bombedwall, ch5_intruderalert2, ch6_placedbean, ch7_palacekeyused], [])
)

// Leaderboards


leaderboard("LZS Jumps", "Get the most jumps in LZS before taking the loading zone.",
    start = any_of(regions, r =>
        region_check[r] && jump_ascent[r] > prev(jump_ascent[r]) &&
        any_of(range(0, 63), idx =>
            dword(world_triggers[r] + idx*4) != 0x00000000 &&
            bit1(tbyte(world_triggers[r] + idx*4)) == 1
        )
    ),
    cancel = any_of(regions, r =>
        region_check[r] && repeated(8, jump_ascent[r] == 0 && prev(jump_ascent[r]) == 0 &&
        air_falling[r] == 0 && prev(air_falling[r]) == 0) &&
        never(jump_ascent[r] == 1)
    ),
    submit = any_of(regions, r =>
        region_check[r] && 
        (area_id[r] != prev(area_id[r]) || map_id[r] != prev(map_id[r]))
    ),
    value = max_of(
        repeated(0, region_check["US"] && area_id["US"] == prev(area_id["US"]) && map_id["US"] == prev(map_id["US"]) && jump_ascent["US"] > prev(jump_ascent["US"])),
        repeated(0, region_check["JP"] && area_id["JP"] == prev(area_id["JP"]) && map_id["JP"] == prev(map_id["JP"]) && jump_ascent["JP"] > prev(jump_ascent["JP"])),
        repeated(0, region_check["EU"] && area_id["EU"] == prev(area_id["EU"]) && map_id["EU"] == prev(map_id["EU"]) && jump_ascent["EU"] > prev(jump_ascent["EU"]))
    )
)

// Rich Presence

area_id_lookup_us = rich_presence_lookup("Area", area_id["US"], area_id_values)
area_id_lookup_jp = rich_presence_lookup("Area", area_id["JP"], area_id_values)
area_id_lookup_eu = rich_presence_lookup("Area", area_id["EU"], area_id_values)
partner_lookup_us = rich_presence_lookup("Partner", current_partner["US"], partner_values)
partner_lookup_jp = rich_presence_lookup("Partner", current_partner["JP"], partner_values)
partner_lookup_eu = rich_presence_lookup("Partner", current_partner["EU"], partner_values)
rp_hp_us = rich_presence_value("Number", current_hp["US"])
rp_hp_jp = rich_presence_value("Number", current_hp["JP"])
rp_hp_eu = rich_presence_value("Number", current_hp["EU"])
rp_max_hp_us = rich_presence_value("Number", max_hp["US"])
rp_max_hp_jp = rich_presence_value("Number", max_hp["JP"])
rp_max_hp_eu = rich_presence_value("Number", max_hp["EU"])
rp_fp_us = rich_presence_value("Number", current_fp["US"])
rp_fp_jp = rich_presence_value("Number", current_fp["JP"])
rp_fp_eu = rich_presence_value("Number", current_fp["EU"])
rp_max_fp_us = rich_presence_value("Number", max_fp["US"])
rp_max_fp_jp = rich_presence_value("Number", max_fp["JP"])
rp_max_fp_eu = rich_presence_value("Number", max_fp["EU"])
rp_bp_us = rich_presence_value("Number", max_bp["US"])
rp_bp_jp = rich_presence_value("Number", max_bp["JP"])
rp_bp_eu = rich_presence_value("Number", max_bp["EU"])
rp_level_us = rich_presence_value("Number", mario_level["US"])
rp_level_jp = rich_presence_value("Number", mario_level["JP"])
rp_level_eu = rich_presence_value("Number", mario_level["EU"])
rp_area_id_us = rich_presence_value("Number", area_id["US"])
rp_area_id_jp = rich_presence_value("Number", area_id["JP"])
rp_area_id_eu = rich_presence_value("Number", area_id["EU"])
rp_entry_id_us = rich_presence_value("Number", entry_id["US"])
rp_entry_id_jp = rich_presence_value("Number", entry_id["JP"])
rp_entry_id_eu = rich_presence_value("Number", entry_id["EU"])
rp_map_id_us = rich_presence_value("Number", map_id["US"])
rp_map_id_jp = rich_presence_value("Number", map_id["JP"])
rp_map_id_eu = rich_presence_value("Number", map_id["EU"])
rp_story_progress_us = rich_presence_value("Number", story_progress["US"])
rp_story_progress_jp = rich_presence_value("Number", story_progress["JP"])
rp_story_progress_eu = rich_presence_value("Number", story_progress["EU"])
rp_first_enemy_type = rich_presence_value("Number", byte(tbyte(0xdc070 + 0xe0) + 0x135))

rp_string = "Mario {7} exploring {0} at level {6} [♥{1}/{2}] [🌼{3}/{4}] [BP: {5}]" 
title_string = "Mario is on the title screen"

if (!debug) {
    rich_presence_conditional_display(region_check["US"] && !in_game["US"], title_string)
    rich_presence_conditional_display(region_check["JP"] && !in_game["JP"], title_string)
    rich_presence_conditional_display(region_check["EU"] && !in_game["EU"], title_string)
    rich_presence_conditional_display(region_check["US"], rp_string,
        area_id_lookup_us, rp_hp_us, rp_max_hp_us, rp_fp_us, rp_max_fp_us, rp_bp_us, rp_level_us,
        partner_lookup_us)
    rich_presence_conditional_display(region_check["JP"], rp_string,
        area_id_lookup_jp, rp_hp_jp, rp_max_hp_jp, rp_fp_jp, rp_max_fp_jp, rp_bp_jp, rp_level_jp,
        partner_lookup_jp)
    rich_presence_conditional_display(region_check["EU"], rp_string,
        area_id_lookup_eu, rp_hp_eu, rp_max_hp_eu, rp_fp_eu, rp_max_fp_eu, rp_bp_eu, rp_level_eu,
        partner_lookup_eu)
}
else {
    rich_presence_conditional_display(region_check["US"], "Mario is exploring {0} [♥{1}/{2}] [Area ID: {3}] [Entry ID: {4}] [Map ID: {5}], [Story Progress: {6}] [First Enemy Type: {7}]",
        area_id_lookup_us, rp_hp_us, rp_max_hp_us, rp_area_id_us, rp_entry_id_us, rp_map_id_us, rp_story_progress_us, rp_first_enemy_type)
    rich_presence_conditional_display(region_check["JP"], "Mario is exploring {0} [♥{1}/{2}] [Area ID: {3}] [Entry ID: {4}] [Map ID: {5}] [Story Progress: {6}]",
        area_id_lookup_jp, rp_hp_jp, rp_max_hp_jp, rp_area_id_jp, rp_entry_id_jp, rp_map_id_jp, rp_story_progress_jp)
    rich_presence_conditional_display(region_check["EU"], "Mario is exploring {0} [♥{1}/{2}] [Area ID: {3}] [Entry ID: {4}] [Map ID: {5}] [Story Progress: {6}]",
        area_id_lookup_eu, rp_hp_eu, rp_max_hp_eu, rp_area_id_eu, rp_entry_id_eu, rp_map_id_eu, rp_story_progress_eu)
}

rich_presence_display("Glitching Paper Mario")
