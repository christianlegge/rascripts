// Paper Mario
// #MinimumVersion = 1.3
// #ID = 33114
// subset 33114, base 10154

re = [ "US", "JP", "EU" ]

rc = {
    "US": ascii_string_equals(0x77bd0, " grP", 4),
    "JP": ascii_string_equals(0x77ba0, " grP", 4),
    "EU": ascii_string_equals(0x73f70, " grP", 4)
}

in_game = {
    "US": word(0xa094a) == 1,
    "JP": word(0x9e75a) == 1,
    "EU": word(0x9f0aa) == 1
}

battle_id = {
    "US": word(0xdc4e8),
    "JP": word(0xdc4c8),
    "EU": word(0xd8c58)
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

function battle_start(r) => battle_state[r] > 0 && prev(battle_state[r]) == 0
function battle_won(r) => battle_state[r] == 33 && prev(battle_state[r]) != 33

encounter_state = {
    "US": byte(0x9a600),
    "JP": byte(0x9a5e0),
    "EU": byte(0x969d4)
}

current_encounter = {
    "US": 0xb0f10,
    "JP": 0x9a5e0,
    "EU": 0x969d4
}

function minigame_score(r, var_table_idx, score_offset) {
    enc = current_encounter[r]
    cur_enc = tbyte(enc + 0x28)
    scorekeeper = tbyte(cur_enc + 0x4)
    score_table = tbyte(scorekeeper + 0x6c + 4*var_table_idx)
    return dword(score_table + score_offset)
}

function jump_score(r) => minigame_score(r, 5, 0xc)
function smash_score(r) => minigame_score(r, 0, 0x20)

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

function enemy_actor(r, num, pred) {
    return any_of(range(0, num - 1), i =>
        pred(tbyte(enemy_actors_start[r] + 4*i))
    )
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

star_power = {
    "US": word(0x10f522),
    "JP": word(0x10f6e2),
    "EU": word(0x10e022)
}

first_strikes = {
    "US": word(0x10f52e),
    "JP": word(0x10f6ee),
    "EU": word(0x10e02e)
}

power_bounces = {
    "US": word(0x10f532),
    "JP": word(0x10f6f2),
    "EU": word(0x10e032)
}

battles = {
    "US": word(0x10f530),
    "JP": word(0x10f6f0),
    "EU": word(0x10e030)
}

total_coins = {
    "US": word(0x10f544),
    "JP": word(0x10f704),
    "EU": word(0x10e044)
}

mario_x_pos = {
    "US": float(0x740bc),
    "JP": float(0x10f1b0),
    "EU": float(0x713cc)
}

music = {
    "US": dword(0x159b00),
    "JP": dword(0x15ea80),
    "EU": dword(0x1586c0)
}

entities = {
    "US": dword(0x1512f8),
    "JP": dword(0x156358),
    "EU": dword(0x14fec8)
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

player_input_disabled = {
    "US": bit5(0x10efc9),
    "JP": bit5(0x10f189),
    "EU": bit5(0x10dac9)
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

goombario_level = {
    "US": byte(0x10f290 + 0x1e),
    "JP": byte(0x10f450 + 0x1e),
    "EU": byte(0x10dd90 + 0x1e)
}

kooper_level = {
    "US": byte(0x10f290 + 0x26),
    "JP": byte(0x10f450 + 0x26),
    "EU": byte(0x10dd90 + 0x26)
}

bombette_level = {
    "US": byte(0x10f290 + 0x2e),
    "JP": byte(0x10f450 + 0x2e),
    "EU": byte(0x10dd90 + 0x2e)
}

parakarry_level = {
    "US": byte(0x10f290 + 0x36),
    "JP": byte(0x10f450 + 0x36),
    "EU": byte(0x10dd90 + 0x36)
}

bow_level = {
    "US": byte(0x10f290 + 0x5e),
    "JP": byte(0x10f450 + 0x5e),
    "EU": byte(0x10dd90 + 0x5e)
}

watt_level = {
    "US": byte(0x10f290 + 0x46),
    "JP": byte(0x10f450 + 0x46),
    "EU": byte(0x10dd90 + 0x46)
}

sushie_level = {
    "US": byte(0x10f290 + 0x4e),
    "JP": byte(0x10f450 + 0x4e),
    "EU": byte(0x10dd90 + 0x4e)
}

laki_level = {
    "US": byte(0x10f290 + 0x56),
    "JP": byte(0x10f450 + 0x56),
    "EU": byte(0x10dd90 + 0x56)
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
        "US": dword(0x2dbca8 + 4*idx),
        "JP": dword(0x2dbca8 + 4*idx),
        "EU": dword(0x2e1f88 + 4*idx)
    }
}

function game_byte(idx) {
    return {
        "US": byte(0xdbd73 + idx),
        "JP": byte(0xdbd53 + idx),
        "EU": byte(0xd84e3 + idx)
    }
}

game_byte_addr = {
    "US": 0xdbd73,
    "JP": 0xdbd53,
    "EU": 0xd84e3
}

function luigi_diaries(r) {
    return bitcount(game_byte_addr[r] + 12) +
        bit0(game_byte_addr[r] + 11) +
        bit1(game_byte_addr[r] + 11) +
        bit2(game_byte_addr[r] + 11) +
        bit3(game_byte_addr[r] + 11)
}

function mario_letters(r) {
    return bitcount(game_byte_addr[r] + 10) +
        bit0(game_byte_addr[r] + 9) +
        bit1(game_byte_addr[r] + 9) +
        bit2(game_byte_addr[r] + 9) +
        bit3(game_byte_addr[r] + 9)
}

tattle_bits = [
    // starting at game_byte_addr[r] + 0x169
    [0, 1, 2, 3, 4, 5, 6, 7],
    [0, 1, 2, 3, 4, 5, 7],
    [2, 3, 4, 5, 7],
    [],
    [0, 1, 2, 3, 4, 5, 6],
    [1, 2, 3, 4, 5, 6, 7],
    [0, 1, 2, 3, 4, 6, 7],
    [0, 1, 2, 3, 4, 5, 6, 7],
    [0, 2, 3, 5, 7],
    [1, 2, 3, 4],
    [5, 6, 7],
    [0, 1, 2, 3],
    [],
    [],
    [],
    [2],
    [0, 1, 2],
    [1, 2, 3, 4, 5],
    [],
    [2, 3, 4, 5, 6],
    [1, 3, 5, 7],
    [0, 2, 7],
    [0, 1, 2, 3, 5, 6, 7],
    [1, 3, 4, 5, 6],
    [],
    [0, 2, 4],
    [1, 3, 7],
    [1, 2, 3, 4, 5, 7]
]

function tattle_bitflags(r, i) {
    lava_piranha_variant = [
        [3, 5],
        [4, 6],
        [4, 5],
        [3, 6]
    ]
    addr = game_byte_addr[r] + 0x169
    bitflag_array = []
    for bitset in tattle_bits {
        if (addr == game_byte_addr[r] + 0x17d) {
            array_push(bitflag_array, bit(1, addr))
            array_push(bitflag_array, bit(lava_piranha_variant[i][0], addr))
            array_push(bitflag_array, bit(lava_piranha_variant[i][1], addr))
            array_push(bitflag_array, bit(7, addr))
        }
        else {
            for b in bitset {
                array_push(bitflag_array, bit(b, addr))
            }
        }
        addr = addr + 1
    }
    return bitflag_array
}

function area_flag(bit_index) {
    byte_index = bit_index / 8
    return {
        "US": bit(bit_index % 8, 0xdacc0 + 0x12b0 + byte_index),
        "JP": bit(bit_index % 8, 0xdaca0 + 0x12b0 + byte_index),
        "EU": bit(bit_index % 8, 0xd7430 + 0x12b0 + byte_index)
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

hidden_block_flags = [
    0x034,
    0x195,
    0x196,
    0x197,
    0x198,
    0x19c,
    0x19d,
    0x19e,
    0x19f,
    0x1A0,
    0x1A1,
    0x1A2,
    0x1A4,
    0x257,
    0x31f,
    0x32a,
    0x32d,
    0x32e,
    0x456,
    0x457,
    0x45b,
    0x45d,
    0x470,
    0x471,
    0x473,
    0x479,
    0x498,
    0x49a,
    0x49d,
    0x49e,
    0x4A1,
    0x4de,
    0x4df,
    0x4e1,
    0x4e2,
    0x4e3,
    0x520,
    0x56e,
    0x572,
    0x580,
    0x581,
    0x5aa,
    0x5b0,
    0x5E7,
    0x62e,
    0x637,
    0x66b
]

function recipes(r) {
    idxs = array_filter(range(0, 51), i => i != 0x12 && i != 0x2e)
    return array_map(idxs, x => game_flag(0x136 + x)[r])
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
yellow_plant_superblock = game_flag(0x57a)
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
ch4_fryingpanchest = game_flag(0x476)
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
    return any_of(re, r =>
        region_check[r] && trigger_when(prior(story_progress[r] == story) && story_progress[r] == story+1) &&
        __ornext(prev(story_progress[r] == story) || prev(area_id[r] == 0)) &&
        __ornext(map_id[r] == exit_map || map_id[r] == map) && area_id[r] == area &&
        trigger_when(prev(area_id[r] == 0)) && prev(map_id[r] == cutscene_map) && trigger_when(map_id[r] == exit_map)
    )
}

function rac(story, area, map, yes_flags, no_flags) {
    return any_of(re, r =>
        region_check[r] && prev(area_id[r] == area) && prev(map_id[r] == map) &&
        prev(story_progress[r] == story) && story_progress[r] == story+1 &&
        all_of(yes_flags, flag => flag[r] == 1) &&
        all_of(no_flags, flag => flag[r] == 0) 
    )
}
// $02D574: Screen Wideness (Signed Value/Load a save state to make it work)
function screen_wideness() => byte(0x02D574)

// $074026: Joystick Rotation
//          Bit0= Up
//          Bit1= Down
//          Bit2= Left
//          Bit3= Right
function joystick_rotation() => byte(0x074026)

// $074097: Event ID
//          00= Overworld
//          01= Mario is in a battle
//          02= Game Paused
function event_id() => byte(0x074097)

// $07409A: Cheats
//          01 = Always Spawn Chuck Quizmo
function cheats() => byte(0x07409A)

// $07409B: Cheats
//          01= Enemies can't touch Mario
//          02 = Defeat Enemies on Contact
//          03 = Auto-Defeat all enemies in Battle
//          04 = Automatically Run Away
function cheats_2() => byte(0x07409B)

// $0740A1: Player Current Character
//          (Loaded until you enter a new map)
//          00=Mario
//          01=Peach
//          03=Invisible
//          05=Peach (Can use Parasol)
function player_current_character() => byte(0x0740A1)

// $0740A2: Map Loaded while using a Partner Byte Flag
//          Needed only by Watt and Lakilester, to enter a new map ridding laki or using watt
function map_loaded_while_using_a_partner_byte_flag() => byte(0x0740A2)

// $0740A8: Area/World ID
//          00=Goomba Village
//          01=Toad Town
//          02=Sewers
//          03=Whale Belly
//          04=Peach Castle
//          05=Star Summit
//          06=Koopa Village
//          07=Koopa Bros. Fortress
//          08=Mt. Rugged
//          09=Dry Dry Outpost
//          0A=Dry Dry Desert
//          0B=Dry Dry Ruins
//          0C=Forever Forest
//          0D=Boo's Mansion
//          0E=Gusty Gulch
//          0F=Tubba Blubba's Castle
//          10=Shy Guy's Toybox
//          11=Lavalava Island
//          12=Mt. Lavalava
//          13=Flower Fields
//          14=Snow Road
//          15=Crystal Palace
//          16=Bowser's Castle
//          17=Outside Peach's Castle
//          17=Credits Map
//          19=Playroom/Minigames
//          1A=Game Over Map
//          1B=Test Maps
function area_world_id() => byte(0x0740A8)
function area_world_id_word() => word(0x0740A8)

MapLookup = {
    0x00: "Goomba Village",
    0x01: "Toad Town",
    0x02: "Sewers",
    0x03: "Whale Belly",
    0x04: "Peach Castle",
    0x05: "Star Summit",
    0x06: "Koopa Village",
    0x07: "Koopa Bros. Fortress",
    0x08: "Mt. Rugged",
    0x09: "Dry Dry Outpost",
    0x0A: "Dry Dry Desert",
    0x0B: "Dry Dry Ruins",
    0x0C: "Forever Forest",
    0x0D: "Boo's Mansion",
    0x0E: "Gusty Gulch",
    0x0F: "Tubba Blubba's Castle",
    0x10: "Shy Guy's Toybox",
    0x11: "Lavalava Island",
    0x12: "Mt. Lavalava",
    0x13: "Flower Fields",
    0x14: "Snow Road",
    0x15: "Crystal Palace",
    0x16: "Bowser's Castle",
    0x17: "Outside Peach's Castle",
}

// $0740B0: Current Map Entry ID loaded
function current_map_entry_id_loaded() => byte(0x0740B0)

// $0740B2: Map ID (This address work together with World ID)
function map_id() => byte(0x0740B2)

// $074189: Current Save File/Slot
function current_save_file_slot() => byte(0x074189)

// $0779C4: File 1 Total Play Time 1 (16bits)
//          (This value can't be edited, only change when you saved)
function file_1_total_play_time_1() => word(0x0779C4)

// $0779C6: File 1 Total Play Time 2 (16bits)
//          (This value can't be edited, only change when you saved)
function file_1_total_play_time_2() => word(0x0779C6)

// $0779C8: File 1 Name - Character 1
function file_1_name_character_1() => byte(0x0779C8)

// $0779CB: File 1 Total Star Spirits Rescued
//          (Only change when player save)
function file_1_total_star_spirits_rescued() => byte(0x0779CB)

// $0779CC: File 1 Name - Character 5
function file_1_name_character_5() => byte(0x0779CC)

// $0779CD: File 1 Name - Character 4
function file_1_name_character_4() => byte(0x0779CD)

// $0779CE: File 1 Name - Character 3
function file_1_name_character_3() => byte(0x0779CE)

// $0779CF: File 1 Name - Character 2
function file_1_name_character_2() => byte(0x0779CF)

// $0779D1: File 1 Name - Character 8
function file_1_name_character_8() => byte(0x0779D1)

// $0779D2: File 1 Name - Character 7
function file_1_name_character_7() => byte(0x0779D2)

// $0779D3: File 1 Name - Character 6
function file_1_name_character_6() => byte(0x0779D3)

// $0969D4: [EU] [8-bit] Encounter state
//          
//          0x02 = Neutral
//          
//          0x03 = Pre-battle
//          
//          0x04 = Conversation
//          
//          0x05 = Post-battle
function eu_encounter_state() => byte(0x0969D4)

// $09A5E0: [JP] [8-bit] Encounter state
//          
//          0x02 = Neutral
//          
//          0x03 = Pre-battle
//          
//          0x04 = Conversation
//          
//          0x05 = Post-battle
function jp_encounter_state() => byte(0x09A5E0)

// $09A600: [US] [8-bit] Encounter state
//          0x02 = Neutral
//          0x03 = Pre-battle
//          0x04 = Conversation
//          0x05 = Post-battle
function us_encounter_state() => byte(0x09A600)

// $0A0942: Fade Effect when you enter a new area
function fade_effect_when_you_enter_a_new_area() => byte(0x0A0942)

// $0A094A: 00 = Demo mode/Main Menu
//          01= In game
//          02= Game Booting

// $0AE070: Hand Pointer 2 enemies right ea/ec left c0/c2
//          3 Enemies: 9d-9f(ground)
//          c5-c7(flying) c8-ca(ground)
//          ec-ee(flying) ea-ec(ground)
//          2 Enemies Left enemy Bit 7+6 set Right enemy Bit 765 set
//          1 Enemy c0-c2 Bit 7+6 set 1 changing
function hand_pointer_2_enemies_right_ea_ec_left_c0_c2() => dword(0x0AE070)

// $0B0F38: [Pointer][+46] Battle ID for NPC 1
function pointer_battle_id_for_npc_1() => dword(0x0B0F38)

// $0B0FC0: [8bit] enemy map data
//          
//          shy guy blue zone left side
//          bit0 - Red shy guy
//          bit1 - yellow shy guy 1
//          bit2 - yellow shy guy 2
//          bit3 - blue shy guy
//          bit4 - green shy guy
function enemy_map_data() => byte(0x0B0FC0)

// $0B1050: [8bit] enemy map data
//          shy guy blue zone right side
//          
//          bit 0 - pink shy guy
function enemy_map_data_2() => byte(0x0B1050)

// $0B1200: [8bit] enemy map data
//          
//          shy guy blue zone left side
//          bit 1 - 3 yellow shy guy fight
function enemy_map_data_3() => byte(0x0B1200)

// $0B1D80: 01 = Mario isn't touching the ground
function mario_isnt_touching_the_ground() => byte(0x0B1D80)

// $0B1D9A: Camera Zoom 16bits
function camera_zoom_16bits() => word(0x0B1D9A)

// $0B2D8C: Pause
function pause() => byte(0x0B2D8C)

// $0DACF8: Last File Saved/Loaded
//          b2=Main Menu
//          00=Slot 1
//          01=Slot 2
//          02=Slot 3
//          03=Slot 4
function last_file_saved_loaded() => byte(0x0DACF8)

// $0DACFC: Number of times you have saved
function number_of_times_you_have_saved() => byte(0x0DACFC)

// $0DBC70: Progress Flags - Start
function progress_flags_start() => byte(0x0DBC70)

// $0DBC76: Bit4 = Hidden Block in 00-02
//          0x740a8=00
//          0x740b2=02
function hidden_block_in_00_02() => bit4(0x0DBC76)

// $0DBC7B: Bit7=Saving First Time Dialog
function saving_first_time_dialog() => byte(0x0DBC7B)

// $0DBC7C: Bit1 = You got an item for first time Flag
function you_got_an_item_for_first_time_flag() => byte(0x0DBC7C)

// $0DBC7D: [8bit] Luigi State
//          bit1 - luigi is outside of his room
function luigi_state_luigi_is_outside_of_his_room() => bit1(0x0DBC7D)

// $0DBC85: Partners Letters Flag 1 8bits
//          Bit4-7 = Letters 1-4 readed
function partners_letters_flag_1_8bits_letters_1_4_readed() => bit4(0x0DBC85)
function partners_letters_flag_1_8bits_letters_1_4_readed_bit5() => bit5(0x0DBC85)
function partners_letters_flag_1_8bits_letters_1_4_readed_bit6() => bit6(0x0DBC85)
function partners_letters_flag_1_8bits_letters_1_4_readed_bit7() => bit7(0x0DBC85)

// $0DBC86: Partners Letters Flag 2
//          ff = Letters 5-13 Readed
function partners_letters_flag_2_bit0() => bit0(0x0DBC86)
function partners_letters_flag_2_bit1() => bit1(0x0DBC86)
function partners_letters_flag_2_bit2() => bit2(0x0DBC86)
function partners_letters_flag_2_bit3() => bit3(0x0DBC86)
function partners_letters_flag_2_bit4() => bit4(0x0DBC86)
function partners_letters_flag_2_bit5() => bit5(0x0DBC86)
function partners_letters_flag_2_bit6() => bit6(0x0DBC86)
function partners_letters_flag_2_bit7() => bit7(0x0DBC86)

// $0DBC87: Partners Letters Flag 3
//          Bit0-6 = Letters 14-20 Readed
function partners_letters_flag_3_letters_14_20_readed() => bit0(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit1() => bit1(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit2() => bit2(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit3() => bit3(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit4() => bit4(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit5() => bit5(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit6() => bit6(0x0DBC87)

// $0DBC96: Recipes Flag 1 16bits
function recipes_flag_1_16bits_bit6() => bit6(0x0DBC96)
function recipes_flag_1_16bits_bit7() => bit7(0x0DBC96)

// $0DBC98: Recipes Flag 2 16bits
function recipes_flag_2_16bits_bit0() => bit0(0x0DBC98)
function recipes_flag_2_16bits_bit1() => bit1(0x0DBC98)
function recipes_flag_2_16bits_bit2() => bit2(0x0DBC98)
function recipes_flag_2_16bits_bit3() => bit3(0x0DBC98)
function recipes_flag_2_16bits_bit4() => bit4(0x0DBC98)
function recipes_flag_2_16bits_bit5() => bit5(0x0DBC98)
function recipes_flag_2_16bits_bit6() => bit6(0x0DBC98)
function recipes_flag_2_16bits_bit7() => bit7(0x0DBC98)

// $0DBC9A: Recipes Flag 3 16bits
function recipes_flag_3_16bits_bit0() => bit0(0x0DBC9A)
function recipes_flag_3_16bits_bit1() => bit1(0x0DBC9A)
function recipes_flag_3_16bits_bit2() => bit2(0x0DBC9A)
function recipes_flag_3_16bits_bit3() => bit3(0x0DBC9A)
function recipes_flag_3_16bits_bit4() => bit4(0x0DBC9A)
function recipes_flag_3_16bits_bit5() => bit5(0x0DBC9A)
function recipes_flag_3_16bits_bit6() => bit6(0x0DBC9A)
function recipes_flag_3_16bits_bit7() => bit7(0x0DBC9A)

// $0DBC9C: Recipes Flag 4 16bits
function recipes_flag_4_16bits_bit0() => bit0(0x0DBC9C)
function recipes_flag_4_16bits_bit1() => bit1(0x0DBC9C)
function recipes_flag_4_16bits_bit2() => bit2(0x0DBC9C)
function recipes_flag_4_16bits_bit3() => bit3(0x0DBC9C)
function recipes_flag_4_16bits_bit5() => bit5(0x0DBC9C)
function recipes_flag_4_16bits_bit6() => bit6(0x0DBC9C)
function recipes_flag_4_16bits_bit7() => bit7(0x0DBC9C)

// $0DBCA2: Bit5 = Hidden Block 1 in 02-09
//          Bit6 = Hidden Block 2 in 02-09
//          Bit7 = Hidden Block 3 in 02-09
//          0x740a8=02
//          0x740b2=09
function hidden_block_1_in_02_09() => bit5(0x0DBCA2)
function hidden_block_2_in_02_09() => bit6(0x0DBCA2)
function hidden_block_3_in_02_09() => bit7(0x0DBCA2)

// $0DBCA3: Bit0 = Hidden Block in 02-0E
//          Bit4 = Hidden Block 1 in 02-11
//          Bit5 = Hidden Block 2 in 02-11
//          Bit6 = Hidden Block 3 in 02-11
//          Bit7 = Hidden Block 4 in 02-11
//          0x740a8=02
//          0x740b2=XX
function hidden_block_in_02_0e() => bit0(0x0DBCA3)
function hidden_block_1_in_02_11() => bit4(0x0DBCA3)
function hidden_block_2_in_02_11() => bit5(0x0DBCA3)
function hidden_block_3_in_02_11() => bit6(0x0DBCA3)
function hidden_block_4_in_02_11() => bit7(0x0DBCA3)

// $0DBCA4: Bit0 = Hidden Block 1 in 02-13
//          Bit1 = Hidden Block 2 in 02-13
//          Bit2 = Hidden Block 3 in 02-13
//          Bit4 = Hidden Block in 02-14
//          0x740a8=02
//          0x740b2=XX
function hidden_block_1_in_02_13() => bit0(0x0DBCA4)
function hidden_block_2_in_02_13() => bit1(0x0DBCA4)
function hidden_block_3_in_02_13() => bit2(0x0DBCA4)
function hidden_block_in_02_14() => bit4(0x0DBCA4)

// $0DBCBA: Bit7= Hidden Block in 06-07
//          0x740a8=06
//          0x740b2=07
function hidden_block_in_06_07() => bit7(0x0DBCBA)

// $0DBCD3: Bit7= Hidden Block in 0A-07
//          0x740a8=0A
//          0x740b2=07
function hidden_block_in_0a07() => bit7(0x0DBCD3)

// $0DBCD5: Bit2= Hidden Block in 0A-12
//          Bit5= Hidden Block in 0A-22
//          Bit6= Hidden Block in 0A-2B
//          0x740a8=0A
//          0x740b2=2B
function hidden_block_in_0a12() => bit2(0x0DBCD5)
function hidden_block_in_0a22() => bit5(0x0DBCD5)
function hidden_block_in_0a2b() => bit6(0x0DBCD5)

// $0DBCFA: Bit6 = Hidden Block 1 in 10-00
//          Bit7 = Hidden Block 2 in 10-00
//          0x740a8=10
//          0x740b2=00
function hidden_block_1_in_10_00() => bit6(0x0DBCFA)
function hidden_block_2_in_10_00() => bit7(0x0DBCFA)

// $0DBCFB: Bit3 = Hidden Block in 10-01
//          Bit5 = Hidden Block in 10-02
//          0x740a8=10
//          0x740b2=XX
function hidden_block_in_10_01() => bit3(0x0DBCFB)
function hidden_block_in_10_02() => bit5(0x0DBCFB)

// $0DBCFE: Bit0 = Hidden Block 1 in 10-04
//          Bit1 = Hidden Block 2 in 10-04
//          Bit3 = Hidden Block in 10-05
//          0x740a8=10
//          0x740b2=XX
function hidden_block_1_in_10_04() => bit0(0x0DBCFE)
function hidden_block_2_in_10_04() => bit1(0x0DBCFE)
function hidden_block_in_10_05() => bit3(0x0DBCFE)

// $0DBCFF: Bit1 = Hidden Block in 10-07
//          0x740a8=10
//          0x740b2=07
function hidden_block_in_10_07() => bit1(0x0DBCFF)

// $0DBD03: Bit0 = Hidden Block in 10-09
//          Bit2 = Red Hidden Block in 10-0A
//          Bit5 = Hidden Block 1 in 10-0A
//          Bit6 = Hidden Block 2 in 10-0A
//          0x740a8=10
//          0x740b2=XX
function hidden_block_in_10_09() => bit0(0x0DBD03)
function red_hidden_block_in_10_0a() => bit2(0x0DBD03)
function hidden_block_1_in_10_0a() => bit5(0x0DBD03)
function hidden_block_2_in_10_0a() => bit6(0x0DBD03)

// $0DBD04: Bit1 = Hidden Block in 10-0C
//          0x740a8=10
//          0x740b2=0C
function hidden_block_in_10_0c() => bit1(0x0DBD04)

// $0DBD0B: Bit6 = Hidden Block 1 in 11-01
//          Bit7 = Hidden Block 2 in 11-01
//          0x740a8=11
//          0x740b2=01
function hidden_block_1_in_11_01() => bit6(0x0DBD0B)
function hidden_block_2_in_11_01() => bit7(0x0DBD0B)

// $0DBD0C: Bit1 = Hidden Block in 11-08
//          Bit2 = Hidden Block in 11-0C
//          Bit3 = Hidden Block in 11-0D
//          0x740a8=11
//          0x740b2=XX
function hidden_block_in_11_08() => bit1(0x0DBD0C)
function hidden_block_in_11_0c() => bit2(0x0DBD0C)
function hidden_block_in_11_0d() => bit3(0x0DBD0C)

// $0DBD14: Bit0 = Hidden Block in 12-05
//          0x740a8=12
//          0x740b2=05
function hidden_block_in_12_05() => bit0(0x0DBD14)

// $0DBD1D: Bit6 = Hidden Block in 13-0C
//          0x740a8=13
//          0x740b2=0C
function hidden_block_in_13_0c() => bit6(0x0DBD1D)

// $0DBD1E: Bit2 = Hidden Block in 13-12
//          0x740a8=13
//          0x740b2=12
function hidden_block_in_13_12() => bit2(0x0DBD1E)

// $0DBD20: Bit0 = Hidden Block 1 in 13-11
//          Bit1 = Hidden Block 2 in 13-11
//          0x740a8=13
//          0x740b2=11
function hidden_block_1_in_13_11() => bit0(0x0DBD20)
function hidden_block_2_in_13_11() => bit1(0x0DBD20)

// $0DBD25: Bit2 = Hidden Block in 14-04
//          0x740a8=14
//          0x740b2=04
function hidden_block_in_14_04() => bit2(0x0DBD25)

// $0DBD26: Bit0 = Hidden Block in 14-06
//          0x740a8=14
//          0x740b2=06
function hidden_block_in_14_06() => bit0(0x0DBD26)

// $0DBD2C: Bit7 = Hidden Block in 15-12
//          0x740a8=15
//          0x740b2=12
function hidden_block_in_15_12() => bit7(0x0DBD2C)

// $0DBD35: Bit6 = Hidden Block in 16-25
//          0x740a8=16
//          0x740b2=25
function hidden_block_in_16_25() => bit6(0x0DBD35)

// $0DBD36: Bit7 = Hidden Block in 16-31
//          0x740a8=16
//          0x740b2=31
function hidden_block_in_16_31() => bit7(0x0DBD36)

// $0DBD3D: Bit3 = Hidden Block in 17-02
//          0x740a8=17
//          0x740b2=02
function hidden_block_in_17_02() => bit3(0x0DBD3D)

// $0DBD53: Bit1=Goombario First Battle Dialog
function goombario_first_battle_dialog() => byte(0x0DBD53)

// $0DBD73: Story Progress byte (8-bits)
//          80: Game Started - 60: Game Finished
function story_progress_byte() => byte(0x0DBD73)

// $0DBD7C: [Bitfield] Mario's letters
//          Bit0 = Kolorado 2
//          Bit1 = Yoshi Kids
//          Bit2 = Rowf
//          Bit3 = Wise Wisterwood
function bitfield_marios_letters_kolorado_2() => bit0(0x0DBD7C)
function bitfield_marios_letters_yoshi_kids() => bit1(0x0DBD7C)
function bitfield_marios_letters_rowf() => bit2(0x0DBD7C)
function bitfield_marios_letters_wise_wisterwood() => bit3(0x0DBD7C)

// $0DBD7D: [Bitfield] Mario's letters
//          Bit0 = Little T.
//          Bit1 = Vanna T.
//          Bit2 = Koopa Bros.
//          Bit3 = Koopa Troopas
//          Bit4 = Moustafa
//          Bit5 = Kolorado
//          Bit6 = Goombaria
//          Bit7 = Tayce T.
function bitfield_marios_letters_2_little_t() => bit0(0x0DBD7D)
function bitfield_marios_letters_2_vanna_t() => bit1(0x0DBD7D)
function bitfield_marios_letters_2_koopa_bros() => bit2(0x0DBD7D)
function bitfield_marios_letters_2_koopa_troopas() => bit3(0x0DBD7D)
function bitfield_marios_letters_2_moustafa() => bit4(0x0DBD7D)
function bitfield_marios_letters_2_kolorado() => bit5(0x0DBD7D)
function bitfield_marios_letters_2_goombaria() => bit6(0x0DBD7D)
function bitfield_marios_letters_2_tayce_t() => bit7(0x0DBD7D)

// $0DBD7E: Luigi's Diary 1
//          Bit0= Page 9
//          Bit1= Page 10
//          Bit2= Page 11
//          Bit3= Page 12
function luigis_diary_1_page_9() => bit0(0x0DBD7E)
function luigis_diary_1_page_10() => bit1(0x0DBD7E)
function luigis_diary_1_page_11() => bit2(0x0DBD7E)
function luigis_diary_1_page_12() => bit3(0x0DBD7E)

// $0DBD7F: Luigi's Diary 2
//          ff = Pages 1-8 Readed
function luigis_diary_2_bit0() => bit0(0x0DBD7F)
function luigis_diary_2_bit1() => bit1(0x0DBD7F)
function luigis_diary_2_bit2() => bit2(0x0DBD7F)
function luigis_diary_2_bit3() => bit3(0x0DBD7F)
function luigis_diary_2_bit4() => bit4(0x0DBD7F)
function luigis_diary_2_bit5() => bit5(0x0DBD7F)
function luigis_diary_2_bit6() => bit6(0x0DBD7F)
function luigis_diary_2_bit7() => bit7(0x0DBD7F)

// $0DBD8F: Degree cards
function degree_cards() => byte(0x0DBD8F)

// $0DBDE8: [8bit] times you have whacked whacka
function times_you_have_whacked_whacka() => byte(0x0DBDE8)

// $0DBEDC: Tattle Flags 1
//          Bit0=Bill Blaster
//          Bit1=Cleft
//          Bit2=Monty Mole
//          Bit3=Bandit
//          Bit4=Pokey
//          Bit5=Pokey Mummy
//          Bit6=Swooper
//          Bit7=Buzzy Beetle
function tattle_flags_1() => word(0x0DBEDC)
function tattle_flags_1_bill_blaster() => bit0(0x0DBEDC)
function tattle_flags_1_cleft() => bit1(0x0DBEDC)
function tattle_flags_1_monty_mole() => bit2(0x0DBEDC)
function tattle_flags_1_bandit() => bit3(0x0DBEDC)
function tattle_flags_1_pokey() => bit4(0x0DBEDC)
function tattle_flags_1_pokey_mummy() => bit5(0x0DBEDC)
function tattle_flags_1_swooper() => bit6(0x0DBEDC)
function tattle_flags_1_buzzy_beetle() => bit7(0x0DBEDC)

// $0DBEDD: Tattle Flags 2
//          Bit0=Paragoomba
//          Bit1=Spiked Goomba
//          Bit2=Fuzzy
//          Bit3=Koopa Troopa
//          Bit4=Paratroopa
//          Bit5=Bob-omb
//          Bit7=Bullet Bill
function tattle_flags_2_paragoomba() => bit0(0x0DBEDD)
function tattle_flags_2_spiked_goomba() => bit1(0x0DBEDD)
function tattle_flags_2_fuzzy() => bit2(0x0DBEDD)
function tattle_flags_2_koopa_troopa() => bit3(0x0DBEDD)
function tattle_flags_2_paratroopa() => bit4(0x0DBEDD)
function tattle_flags_2_bobomb() => bit5(0x0DBEDD)
function tattle_flags_2_bullet_bill() => bit7(0x0DBEDD)

// $0DBEDE: Tattle Flags 3
//          Bit2=Gloomba
//          Bit3=Paragloomba
//          Bit4=Spiked Gloomba
//          Bit5=Dark Koopa
//          Bit7=Goomba
function tattle_flags_3() => byte(0x0DBEDE)
function tattle_flags_3_gloomba() => bit2(0x0DBEDE)
function tattle_flags_3_paragloomba() => bit3(0x0DBEDE)
function tattle_flags_3_spiked_gloomba() => bit4(0x0DBEDE)
function tattle_flags_3_dark_koopa() => bit5(0x0DBEDE)
function tattle_flags_3_goomba() => bit7(0x0DBEDE)

// $0DBEE0: Tattle Flags 4
//          Bit0=Monty Mole (Green)
//          Bit1=Bzzap!
//          Bit2=Crazee Dayzee
//          Bit3=Amazy Dayzee
//          Bit4=Ruff Puff
//          Bit5=Spike?
//          Bit6=Gulpit
function tattle_flags_4() => word(0x0DBEE0)
function tattle_flags_4_monty_mole_green() => bit0(0x0DBEE0)
function tattle_flags_4_bzzap() => bit1(0x0DBEE0)
function tattle_flags_4_crazee_dayzee() => bit2(0x0DBEE0)
function tattle_flags_4_amazy_dayzee() => bit3(0x0DBEE0)
function tattle_flags_4_ruff_puff() => bit4(0x0DBEE0)
function tattle_flags_4_spike() => bit5(0x0DBEE0)
function tattle_flags_4_gulpit() => bit6(0x0DBEE0)

// $0DBEE1: Tattle Flags 5
//          Bit1=Jungle Fuzzy
//          Bit2=Spear Guy
//          Bit3=Lava Bubble
//          Bit4=Spike Top
//          Bit5=Putrid Piranha
//          Bit6=Lakitu
//          Bit7=Spiny
function tattle_flags_5_jungle_fuzzy() => bit1(0x0DBEE1)
function tattle_flags_5_spear_guy() => bit2(0x0DBEE1)
function tattle_flags_5_lava_bubble() => bit3(0x0DBEE1)
function tattle_flags_5_spike_top() => bit4(0x0DBEE1)
function tattle_flags_5_putrid_piranha() => bit5(0x0DBEE1)
function tattle_flags_5_lakitu() => bit6(0x0DBEE1)
function tattle_flags_5_spiny() => bit7(0x0DBEE1)

// $0DBEE2: Tattle Flags 6
//          Bit0=Groove Guy
//          Bit1=Sky Guy
//          Bit2=Medi Guy
//          Bit3=Pyro Guy
//          Bit4=Spy Guy
//          Bit6=Hurt Plant
//          Bit7=M.Bush.
function tattle_flags_6() => word(0x0DBEE2)
function tattle_flags_6_groove_guy() => bit0(0x0DBEE2)
function tattle_flags_6_sky_guy() => bit1(0x0DBEE2)
function tattle_flags_6_medi_guy() => bit2(0x0DBEE2)
function tattle_flags_6_pyro_guy() => bit3(0x0DBEE2)
function tattle_flags_6_spy_guy() => bit4(0x0DBEE2)
function tattle_flags_6_hurt_plant() => bit6(0x0DBEE2)
function tattle_flags_6_m_bush() => bit7(0x0DBEE2)

// $0DBEE3: Tattle Flags 7
//          Bit0=Stone Chomp
//          Bit1=Piranha Plant
//          Bit2=Forest Fuzzy
//          Bit3=Hyper Goomba
//          Bit4=Hyper Paragoomba
//          Bit5=Hyper Cleft
//          Bit6=Clubba
//          Bit7=Shy Guy
function tattle_flags_7_stone_chomp() => bit0(0x0DBEE3)
function tattle_flags_7_piranha_plant() => bit1(0x0DBEE3)
function tattle_flags_7_forest_fuzzy() => bit2(0x0DBEE3)
function tattle_flags_7_hyper_goomba() => bit3(0x0DBEE3)
function tattle_flags_7_hyper_paragoomba() => bit4(0x0DBEE3)
function tattle_flags_7_hyper_cleft() => bit5(0x0DBEE3)
function tattle_flags_7_clubba() => bit6(0x0DBEE3)
function tattle_flags_7_shy_guy() => bit7(0x0DBEE3)

// $0DBEE4: Tattle Flags 8
//          Bit0=Magikoopa (Bowser Castle)
//          Bit2=Red Magikoopa
//          Bit3=Green Magikoopa
//          Bit5=Yellow Magikoopa
//          Bit7=Gray Magikoopa
function tattle_flags_8() => word(0x0DBEE4)
function tattle_flags_8_magikoopa_bowser_castle() => bit0(0x0DBEE4)
function tattle_flags_8_red_magikoopa() => bit2(0x0DBEE4)
function tattle_flags_8_green_magikoopa() => bit3(0x0DBEE4)
function tattle_flags_8_yellow_magikoopa() => bit5(0x0DBEE4)
function tattle_flags_8_gray_magikoopa() => bit7(0x0DBEE4)

// $0DBEE5: Tattle Flags 9
//          Bit1=Bombshell Bill Blaster
//          Bit2=Bombshell Bill
//          Bit3=Hammer Bros.
//          Bit4=Koopatrol
function tattle_flags_9_bombshell_bill_blaster() => bit1(0x0DBEE5)
function tattle_flags_9_bombshell_bill() => bit2(0x0DBEE5)
function tattle_flags_9_hammer_bros() => bit3(0x0DBEE5)
function tattle_flags_9_koopatrol() => bit4(0x0DBEE5)

// $0DBEE6: Tattle Flags 10
//          Bit5=Ember
//          Bit6=Bony Beetle
//          Bit7=Dry Bones
function tattle_flags_10() => word(0x0DBEE6)
function tattle_flags_10_ember() => bit5(0x0DBEE6)
function tattle_flags_10_bony_beetle() => bit6(0x0DBEE6)
function tattle_flags_10_dry_bones() => bit7(0x0DBEE6)

// $0DBEE7: Tattle Flags 11
//          Bit0=White Clubba
//          Bit1=Frost Piranha
//          Bit2=Swoopula
//          Bit3=Duplighost
function tattle_flags_11_white_clubba() => bit0(0x0DBEE7)
function tattle_flags_11_frost_piranha() => bit1(0x0DBEE7)
function tattle_flags_11_swoopula() => bit2(0x0DBEE7)
function tattle_flags_11_duplighost() => bit3(0x0DBEE7)

// $0DBEEB: Tattle Flags 12
//          Bit2=White Magikoopa
function tattle_flags_12() => byte(0x0DBEEB)
function tattle_flags_12_white_magikoopa() => bit2(0x0DBEEB)

// $0DBEEC: Tattle Flags 13
//          Bit0=Blue Goomba
//          Bit1=Red Goomba
//          Bit2=Goomba King
function tattle_flags_13() => word(0x0DBEEC)
function tattle_flags_13_blue_goomba() => bit0(0x0DBEEC)
function tattle_flags_13_red_goomba() => bit1(0x0DBEEC)
function tattle_flags_13_goomba_king() => bit2(0x0DBEEC)

// $0DBEED: Tattle Flags 14
//          Bit1=Jr Troopa 2
//          Bit2=Jr Troopa 3
//          Bit3=Jr Troopa 4
//          Bit4=Jr Troopa 5
//          Bit5=Jr. Troppa 6
function tattle_flags_14_jr_troopa_2() => bit1(0x0DBEED)
function tattle_flags_14_jr_troopa_3() => bit2(0x0DBEED)
function tattle_flags_14_jr_troopa_4() => bit3(0x0DBEED)
function tattle_flags_14_jr_troopa_5() => bit4(0x0DBEED)
function tattle_flags_14_jr_troppa_6() => bit5(0x0DBEED)

// $0DBEEF: Tattle Flags 15
//          Bit2=The Master1
//          Bit3=The Master2
//          Bit4=The Master3
//          Bit5=Chan
//          Bit6=Lee
function tattle_flags_15() => byte(0x0DBEEF)
function tattle_flags_15_the_master1() => bit2(0x0DBEEF)
function tattle_flags_15_the_master2() => bit3(0x0DBEEF)
function tattle_flags_15_the_master3() => bit4(0x0DBEEF)
function tattle_flags_15_chan() => bit5(0x0DBEEF)
function tattle_flags_15_lee() => bit6(0x0DBEEF)

// $0DBEF0: Tattle Flags 16
//          Bit1=Big Lantern Ghost
//          Bit3=Lava Piranha
//          bit4 - lava piranha
//          Bit5=Lava Bud
//          bit6=Lava bud
//          Bit7=Petit Piranha
function tattle_flags_16() => word(0x0DBEF0)
function tattle_flags_16_big_lantern_ghost() => bit1(0x0DBEF0)
function tattle_flags_16_lava_piranha() => bit3(0x0DBEF0)
function tattle_flags_16_lava_piranha_bit4() => bit4(0x0DBEF0)
function tattle_flags_16_lava_bud() => bit5(0x0DBEF0)
function tattle_flags_16_lava_bud_bit6() => bit6(0x0DBEF0)
function tattle_flags_16_petit_piranha() => bit7(0x0DBEF0)

// $0DBEF1: Tattle Flags 17
//          Bit0=Shy Squad
//          Bit2=General Guy
//          Bit7=Anti Guy (Shy Guy Toy Box)
function tattle_flags_17_shy_squad() => bit0(0x0DBEF1)
function tattle_flags_17_general_guy() => bit2(0x0DBEF1)
function tattle_flags_17_anti_guy_shy_guy_toy_box() => bit7(0x0DBEF1)

// $0DBEF2: Tattle Flags 18
//          Bit0= Buzzar
//          Bit1=Tutankoopa
//          Bit2=Chomp
//          Bit3=Tubba Blubba (Windmill)
//          Bit5=Tubba's Heart
//          Bit6=Stilt Guy
//          Bit7=Shy Stack
function tattle_flags_18() => word(0x0DBEF2)
function tattle_flags_18_buzzar() => bit0(0x0DBEF2)
function tattle_flags_18_tutankoopa() => bit1(0x0DBEF2)
function tattle_flags_18_chomp() => bit2(0x0DBEF2)
function tattle_flags_18_tubba_blubba_windmill() => bit3(0x0DBEF2)
function tattle_flags_18_tubbas_heart() => bit5(0x0DBEF2)
function tattle_flags_18_stilt_guy() => bit6(0x0DBEF2)
function tattle_flags_18_shy_stack() => bit7(0x0DBEF2)

// $0DBEF3: Tattle Flags 19
//          Bit1=Bowser???
//          Bit3=G Ninjakoopa
//          Bit4=R Ninjakoopa
//          Bit5=B Ninjakoopa
//          Bit6=Y Ninjakoopa
function tattle_flags_19_bowser() => bit1(0x0DBEF3)
function tattle_flags_19_g_ninjakoopa() => bit3(0x0DBEF3)
function tattle_flags_19_r_ninjakoopa() => bit4(0x0DBEF3)
function tattle_flags_19_b_ninjakoopa() => bit5(0x0DBEF3)
function tattle_flags_19_y_ninjakoopa() => bit6(0x0DBEF3)

// $0DBEF5: Tattle Flags 20
//          Bit0=Electro Blooper
//          Bit2=Super Blooper
//          Bit4=Blooper Baby
function tattle_flags_20() => byte(0x0DBEF5)
function tattle_flags_20_electro_blooper() => bit0(0x0DBEF5)
function tattle_flags_20_super_blooper() => bit2(0x0DBEF5)
function tattle_flags_20_blooper_baby() => bit4(0x0DBEF5)

// $0DBEF6: Tattle Flags 21
//          Bit1=Bowser2
//          Bit3=Bowser3
//          Bit7=Blooper
function tattle_flags_21() => word(0x0DBEF6)
function tattle_flags_21_bowser2() => bit1(0x0DBEF6)
function tattle_flags_21_bowser3() => bit3(0x0DBEF6)
function tattle_flags_21_blooper() => bit7(0x0DBEF6)

// $0DBEF7: Tattle Flags 22
//          Bit1=Kent C. Koopa
//          Bit2=Huff N. Puff.
//          Bit3=Tuff Puff
//          Bit4=Monstar
//          Bit5=Crystal King
//          Bit7=Crystal Bit
function tattle_flags_22_kent_c_koopa() => bit1(0x0DBEF7)
function tattle_flags_22_huff_n_puff() => bit2(0x0DBEF7)
function tattle_flags_22_tuff_puff() => bit3(0x0DBEF7)
function tattle_flags_22_monstar() => bit4(0x0DBEF7)
function tattle_flags_22_crystal_king() => bit5(0x0DBEF7)
function tattle_flags_22_crystal_bit() => bit7(0x0DBEF7)

// $0DBF71: Area Flag 1 (this one is used per world)
//          (Koopa Bros Fortress)
//          Bit3= 2nd Flame Destroyed
//          Bit4= 1st Flame Destroyed
function area_flag_1() => byte(0x0DBF71)

// $0DBF72: Area Flag 2 (this one is used per world)
//          (Mt Lavalava)
//          Bit2= Flame 1 Destroyed
//          Bit3= Flame 2 Destroyed
//          Bit4= Flame 3 Destroyed
//          Bit5= Flame 4 Destroyed
//          Bit6= Flame 5 Destroyed
//          Bit7= Flame 6 Destroyed
function area_flag_2_flame_1_destroyed() => bit2(0x0DBF72)
function area_flag_2_flame_2_destroyed() => bit3(0x0DBF72)
function area_flag_2_flame_3_destroyed() => bit4(0x0DBF72)
function area_flag_2_flame_4_destroyed() => bit5(0x0DBF72)
function area_flag_2_flame_5_destroyed() => bit6(0x0DBF72)
function area_flag_2_flame_6_destroyed() => bit7(0x0DBF72)

// $0DBF76: [8bit] chet rippo flag
//          bit2 - When on, he has been activated
function chet_rippo_flag_when_on_he_has_been_activated() => bit2(0x0DBF76)

// $0DBF9A: [8bit]
//          Quiz Show answers - correct answer count for Peach
function quiz_show_answers_correct_answer_count_for_peach() => byte(0x0DBF9A)

// $0DC074: Remaining Turns (Battle)
//          Bit0=Mario won the battle!
//          Bit1=Turn used - Mario
//          Bit2=Turn used - Partner
//          Bit3=Using his turn - Mario
//          Bit4=Using his turn - Partner
function remaining_turns_mario_won_the_battle() => bit0(0x0DC074)
function remaining_turns_using_his_turn_mario() => bit3(0x0DC074)

// $0DC0E2: Battle Commands Enabled
//          bit0= Jump
//          bit1= Hammer
//          bit2= Items
//          bit6= Partner Attack
//          bit7= Strategies
function battle_commands_enabled() => byte(0x0DC0E2)

// $0DC0E3: Battle Commands Enabled
//          bit0= Star Spirits
function battle_commands_enabled_2() => byte(0x0DC0E3)

// $0DC0E8: Mario's received damage in battle
function marios_received_damage_in_battle() => byte(0x0DC0E8)

// $0DC0EB: Star Points gained in current Battle
function star_points_gained_in_current_battle() => byte(0x0DC0EB)

// $0DC10E: Water Block - Remaining Turns
function water_block_remaining_turns() => byte(0x0DC10E)

// $0DC12C: [Pointer](24-bit)
//          Current Battle Enemie's / Actor's Tabble - Start
function pointer() => tbyte(0x0DC12C)

// $0DC148: Battle - Actor Table - Start
//          Player's Actor Data Pointer
function battle_actor_table_start() => dword(0x0DC148)

// $0DC14C: Battle
//          Partner's Actor Data Pointer
//          [+214][2 Bytes] Actor Status + Status Duration
//          0x0d = Partner hurt
function battle() => dword(0x0DC14C)

// $0DC150: [Pointer](24-bit)
//          (+1BB) Actor/Enemy 1 HP
function pointer_2() => tbyte(0x0DC150)

// $0DC154: [Pointer](24-bit)
//          (+1BB) Actor/Enemy 2 HP
function pointer_3() => tbyte(0x0DC154)

// $0DC158: [Pointer](24-bit)
//          (+1BB) Actor/Enemy 3 HP
function pointer_4() => tbyte(0x0DC158)

// $0DC15C: [Pointer](24-bit)
//          (+1BB) Actor/Enemy 4 HP
//          (+1FE) Damage dealt to actor
function pointer_5() => tbyte(0x0DC15C)

// $0DC1E8: [8bit] Item used ID
//          
//          AC- coconut
//          A3 - maple syrup
//          8A - Mushroom
//          96 - mystery item
function item_used_id() => byte(0x0DC1E8)

// $0DC1EE: [Battle]
//          Last Move ID
//          
//          34 - items
function battle_2() => byte(0x0DC1EE)

// $0DC1F2: Damage Amount from the Damage Indicator shown in Battle (Is used between all Actors)
function damage_amount_from_the_damage_indicator_shown_in_battle() => byte(0x0DC1F2)

// $0DC20B: Multibonk Counter
function multibonk_counter() => byte(0x0DC20B)

// $0DC214: Battle Phase:
//          01=First Strike
//          03=Run Away Start
//          04=Run Away Reset
//          07=Run Away Fail
//          08=Use Life Shroom
//          0A=Player Begin
//          0B=Enemy End
//          0C=Enemy Begin
//          0D=Player End
function battle_phase() => bit3(0x0DC214)

// $0DC4AC: [Pointer][+38] Current Battle Timer
function pointer_current_battle_timer() => dword(0x0DC4AC)

// $0DC4E8: Battle ID (16-bit)
//          XX00=Battle Table ID
//          00XX=Battle ID
//          
//          1000 - two red shy guys (blue station shy guys toybox)
//          1001 - two blue shy guys (blue station shy guys toybox)
//          1002 - two yellow shy guys (blue station shy guys toybox)
//          1003 - three yellow shy guys
//          1004 - two pink shy guys (blue station shy guys toybox right side)
//          1005 - two green shy guys (blue station shy guys toybox)
//          1009 - yellow, green, red, blue shyguy
//          
//          1025 - two Groove guys
function battle_id() => word(0x0DC4E8)

// $0E0EE8: Mario's Flipping Mechanic (Signed Value)
function marios_flipping_mechanic() => byte(0x0E0EE8)

// $10CC5C: Item Description 16bits (from Mario UI)
function item_description_16bits() => word(0x10CC5C)

// $10CD02: This one Handle how the Item and Partners List appear?
function this_one_handle_how_the_item_and_partners_list_appear() => byte(0x10CD02)

// $10CFE8: Partner Dispatcher
//          04 = Despawn Partner
//          06 = Spawn Partner
function partner_dispatcher() => byte(0x10CFE8)

// $10D64C: Cursor Position - Lists (Items/Partners/Mail)
function cursor_position_lists() => byte(0x10D64C)

// $10EBC7: Disable Player Inputs Flag
function disable_player_inputs_flag() => byte(0x10EBC7)

// $10EF91: Stats bar at top of screen - 00 if showing, 01 if not
function stats_bar_at_top_of_screen_00_if_showing_01_if_not() => byte(0x10EF91)

// $10EF92: (idle) timer until stats bar shows
function idle_timer_until_stats_bar_shows() => byte(0x10EF92)

// $10EF98: Current XP, Does not update until you move to next screen
function current_xp_does_not_update_until_you_move_to_next_screen() => byte(0x10EF98)

// $10EF9A: Current Number of coins
function current_number_of_coins() => byte(0x10EF9A)

// $10EF9C: In Attack?
function in_attack() => byte(0x10EF9C)

// $10EFC8: NOTES FOR: 0x10efc9 (because Jr Dev)
//          Player Flags
//          bit4=Disable Player Physics
//          bit5=Disable Player Inputs (Except when using Lakilester)
function notes_for_0x10efc9() => byte(0x10EFC8)

// $10EFC9: bit5=Lock Player Inputs (Except when using Lakilester)
function lock_player_inputs() => byte(0x10EFC9)

// $10EFCC: bit4= ! Symbol Active
//          
//          The game use this bit to know when to run an entity script and other stuff (like Chests, talking to NPCs, etc)
function symbol_active() => byte(0x10EFCC)

// $10EFF0: [32-bit] Player Pos X (Float)
function player_pos_x() => float(0x10EFF0)

// $10EFF2: X Coordinates 16bits
function x_coordinates_16bits() => word(0x10EFF2)

// $10EFF4: [32-bit] Player Pos Y (Float)
function player_pos_y() => float(0x10EFF4)

// $10EFF5: Y Coordinates 16bits 1
function y_coordinates_16bits_1() => word(0x10EFF5)

// $10EFF6: Y Coordinates 16bits 2
function y_coordinates_16bits_2() => word(0x10EFF6)

// $10EFF8: [32-bit] Player Pos Z (Float)
function player_pos_z() => float(0x10EFF8)

// $10EFFA: Z Coordinates 16bits
function z_coordinates_16bits() => word(0x10EFFA)

// $10F07F: Action State
//          00 = Idle
//          01 = Walk
//          02 = Run
//          04 = Bounce
function action_state() => byte(0x10F07F)

// $10F080: Mario's Overworld Animation ID (32-bits)
//          1st Byte = Animation's Bank ID
//          2nd Byte = Animation ID
//          
//          1f - using item
//          32 - thumbs up
function marios_overworld_animation_id() => dword(0x10F080)

// $10F290: Max HP
function max_hp() => byte(0x10F290)

// $10F291: Also Current HP
function also_current_hp() => byte(0x10F291)

// $10F292: ff - No Hammer, 01 - Super Hammer, 02 - Ultra Hammer
function ff_no_hammer_01_super_hammer_02_ultra_hammer() => byte(0x10F292)

// $10F293: 01- Super Boots, 02 - Ultra Boots
function super_boots_02_ultra_boots() => byte(0x10F293)

// $10F294: Max FP (this one is used when the pause menu is closed)
function max_fp_this_one_is_used_when_the_pause_menu_is_closed() => byte(0x10F294)

// $10F295: Max FP
function max_fp() => byte(0x10F295)

// $10F296: Also current FP
function also_current_fp() => byte(0x10F296)

// $10F297: Max HP  (this one is used when the pause menu is closed)
function max_hp_this_one_is_used_when_the_pause_menu_is_closed() => byte(0x10F297)

// $10F299: Action Commands 00/01 8bits
function action_commands_00_01_8bits() => byte(0x10F299)

// $10F29A: Mario's Level
function marios_level() => byte(0x10F29A)

// $10F29B: Total Badge Points
function total_badge_points() => byte(0x10F29B)

// $10F29C: Current Star Pieces
function current_star_pieces() => byte(0x10F29C)

// $10F29E: Mario's Coins (16-bit)
function marios_coins() => word(0x10F29E)

// $10F2A1: Current Partner
//          
//          0x00 - no partner
//          0x01 - Goombario
//          0x02 - Kooper
//          0x03 - Bombette
//          0x04 - Parakarry
//          0x05 - Goompa
//          0x06 - Watt
//          0x07 - Sushie
//          0x08 - Lakilester
//          0x09 - Bow
function current_partner() => byte(0x10F2A1)

// $10F2A3: Current Star Points
function current_star_points() => byte(0x10F2A3)

// $10F2AE: Goombario Upgrade level
function goombario_upgrade_level() => byte(0x10F2AE)
function goombario_upgrade_level_bit1() => bit1(0x10F2AE)

// $10F2AF: Goombario
function goombario() => byte(0x10F2AF)

// $10F2B6: Kooper upgrade level
function kooper_upgrade_level() => byte(0x10F2B6)
function kooper_upgrade_level_bit1() => bit1(0x10F2B6)

// $10F2B7: Kooper
function kooper() => byte(0x10F2B7)

// $10F2BE: Bombette Upgrade level
function bombette_upgrade_level() => byte(0x10F2BE)
function bombette_upgrade_level_bit1() => bit1(0x10F2BE)

// $10F2BF: Bombette
function bombette() => byte(0x10F2BF)

// $10F2C6: Parrakarry upgrade level
function parrakarry_upgrade_level() => byte(0x10F2C6)
function parrakarry_upgrade_level_bit1() => bit1(0x10F2C6)

// $10F2C7: Parakarry
function parakarry() => byte(0x10F2C7)

// $10F2D6: Watt upgrade level
function watt_upgrade_level() => byte(0x10F2D6)
function watt_upgrade_level_bit1() => bit1(0x10F2D6)

// $10F2D7: Watt
function watt() => byte(0x10F2D7)

// $10F2DE: Upgrade level
function upgrade_level() => byte(0x10F2DE)
function upgrade_level_bit1() => bit1(0x10F2DE)

// $10F2DF: Sushie
function sushie() => byte(0x10F2DF)

// $10F2E6: Lakilester Upgrade level
function lakilester_upgrade_level() => byte(0x10F2E6)
function lakilester_upgrade_level_bit1() => bit1(0x10F2E6)

// $10F2E7: Lakilester
function lakilester() => byte(0x10F2E7)

// $10F2EE: Bow Upgrade level
function bow_upgrade_level() => byte(0x10F2EE)
function bow_upgrade_level_bit1() => bit1(0x10F2EE)

// $10F2EF: Bow
function bow() => byte(0x10F2EF)

// $10F304: Key item slots start
function key_item_slots_start() => byte(0x10F304)

// $10F344: Badges Start here (16bit)? They are messed up....
//          - This is the 16-bit address for the 2nd badge
//          - The badge order for this series of 16-bit addresses is: 2nd, 1st, 4th, 3rd ... 78th, 77th, 80th, 79th
function badges_start_here_they_are_messed_up() => word(0x10F344)

// $10F346: ID for First Badge Found (16-bit)
function id_for_first_badge_found() => word(0x10F346)

// $10F350: Something here screws with Badges (or badge menu).....
function something_here_screws_with_badges_or_badge_menu() => byte(0x10F350)

// $10F351: HP Plus Badge?
function hp_plus_badge() => byte(0x10F351)

// $10F354: 10th Badge Slot
function _10th_badge_slot() => byte(0x10F354)

// $10F368: 20th Badge Slot
function _20th_badge_slot() => word(0x10F368)

// $10F37C: 30th Badge Slot
function _30th_badge_slot() => byte(0x10F37C)

// $10F390: 40th Badge Slot
function _40th_badge_slot() => word(0x10F390)

// $10F3A4: 50th Badge Slot
function _50th_badge_slot() => byte(0x10F3A4)

// $10F3B8: 60th Badge Slot
function _60th_badge_slot() => word(0x10F3B8)

// $10F3CC: 70th Badge Slot
function _70th_badge_slot() => byte(0x10F3CC)

// $10F3E0: 80th Badge Slot
function _80th_badge_slot() => word(0x10F3E0)

// $10F444: Item slots [most recently gotten item]
function item_slots() => byte(0x10F444)
function item_slots_word() => word(0x10F444)

// $10F446: 16bit
//          item slot 2
function _16bit() => word(0x10F446)
function _16bit_byte() => byte(0x10F446)

// $10F448: 16bit
//          item slot 3
function _16bit_2() => word(0x10F448)
function _16bit_2_byte() => byte(0x10F448)

// $10F44A: 16bit
//          item slot 4
function _16bit_3() => word(0x10F44A)
function _16bit_3_byte() => byte(0x10F44A)

// $10F44C: 16bit
//          item slot 5
function _16bit_4() => word(0x10F44C)
function _16bit_4_byte() => byte(0x10F44C)

// $10F44E: 16bit
//          item slot 6
function _16bit_5() => word(0x10F44E)
function _16bit_5_byte() => byte(0x10F44E)

// $10F450: 16bit
//          item slot 7
function _16bit_6() => word(0x10F450)
function _16bit_6_byte() => byte(0x10F450)

// $10F452: 16bit
//          item slot 8
function _16bit_7() => word(0x10F452)
function _16bit_7_byte() => byte(0x10F452)

// $10F454: 16bit
//          item slot 9
function _16bit_8() => word(0x10F454)
function _16bit_8_byte() => byte(0x10F454)

// $10F456: 16bit
//          item slot 10
function _16bit_9() => word(0x10F456)
function _16bit_9_byte() => byte(0x10F456)

// $10F45A: Items Checked Slot 1
function items_checked_slot_1() => byte(0x10F45A)

// $10F494: Items Checked Slot 32
function items_checked_slot_32() => byte(0x10F494)

// $10F498: Activated Badge ID 2 (16-bit)
function activated_badge_id_2() => word(0x10F498)

// $10F49A: Activated Badge ID 1 (16-bit)
function activated_badge_id_1() => word(0x10F49A)

// $10F514: Activated Badge ID 64 (16-bit)
function activated_badge_id_64() => word(0x10F514)

// $10F519: Current Merlee Spell 8bit
//          14 = Special
//          0a = Ordinary
//          05 = Petit
function current_merlee_spell_8bit() => byte(0x10F519)

merlee_casts_left = {
    "US": byte(0x10f290 + 0x289),
    "JP": byte(0x10f450 + 0x289),
    "EU": byte(0x10dd90 + 0x289)
}

// $10F51A: Merlee spells remaining
function merlee_spells_remaining() => byte(0x10F51A)

// $10F51D: Star Spirits
function star_spirits() => byte(0x10F51D)
function star_spirits_low4() => low4(0x10F51D)

SpiritLookup = {
    0: "No",
    1: "1",
    2: "2",
    3: "3",
    4: "4",
    5: "5",
    6: "6",
    7: "7",
}

// $10F51E: Merlee turn counter for next spell
function merlee_turn_counter_for_next_spell() => byte(0x10F51E)

// $10F522: Star Power Meter (Goes up by 20 each turn)
function star_power_meter_goes_up_by_20_each_turn() => byte(0x10F522)

// $10F523: Star Power Meter
function star_power_meter() => byte(0x10F523)

// $10F526: Related to Multibonks?
function related_to_multibonks() => byte(0x10F526)

// $10F52C: Number of Enemies' First Strikes
function number_of_enemies_first_strikes() => byte(0x10F52C)

// $10F52E: Number of First Strikes
function number_of_first_strikes() => byte(0x10F52E)

// $10F530: Number of Battles
function number_of_battles() => byte(0x10F530)
function number_of_battles_word() => word(0x10F530)

// $10F532: Total Power Bounces
function total_power_bounces() => byte(0x10F532)

// $10F544: Total Coins Earned through the course of the game
function total_coins_earned_through_the_course_of_the_game() => word(0x10F544)

// $10F54C: Play Time / Game Timer (32-bit)
function play_time_game_timer() => dword(0x10F54C)

// $10F550: Chuck Quizmo completion addresses [40]
quiz_completions = {
    "US": word(0x10f550),
    "JP": word(0x10f710),
    "EU": word(0x10e050)
}

quiz_attempts = {
    "US": word(0x10f552),
    "JP": word(0x10f712),
    "EU": word(0x10e052)
}

// $10F552: Chuck Quizmo Quiz attempts
function chuck_quizmo_quiz_attempts() => byte(0x10F552)

// $10F5BE: Total Star Pieces collected
function total_star_pieces_collected() => byte(0x10F5BE)

star_pieces = {
    "US": word(0x10f5be),
    "JP": word(0x10f77e),
    "EU": word(0x10e0be)
}

smash_game_total = {
    "US": dword(0x10f5c8),
    "JP": dword(0x10f788),
    "EU": dword(0x10e0c8)
}

// $10F5C0: Jump Attack Total Coins Won 16bits
function jump_attack_total_coins_won_16bits() => byte(0x10F5C0)

// $10F5C6: Jump Attack Highest amount won in a single game 16bits
function jump_attack_highest_amount_won_in_a_single_game_16bits() => byte(0x10F5C6)

// $10F5C8: Smash Attack Total Coins Won 16bits
function smash_attack_total_coins_won_16bits() => word(0x10F5C8)
function smash_attack_total_coins_won_16bits_byte() => byte(0x10F5C8)

// $10F5CE: Smash Attack Highest amount won in a single game 16bits
function smash_attack_highest_amount_won_in_a_single_game_16bits() => byte(0x10F5CE)

// $1105E8: Entities Related?
function entities_related() => byte(0x1105E8)

// $151380: Entities' pointers list for current Map
function entities_pointers_list_for_current_map() => byte(0x151380)

// $151568: Mirror Pointer from 0xdc154 - 1 (+2CB Offset)
function mirror_pointer_from_0xdc154_1() => dword(0x151568)

// $153F70: Mirror Pointer from 0xdc154 - 2 (+23B Offset)
function mirror_pointer_from_0xdc154_2() => dword(0x153F70)

// $154C36: Dialogue?
function dialogue() => byte(0x154C36)

// $154C38: NPC Dialogue ID (you can't freeze this value)
function npc_dialogue_id() => byte(0x154C38)
function npc_dialogue_id_word() => word(0x154C38)

// $154C3A: NPC Group ID (you can't freeze this value)
function npc_group_id() => byte(0x154C3A)

// $154C3E: Also Dialogue?
function also_dialogue() => byte(0x154C3E)

// $155144: [32-bits] Dialog's Box Size
//          [1][16-bit] XSize
//          [2][16-bit] YSize
function dialogs_box_size() => dword(0x155144)

// $155677: Cursor Position (Only from Dialog Options)
function cursor_position() => byte(0x155677)

// $156900: [Signed byte] Screen Brightness Lock
//          False (0xFF) = Brightness can't be modified
//          True  (0x00) = Brightness can be modified
function signed_byte_screen_brightness_lock() => byte(0x156900)

// $156904: [32-bit Float] Screen Brightness
//          Equal or below to 5 = Max brightness
//          255 = Lowest brightness
//          (remember the values need to be as float)
function screen_brightness() => float(0x156904)

// $159B00: Music ID
//          00 - toad town
//          02 - battle theme
//          41 - chapter select / 8bit mario theme
function music_id() => byte(0x159B00)
function music_id_word() => word(0x159B00)

// $1757F8: hearts out to be able to be picked up?
function hearts_out_to_be_able_to_be_picked_up() => word(0x1757F8)

// $1C8C91: Use for Gooma King without using Goomnut
function use_for_gooma_king_without_using_goomnut() => byte(0x1C8C91)

// $1D6AAF: Sound (Stereo/Mono)
function sound() => byte(0x1D6AAF)

// $1D7188: Music Address?
function music_address() => byte(0x1D7188)

// $1D9610: Sound ID 4
function sound_id_4() => byte(0x1D9610)

// $1D96BC: Sound ID 2 (this is mostly used when ID 1 is busy)
function sound_id_2() => word(0x1D96BC)

// $1D9768: Sound ID 3 (This is used in very strange cases)
function sound_id_3() => word(0x1D9768)

// $1D9814: Sound ID 16bits (you can't freeze this value)
//          d3= New Badge
//          1c2= Door closing
//          200e= Bow disappearing
//          295= Lakilester Cloud
function sound_id_16bits() => word(0x1D9814)

// $1DA0E8: 01 when "Greenblue Candy Cane" guy is spinning and music plays?
function when_greenblue_candy_cane_guy_is_spinning_and_music_plays() => byte(0x1DA0E8)

// $24A098: [Main Menu]
//          Save File to Load
function main_menu() => byte(0x24A098)

// $24F316: Pause Menu - Current Tab
function pause_menu_current_tab() => byte(0x24F316)

// $2700C8: Pause Menu - Cursor Position ID
function pause_menu_cursor_position_id() => byte(0x2700C8)

// $2700D7: Pause Menu - Current Tab Opened
//          00=The cursor is currently in the tabs row
function pause_menu_current_tab_opened() => byte(0x2700D7)

// $270398: Pause Menu - Badges Tab - Current List
//          00=Outside the Badges List
//          01=Inside the Badges List
function pause_menu_badges_tab_current_list() => byte(0x270398)

// $27039C: Pause Menu - Badges Tab - Current List
//          00=All Badges
//          01=Active Badges
function pause_menu_badges_tab_current_list_2() => byte(0x27039C)

// $29FC27: Attack Gauge in Battle
//          29= Full
function attack_gauge_in_battle() => byte(0x29FC27)

// $2A4020: Current Power Bounce Streak?
function current_power_bounce_streak() => byte(0x2A4020)

// $2AD068: Current Char?
function current_char() => byte(0x2AD068)

// $2AD0AC: Battle Menu Number of Slots availables
//          02= Partner
//          05= Mario
function battle_menu_number_of_slots_availables() => byte(0x2AD0AC)

// $2AD10A: Hand Horizontal Cursor at Battle
//          00= Option 1
//          01= Option 2
function hand_horizontal_cursor_at_battle() => byte(0x2AD10A)

// $2AD10B: Battle Hand/Cursor Vertical
//          0b= Cursor in battle
function battle_hand_cursor_vertical() => byte(0x2AD10B)

// $2BFF14: Lakilester state ID
//          01 = Ridding Cloud
//          03 = Unmount Cloud
function lakilester_state_id() => byte(0x2BFF14)

// $2DA898: what
function what() => byte(0x2DA898)

// $2DB298: Of note:  Troyce T. Item "Offer" state?
function of_note_troyce_t_item_offer_state() => byte(0x2DB298)

// $2DB29A: Of note:  Goes to one when recieving Koopa Tea from Troyce T.
function of_note_goes_to_one_when_recieving_koopa_tea_from_troyce_t() => byte(0x2DB29A)

// $2DBC70: what 2
function what_2() => byte(0x2DBC70)

// $2DF588: [Pointer]
//          [+28] Mario's Sprite - Component 1 - Palette (Overworld)
//          [+2C] Mario's Sprite Palette (Battle)
//          [+78] Mario's Sprite - Component 2 - Palette (Overworld)
function pointer_6() => dword(0x2DF588)

// $2DF58C: Mario's Battle Animation ID (32-bits)
function marios_battle_animation_id() => dword(0x2DF58C)
function marios_battle_animation_id_byte() => byte(0x2DF58C)

// $2DFA48: Partner Currently out
function partner_currently_out() => word(0x2DFA48)

PartnerLookup = {
    0x00: "no partner",
    0x01: "Goombario",
    0x02: "Kooper",
    0x03: "Bombette",
    0x04: "Parakarry",
    0x05: "Goompa",
    0x06: "Watt",
    0x07: "Sushie",
    0x08: "Lakilester",
    0x09: "Bow",
}

// $30E8D9: pointer enemy status thingy
function pointer_enemy_status_thingy() => byte(0x30E8D9)

// $315604: "The End" Address
function the_end_address() => byte(0x315604)

// $316F5C: potential status nonsense
function potential_status_nonsense() => byte(0x316F5C)

// $324BB8: Shop Current Item Description and Name 16bits
function shop_current_item_description_and_name_16bits() => word(0x324BB8)

// $3E744E: Hand Cursor Battle 2 enemies cc= left f6= right
function hand_cursor_battle_2_enemies_cc_left_f6_right() => byte(0x3E744E)

function room(r, area, mapid) {
    return map_id[r] == mapid && area_id[r] == area
}

// Achievements

achievement(
    title = "Capped Companion", points = 5, type="progression",
    description = "Have Goombario join your party",
    id = 49518, badge = "86074", published = "2017-06-11 1:28:32 AM", modified = "2025-05-13 1:56:14 PM",
    trigger = any_of(re, r => rc[r] && has_goombario[r] == 1 && prev(has_goombario[r]) == 0 && room(r, 0, 1))
)

achievement(
    title = "Turtle Torpedo", points = 5, type="progression",
    description = "Have Kooper join your party",
    id = 49519, badge = "86075", published = "2017-06-11 1:28:36 AM", modified = "2025-05-13 1:56:14 PM",
    trigger = any_of(re, r => rc[r] && has_kooper[r] == 1 && prev(has_kooper[r]) == 0 && room(r, 6, 3))
)

achievement(
    title = "A Blast With My Gal", points = 5, type="progression",
    description = "Have Bombette join the party",
    id = 49520, badge = "86076", published = "2017-06-11 1:28:38 AM", modified = "2025-11-27 2:48:12 AM",
    trigger = any_of(re, r => rc[r] && has_bombette[r] == 1 && prev(has_bombette[r]) == 0 && room(r, 7, 6))
)

achievement(
    title = "Turtle Mail", points = 5, type="progression",
    description = "Have Parakarry join the party",
    id = 49521, badge = "86077", published = "2017-06-11 1:28:40 AM", modified = "2019-08-07 6:46:13 AM",
    trigger = any_of(re, r => rc[r] && has_parakarry[r] == 1 && prev(has_parakarry[r]) == 0 && room(r, 8, 5))
)

achievement(
    title = "Her Royal Frightfulness", points = 5, type="progression",
    description = "Have Bow join the party",
    id = 49522, badge = "86078", published = "2017-06-11 1:28:43 AM", modified = "2025-05-13 1:56:15 PM",
    trigger = any_of(re, r => rc[r] && has_bow[r] == 1 && prev(has_bow[r]) == 0 && room(r, 13, 8))
)

achievement(
    title = "My Sweet Little Night Light", points = 5, type="progression",
    description = "Have Watt join the party",
    id = 49523, badge = "86079", published = "2017-06-11 1:28:45 AM", modified = "2025-05-13 1:56:15 PM",
    trigger = any_of(re, r => rc[r] && has_watt[r] == 1 && prev(has_watt[r]) == 0 && room(r, 16, 11))
)

achievement(
    title = "Fishie Friend", points = 5, type="progression",
    description = "Have Sushie join the party",
    id = 49524, badge = "86080", published = "2017-06-11 1:28:47 AM", modified = "2025-05-13 1:56:15 PM",
    trigger = any_of(re, r => rc[r] && has_sushie[r] == 1 && prev(has_sushie[r]) == 0 && room(r, 17, 4))
)

achievement(
    title = "Lakitu With a 'Tude", points = 5, type="progression",
    description = "Have Lakilester join the party",
    id = 49525, badge = "86081", published = "2017-06-11 1:28:49 AM", modified = "2025-05-13 1:56:15 PM",
    trigger = any_of(re, r => rc[r] && has_laki[r] == 1 && prev(has_laki[r]) == 0 && room(r, 19, 8))
)

achievement(
    title = "Goomtastic", points = 5,
    description = "Fully upgrade Goombario",
    id = 49526, badge = "86082", published = "2017-06-11 1:28:51 AM", modified = "2025-05-13 1:56:16 PM",
    trigger = any_of(re, r => rc[r] && goombario_level[r] == 2 && prev(goombario_level[r]) == 1 && in_game[r])
)

achievement(
    title = "Shell Yeah!", points = 5,
    description = "Fully upgrade Kooper",
    id = 49527, badge = "86083", published = "2017-06-11 1:28:53 AM", modified = "2025-05-13 1:56:16 PM",
    trigger = any_of(re, r => rc[r] && kooper_level[r] == 2 && prev(kooper_level[r]) == 1 && in_game[r])
)

achievement(
    title = "Explosive Personality", points = 5,
    description = "Fully upgrade Bombette",
    id = 49528, badge = "86084", published = "2017-06-11 1:28:55 AM", modified = "2025-05-13 1:56:16 PM",
    trigger = any_of(re, r => rc[r] && bombette_level[r] == 2 && prev(bombette_level[r]) == 1 && in_game[r])
)

achievement(
    title = "First-Class", points = 5,
    description = "Fully upgrade Parakarry",
    id = 49529, badge = "86085", published = "2017-06-11 1:28:56 AM", modified = "2025-05-13 1:56:16 PM",
    trigger = any_of(re, r => rc[r] && parakarry_level[r] == 2 && prev(parakarry_level[r]) == 1 && in_game[r])
)

achievement(
    title = "Mistress of the Night", points = 5,
    description = "Fully upgrade Bow",
    id = 49530, badge = "86086", published = "2017-06-11 1:28:59 AM", modified = "2025-05-13 1:56:17 PM",
    trigger = any_of(re, r => rc[r] && bow_level[r] == 2 && prev(bow_level[r]) == 1 && in_game[r])
)

achievement(
    title = "Power Surge", points = 5,
    description = "Fully upgrade Watt",
    id = 49531, badge = "86087", published = "2017-06-11 1:29:01 AM", modified = "2025-05-13 1:56:17 PM",
    trigger = any_of(re, r => rc[r] && watt_level[r] == 2 && prev(watt_level[r]) == 1 && in_game[r])
)

achievement(
    title = "Hooked on Sushie", points = 5,
    description = "Fully upgrade Sushie",
    id = 49532, badge = "86088", published = "2017-06-11 1:29:02 AM", modified = "2025-05-13 1:56:17 PM",
    trigger = any_of(re, r => rc[r] && sushie_level[r] == 2 && prev(sushie_level[r]) == 1 && in_game[r])
)

achievement(
    title = "You're Cool in My Book", points = 5,
    description = "Fully upgrade Lakilester",
    id = 49533, badge = "86089", published = "2017-06-11 1:29:05 AM", modified = "2025-05-13 1:56:17 PM",
    trigger = any_of(re, r => rc[r] && laki_level[r] == 2 && prev(laki_level[r]) == 1 && in_game[r])
)

achievement(
    title = "To The Max!", points = 25,
    description = "Power up all of your party members to their max level",
    id = 49534, badge = "86090", published = "2017-06-11 1:29:08 AM", modified = "2025-05-13 1:56:18 PM",
    trigger = any_of(re, r =>
              (prev(kooper_level[r]/2) + prev(parakarry_level[r]/2) +
              prev(watt_level[r]/2) + prev(laki_level[r]/2) +
              prev(goombario_level[r]/2) + prev(bombette_level[r]/2) + prev(sushie_level[r]/2) +
              prev(bow_level[r]/2)) == 7 &&
              measured((kooper_level[r]/2 + parakarry_level[r]/2 + watt_level[r]/2 +
                  laki_level[r]/2 + goombario_level[r]/2 + bombette_level[r]/2 +
                  sushie_level[r]/2 + bow_level[r]/2) == 8,
                  when = rc[r]
              )
	)
)

achievement(
    title = "Flower Power", points = 10,
    description = "Max out your FP (Including Badges)",
    id = 49535, badge = "86094", published = "2017-06-11 1:29:30 AM", modified = "2025-05-13 1:56:18 PM",
    trigger = any_of(re, r => rc[r] && in_game[r] && prev(max_fp[r]) == 60 && max_fp[r] == 65
	)
)

achievement(
    title = "Heartful", points = 10,
    description = "Max out your HP (Including Badges)",
    id = 49536, badge = "86092", published = "2017-06-11 1:29:32 AM", modified = "2025-05-13 1:56:18 PM",
    trigger = any_of(re, r => rc[r] && in_game[r] && prev(max_hp[r]) == 60 && max_hp[r] == 65
	)
)

achievement(
    title = "Badges of Honor", points = 10,
    description = "Max out your Badge Points",
    id = 49537, badge = "86093", published = "2017-06-11 1:30:28 AM", modified = "2025-05-13 1:56:19 PM",
    trigger = any_of(re, r => rc[r] && in_game[r] &&
              max_bp[r] == 30 && __ornext(prev(max_bp[r] == 27) || prev(max_bp[r] == 24))
	)
)

achievement(
    title = "Maxxed Out Mario", points = 25,
    description = "Level Mario to his max level",
    id = 49538, badge = "86095", published = "2017-06-11 1:30:38 AM", modified = "2025-05-13 1:56:19 PM",
    trigger = any_of(re, r => rc[r] && mario_level[r] == 27 && prev(mario_level[r]) == 26 && in_game[r]
	)
)

achievement(
    title = "Age Old Wisdom", points = 5, type="progression",
    description = "Free Eldstar from the captivity of the Koopa Bros. and gain his power",
    id = 49539, badge = "86096", published = "2017-06-11 1:30:44 AM", modified = "2025-05-13 1:56:20 PM",
    trigger = any_of(re, r => rc[r] && max_star_power[r] == 1 && prev(max_star_power[r]) == 0 && in_game[r]
	)
)

achievement(
    title = "Motherly Instincts", points = 5, type="progression",
    description = "Free Mamar from the captivity of Tutankoopa and gain her power",
    id = 49540, badge = "86097", published = "2017-06-11 1:30:46 AM", modified = "2025-05-13 1:56:20 PM",
    trigger = any_of(re, r => rc[r] && max_star_power[r] == 2 && prev(max_star_power[r]) == 1 && in_game[r]
	)
)

achievement(
    title = "The Life of a Scholar", points = 5, type="progression",
    description = "Free Skolar from the captivity of Tubba Blubba and his Boos and gain his power",
    id = 49541, badge = "86098", published = "2017-06-11 1:30:48 AM", modified = "2024-06-26 5:55:11 PM",
    trigger = any_of(re, r => rc[r] && max_star_power[r] == 3 && prev(max_star_power[r]) == 2 && in_game[r]
	)
)

achievement(
    title = "Time to Chill", points = 5, type="progression",
    description = "Free Muskular from the captivity of General Guy and gain his power",
    id = 49542, badge = "86099", published = "2017-06-11 1:30:50 AM", modified = "2024-06-26 5:55:11 PM",
    trigger = any_of(re, r => rc[r] && max_star_power[r] == 4 && prev(max_star_power[r]) == 3 && in_game[r]
	)
)

achievement(
    title = "Little Miss Star", points = 5, type="progression",
    description = "Free Misstar from the captivity of the Lava Piranha and gain her power",
    id = 49543, badge = "86100", published = "2017-06-11 1:30:53 AM", modified = "2024-06-26 5:55:12 PM",
    trigger = any_of(re, r => rc[r] && max_star_power[r] == 5 && prev(max_star_power[r]) == 4 && in_game[r]
	)
)

achievement(
    title = "The Book Worm", points = 5, type="progression",
    description = "Free Klevar from the captivity of Huff N. Puff and gain his power",
    id = 49544, badge = "86101", published = "2017-06-11 1:30:55 AM", modified = "2024-06-26 5:55:12 PM",
    trigger = any_of(re, r => rc[r] && max_star_power[r] == 6 && prev(max_star_power[r]) == 5 && in_game[r]
	)
)

achievement(
    title = "Stay Calm", points = 5, type="progression",
    description = "Free Kalmar from the captivity of the Crystal King and gain his power",
    id = 49545, badge = "86102", published = "2017-06-11 1:31:00 AM", modified = "2024-06-26 5:55:12 PM",
    trigger = any_of(re, r => rc[r] && max_star_power[r] == 7 && prev(max_star_power[r]) == 6 && in_game[r]
	)
)

achievement(
    title = "Hammer Bro", points = 5,
    description = "Get the Hammer",
    id = 49548, badge = "86105", published = "2017-06-11 1:48:02 AM", modified = "2019-08-07 6:47:16 AM",
    trigger = any_of(re, r => rc[r] && current_hammer[r] == 0 &&
              prev(current_hammer[r]) == 255 && room(r, 0, 3) && in_game[r]
	)
)

achievement(
    title = "Super Hammer Bro ", points = 5,
    description = "Get the Super Hammer",
    id = 49549, badge = "86106", published = "2017-06-11 1:48:08 AM", modified = "2019-08-07 6:47:19 AM",
    trigger = any_of(re, r => rc[r] && current_hammer[r] == 1 &&
              prev(current_hammer[r]) == 0 && in_game[r] && room(r, 11, 8)
	)
)

achievement(
    title = "Ultra Hammer Bro", points = 5,
    description = "Get the Ultra Hammer",
    id = 49550, badge = "86107", published = "2017-06-11 1:48:11 AM", modified = "2019-10-22 4:37:02 PM",
    trigger = any_of(re, r => rc[r] && current_hammer[r] == 2 &&
              prev(current_hammer[r]) == 1 && in_game[r] && room(r, 18, 6)
	)
)

achievement(
    title = "Super Jumpman Mario", points = 5,
    description = "Get the Super Boots",
    id = 49551, badge = "86108", published = "2017-06-11 1:48:13 AM", modified = "2025-05-13 1:56:20 PM",
    trigger = any_of(re, r => rc[r] && super_boots_02_ultra_boots() == 1 && prev(super_boots_02_ultra_boots()) == 0 && byte(0x0A094A) != 0
	)
)

achievement(
    title = "Ultra Jumpman Mario", points = 5,
    description = "Get the Ultra Boots",
    id = 49552, badge = "86109", published = "2017-06-11 1:48:15 AM", modified = "2025-05-13 1:56:20 PM",
    trigger = any_of(re, r => rc[r] && super_boots_02_ultra_boots() == 2 && prev(super_boots_02_ultra_boots()) == 1 && byte(0x0A094A) != 0
	)
)

achievement(
    title = "Pop Quiz", points = 1,
    description = "Answer your first Chuck Quizmo question",
    id = 49578, badge = "86112", published = "2017-06-12 4:46:23 AM", modified = "2024-12-26 6:54:22 PM",
    trigger = any_of(re, r => rc[r] && quiz_attempts[r] >= 1 && quiz_completions[r] == 1 &&
              prev(quiz_completions[r]) == 0 && in_game[r]
	)
)

achievement(
    title = "Quiz Master", points = 25,
    description = "Answer all 64 of Chuck Quizmo questions",
    id = 49579, badge = "86114", published = "2017-06-12 4:46:25 AM", modified = "2019-10-22 4:37:02 PM",
    trigger = any_of(re, r => rc[r] && quiz_completions[r] == 64 && prev(quiz_completions[r]) == 63 &&
              in_game[r]
	)
)

achievement(
    title = "Star Piece Finder", points = 25,
    description = "Collect 80 star pieces",
    id = 49580, badge = "86115", published = "2017-06-12 4:46:27 AM", modified = "2025-05-13 1:56:21 PM",
    trigger = any_of(re, r => rc[r] && prev(star_pieces[r]) < 80 && prev(star_pieces[r] > 40) && star_pieces[r] >= 80 && in_game[r]
	)
)

achievement(
    title = "Star Man", points = 50,
    description = "Collect all 160 Star Pieces",
    id = 49581, badge = "86116", published = "2017-06-12 4:46:28 AM", modified = "2024-07-01 12:56:01 PM",
    trigger = any_of(re, r => rc[r] && prev(star_pieces[r]) < 160 && prev(star_pieces[r] > 80) && star_pieces[r] >= 160 && in_game[r]
	)
)

achievement(
    title = "Boy Scout", points = 1,
    description = "Get your first badge",
    id = 49609, badge = "86120", published = "2017-06-15 2:07:52 AM", modified = "2023-03-14 3:28:09 AM",
    trigger = any_of(re, r => rc[r] && room(r, 0, 1) && in_game[r] && prev_badge_slot(r, 1) == 0 &&
              badge_slot(r, 1) == 289
	)
)

achievement(
    title = "First Class Scout", points = 5,
    description = "Obtain 20 Badges",
    id = 49610, badge = "86121", published = "2017-06-15 2:08:03 AM", modified = "2024-07-01 12:56:02 PM",
    trigger = any_of(re, r => rc[r] && in_game[r] && prev_badge_slot(r, 20 - 2) == 0 && badge_slot(r, 20 - 2) != 0 && prev_badge_slot(r, 19) != 0
	)
)

achievement(
    title = "Star Scout", points = 10,
    description = "Obtain 40 Badges",
    id = 49611, badge = "86122", published = "2017-06-15 2:08:09 AM", modified = "2024-07-01 12:56:02 PM",
    trigger = any_of(re, r => rc[r] && in_game[r] && prev_badge_slot(r, 40 - 2) == 0 && badge_slot(r, 40 - 2) != 0 && prev_badge_slot(r, 39) != 0
	)
)

achievement(
    title = "Life Scout", points = 10,
    description = "Obtain 60 Badges",
    id = 49612, badge = "86123", published = "2017-06-15 2:08:12 AM", modified = "2024-07-01 12:56:02 PM",
    trigger = any_of(re, r => rc[r] && in_game[r] && prev_badge_slot(r, 60 - 2) == 0 && badge_slot(r, 60 - 2) != 0 && prev_badge_slot(r, 59) != 0
	)
)

achievement(
    title = "Eagle Scout", points = 25, type="missable",
    description = "Obtain all 80 badges in the game",
    id = 49613, badge = "86124", published = "2017-06-15 2:08:14 AM", modified = "2024-07-01 12:56:03 PM",
    trigger = any_of(re, r => rc[r] && in_game[r] && prev_badge_slot(r, 80 - 2) == 0 && badge_slot(r, 80 - 2) != 0 && prev_badge_slot(r, 79) != 0
	)
)

achievement(
    title = "Goomnutless", points = 10, type="missable",
    description = "Defeat the Goomba King without the use of the Goomnut",
    id = 49617, badge = "513627", published = "2017-06-15 6:21:11 AM", modified = "2021-02-05 1:55:20 AM",
    trigger = any_of(re, r => rc[r] && 
        prev(battle_state[r] > 0) && prev(battle_state[r]) < 26 &&
        room(r, 0, 9) &&
        enemy_actor(r, 4, addr => byte(addr + 0x135) == 0x93 && dword(addr + 0x9c) == 0) &&
        trigger_when(prev(battle_state[r] != 33) && battle_state[r] == 33)
	)
)

achievement(
    title = "Buzz Off!", points = 10,
    description = "Defeat Buzzar",
    id = 49615, badge = "513628", published = "2017-06-15 3:04:32 AM", modified = "2025-05-02 2:19:25 PM",
    trigger = any_of(re, r => rc[r] && room(r, 8, 4) && buzzar_defeated[r] > prev(buzzar_defeated[r])
	)
)

achievement(
    title = "P.O.W-erless", points = 10, type="missable",
    description = "Defeat the Koopa Bros. without using any items",
    id = 321735, badge = "513629", published = "2023-05-26 6:12:20 PM", modified = "2023-05-28 5:34:24 PM",
    trigger = any_of(re, r => 
        unless(!rc[r]) &&
        once(battle_state[r] > 0 && prev(battle_state[r]) == 0) &&
        never(battle_state[r] == 18 && selected_move_category[r] == 2) &&
        never(!room(r, 7, 10)) &&
        never(battle_state[r] == 0) &&
        trigger_when(prev(battle_state[r] != 33) && battle_state[r] == 33)
	)
)

achievement(
    title = "Bury the Dead", points = 5, type="missable",
    description = "Defeat Tutankoopa by harming him only with items",
    id = 321736, badge = "513630", published = "2023-05-26 6:12:21 PM", modified = "2025-05-13 1:56:21 PM",
    trigger = any_of(re, r => 
        unless(!rc[r]) &&
        once(prev(battle_state[r]) == 1 && battle_state[r] == 5) &&
        never(!room(r, 11, 14)) &&
        enemy_actor(r, 1, addr => never(
            byte(addr + 0x1bb) < prev(byte(addr + 0x1bb)) &&
            battle_state[r] != 21 &&
            selected_move_category[r] != 2
        )) &&
        trigger_when(battle_won(r))
	)
)

achievement(
    title = "Sheer Heart Attack", points = 10, type="missable",
    description = "Defeat Tubba Blubba's Heart in 4 turns or less",
    id = 321762, badge = "513631", published = "2023-05-26 7:41:11 PM", modified = "2023-05-31 9:32:02 PM",
    trigger = any_of(re, r =>
        unless(!rc[r]) &&
        once(battle_start(r)) &&
        never(repeated(4, prev(battle_state[r] != 21) && battle_state[r] == 21)) &&
        never(!room(r, 14, 8)) &&
        enemy_actor(r, 1, addr => trigger_when(byte(addr + 0x1bb) <= 5))
	)
)

achievement(
    title = "General Guy's Bright Idea", points = 10, type="missable",
    description = "Defeat General Guy without damaging his Light Bulb",
    id = 321755, badge = "513632", published = "2023-05-26 6:44:17 PM", modified = "2024-12-14 3:24:10 PM",
    trigger = any_of(re, r => rc[r] && 
        room(r, 16, 14) &&
        battle_state[r] > 0 &&
        enemy_actor(r, 4, addr => byte(addr + 0x135) == 0xab && byte(addr + 0x1bb) == byte(addr + 0x1ba)) &&
        trigger_when(battle_won(r))
	)
)

achievement(
    title = "Hot Footed Hero", points = 10, type="missable",
    description = "Defeat Lava Piranha without using Sushie, the Snowman Doll, or the Fire Shield Badge",
    id = 321763, badge = "513633", published = "2023-05-26 7:49:25 PM", modified = "2023-06-30 1:09:52 PM",
    trigger = any_of(re, r => 
        unless(!rc[r]) &&
        never(!room(r, 18, 13)) &&
        !equipped_badge(r, 236) &&
        once(battle_start(r)) &&
        never(current_partner[r] == 7) &&
        never(selected_move_category[r] == 2 && move_argument[r] == 129 && battle_state[r] == 18) &&
        trigger_when(battle_won(r))
	)
)

achievement(
    title = "That Guy Got Hit in the Head With a Coconut!", points = 10, type="missable",
    description = "Defeat Jr. Troopa after returning to Toad Town from Yoshi's Village with only coconuts",
    id = 321739, badge = "513634", published = "2023-05-26 6:12:22 PM", modified = "2025-05-13 1:56:21 PM",
    trigger = any_of(re, r =>
        unless(!rc[r]) &&
        once(prev(battle_state[r]) == 1 && battle_state[r] == 5) &&
        never(!room(r, 1, 6)) &&
        never(selected_move_category[r] == 2 && move_argument[r] == 129 && battle_state[r] == 18) &&
        enemy_actor(r, 1, addr => never(
            byte(addr + 0x1bb) < 20 &&
            byte(addr + 0x1bb) < prev(byte(addr + 0x1bb)) &&
            __ornext(selected_move_category[r] != 2 || move_argument[r] != 172)
        )) &&
        trigger_when(battle_won(r))
	)
)

achievement(
    title = "Off Cloud Nine", points = 10, type="missable",
    description = "Defeat Huff N. Puff without the use of Bow or Lakilester",
    id = 321770, badge = "513635", published = "2023-05-26 9:27:14 PM", modified = "2023-05-29 8:57:59 PM",
    trigger = any_of(re, r =>
        unless(!rc[r]) &&
        once(battle_start(r)) &&
        never(!room(r, 19, 15)) &&
        never(current_partner[r] == 9) &&
        never(current_partner[r] == 8) &&
        trigger_when(battle_won(r))
	)
)

achievement(
    title = "Let's Kick Some Ice", points = 5, type="missable",
    description = "Stop time on Crystal King, then deal 7 or more damage in a single attack while he is frozen (Indicator must say 7 or more specifically, cannot be total)",
    id = 321948, badge = "513636", published = "2023-05-27 4:23:18 AM", modified = "2024-07-03 3:12:47 PM",
    trigger = any_of(re, r => rc[r] &&
        room(r, 21, 23) &&
        enemy_actor(r, 1, addr => byte(addr + 0x213) == 8 && trigger_when(
            prev(byte(addr + 0x1BB)) - byte(addr + 0x1bb) >= 7
        ))
	)
)

achievement(
    title = "Who's the Bully Now?", points = 10,
    description = "Defeat Kent C. Koopa",
    id = 49614, badge = "513637", published = "2017-06-15 2:54:23 AM", modified = "2025-05-13 1:56:21 PM",
    trigger = any_of(re, r => rc[r] && room(r, 6, 4) && game_flag(0x262)[r] > prev(game_flag(0x262)[r])
	)
)

achievement(
    title = "No Sleep For Ol' Four Eyes", points = 10, type="missable",
    description = "Defeat Kent C. Koopa without putting him to sleep or any other status effect",
    id = 321854, badge = "513638", published = "2023-05-26 11:02:12 PM", modified = "2023-07-06 9:45:22 PM",
    trigger = any_of(re, r => 
        unless(!rc[r]) &&
        once(battle_state[r] == 5 && prev(battle_state[r]) == 1) &&
        never(!room(r, 6, 4)) &&
        enemy_actor(r, 1, addr =>
            never(byte(addr + 0x135) != 0xb9) &&
            never(byte(addr + 0x213) != 0) &&
            trigger_when(byte(addr + 0x1bb) == 0 && prev(byte(addr + 0x1bb)) > 0)
        )
	)
)

achievement(
    title = "Anti-Antiguy", points = 25, type="missable",
    description = "Defeat Antiguy",
    id = 49616, badge = "513639", published = "2017-06-15 5:06:34 AM", modified = "2025-11-07 2:22:06 PM",
    trigger = any_of(re, r => rc[r] && room(r, 16, 12) && battle_id[r] == 0x102c && battle_won(r)
	)
)

achievement(
    title = "Graduate", points = 25,
    description = "Prove yourself worthy to have your Diploma",
    id = 49582, badge = "513640", published = "2017-06-12 4:46:30 AM", modified = "2019-10-22 4:37:02 PM",
    trigger = any_of(re, r => rc[r] && game_byte(0x1c)[r] == 5 && prev(game_byte(0x1c)[r]) == 4 && in_game[r]
	)
)

achievement(
    title = "The True King of the Koopas", points = 25,
    description = "Defeat Bowser without using your Star Energy (Final part of the battle)",
    id = 49687, badge = "513641", published = "2017-06-18 3:10:28 AM", modified = "2025-05-13 1:56:22 PM",
    trigger = any_of(re, r =>
        unless(!rc[r]) &&
        once(battle_id[r] == 0x2304 && prev(battle_id[r] != 0x2304)) &&
        never(!room(r, 4, 19)) &&
        never(star_power[r] < 0x700) &&
        enemy_actor(r, 1, addr => trigger_when(
            byte(addr + 0x1bb) == 0 && prev(byte(addr + 0x1bb)) > 0
        ))
	)
)

achievement(
    title = "First Strike!", points = 1,
    description = "Get a first strike",
    id = 49546, badge = "513642", published = "2017-06-11 1:39:51 AM", modified = "2025-05-13 1:56:22 PM",
    trigger = any_of(re, r => rc[r] && first_strikes[r] > prev(first_strikes[r]) && in_game[r]
	)
)

achievement(
    title = "Preemptive Striker", points = 10,
    description = "Perform 100 or more 'First Strikes'",
    id = 49547, badge = "513643", published = "2017-06-11 1:40:20 AM", modified = "2025-05-13 1:56:22 PM",
    trigger = any_of(re, r => rc[r] && first_strikes[r] > prev(first_strikes[r]) && first_strikes[r] >= 100 && in_game[r]
	)
)

achievement(
    title = "Battle Hardened", points = 25,
    description = "Fight your way through 250 battles throughout your adventure",
    id = 49576, badge = "513645", published = "2017-06-12 4:45:59 AM", modified = "2019-10-22 4:37:02 PM",
    trigger = any_of(re, r => rc[r] && battles[r] > prev(battles[r]) && battles[r] >= 250 && in_game[r]
	)
)

achievement(
    title = "Power Bouncer", points = 25,
    description = "Use the Power Bounce badge to bounce 25 times consecutively on an enemy",
    id = 49577, badge = "86111", published = "2017-06-12 4:46:21 AM", modified = "2025-05-13 1:56:23 PM",
    trigger = any_of(re, r =>
        battle_state[r] == 18 &&
        selected_move_category[r] == 0 &&
        selected_move_id[r] == 32 &&
        prev(current_power_bounce_streak()) == 24 &&
        measured(current_power_bounce_streak() == 25, when = rc[r])
	)
)

achievement(
    title = "Coin Collector", points = 5,
    description = "Collect 1,000 or more coins throughout your adventure",
    id = 49583, badge = "86118", published = "2017-06-12 4:46:36 AM", modified = "2025-05-13 1:56:23 PM",
    trigger = any_of(re, r => rc[r] && in_game[r] && prev(total_coins[r]) < 1000 &&
        prev(total_coins[r]) >= 100 &&
        total_coins[r] >= 1000
	)
)

achievement(
    title = "Closing the Book", points = 25, type="win_condition",
    description = "Rescue the Princess and sit back and watch the fireworks",
    id = 49608, badge = "86119", published = "2017-06-15 2:05:18 AM", modified = "2025-05-13 1:56:24 PM",
    trigger = any_of(re, r => rc[r] &&
        prev(room(r, 0x18, 1)) &&
        room(r, 0, 0x10)
	)
)

achievement(
    title = "Ring Around the Rosie", points = 2,
    description = "Play 'Ring Around the Rosie' with a Candycane to get some life",
    id = 49618, badge = "86129", published = "2017-06-15 1:58:38 PM", modified = "2025-05-13 1:56:24 PM",
    trigger = any_of(re, r => rc[r] &&
        room(r, 6, 6) &&
        music[r] == 0x84 &&
        entities[r] - prev(entities[r]) == 1
	)
)

achievement(
    title = "Encyclopedia", points = 50, type="missable",
    description = "Have Goombario use 'Tattle' on every enemy",
    id = 79592, badge = "85928", published = "2019-08-05 8:01:58 AM", modified = "2025-05-13 1:56:24 PM",
    trigger = any_of(re, r => any_of(range(0, 3), i =>
        measured(sum_of(tattle_bitflags(r, i), x => x) == 110, when = rc[r]) &&
        sum_of(tattle_bitflags(r, i), x => prev(x)) == 109
	)
))

achievement(
    title = "Kitchen Nightmare", points = 50,
    description = "Cook every recipe",
    id = 79593, badge = "85929", published = "2019-08-05 8:02:00 AM", modified = "2025-05-13 1:56:25 PM",
    trigger = any_of(re, r =>
        measured(sum_of(recipes(r), i => i) == 50, when = rc[r]) &&
        sum_of(recipes(r), i => prev(i)) == 49
	)
)

achievement(
    title = "Rolling in the Deep", points = 3,
    description = "Destroy each of the spinning flames in Mt. Lavalava",
    id = 79594, badge = "85930", published = "2019-08-05 8:02:02 AM", modified = "2025-05-13 1:56:25 PM",
    trigger = any_of(re, r =>
        measured(sum_of(range(18, 23), i => area_flag(i)[r]) == 6, when = area_id[r] == 18 && rc[r]) &&
        sum_of(range(18, 23), i => prev(area_flag(i)[r])) == 5
	)
)

achievement(
    title = "Brotherly Secrets", points = 5,
    description = "Read all of Luigi's Diary",
    id = 79595, badge = "85931", published = "2019-08-05 8:02:04 AM", modified = "2025-05-13 1:56:25 PM",
    trigger = any_of(re, r => room(r, 0, 11) &&
        measured(luigi_diaries(r) == 12, when = rc[r]) &&
        prev(luigi_diaries(r)) == 11
	)
)

achievement(
    title = "Unwanted Mail", points = 5,
    description = "Read all of Mario's letters",
    id = 79596, badge = "85932", published = "2019-08-05 8:02:05 AM", modified = "2025-09-14 4:30:39 AM",
    trigger = any_of(re, r => room(r, 0, 11) &&
        measured(mario_letters(r) == 12, when = rc[r]) &&
        prev(mario_letters(r)) == 11
	)
)

achievement(
    title = "Here's the Mail that Never Fails", points = 5, type="missable",
    description = "Read every letter dedicated to your partners",
    id = 79597, badge = "85933", published = "2019-08-05 8:02:07 AM", modified = "2023-03-14 3:28:13 AM",
    trigger = any_of(re, r => room(r, 1, 2) &&
        measured(sum_of(range(0xac, 0xbe), i => game_flag(i)[r]) == 19, when = rc[r]) &&
        sum_of(range(0xac, 0xbe), i => prev(game_flag(i)[r])) == 18
	)
)

achievement(
    title = "Oink!", points = 5,
    description = "Win an item from a Lil' Oink",
    id = 79598, badge = "85934", published = "2019-08-05 8:02:09 AM", modified = "2025-05-13 1:56:25 PM",
    trigger = any_of(re, r => rc[r] && room(r, 1, 4) &&
        mario_x_pos[r] >= 271.0 && mario_x_pos[r] <= 588.0 &&
        mario_z_pos[r] <= -107.0 && mario_z_pos[r] >= -252.0 &&
        any_of(range(0, 9), i => item_slot(r, i) > 0 && prev(item_slot(r, i)) == 0)
	)
)

achievement(
    title = "99.7 FM", points = 5,
    description = "Get the last reward from the Trading Event Toad",
    id = 79599, badge = "85935", published = "2019-08-05 8:02:11 AM", modified = "2024-04-05 3:22:20 PM",
    trigger = any_of(re, r => rc[r] && in_game[r] && room(r, 1, 6) &&
        game_byte(0x15e)[r] == 3 && prev(game_byte(0x15e)[r]) == 2
	)
)

achievement(
    title = "Jackpot", points = 10,
    description = "Win a total of 250 or more coins in the 'Smash Attack' Minigame",
    id = 79600, badge = "85936", published = "2019-08-05 8:02:13 AM", modified = "2025-05-13 1:56:26 PM",
    trigger = any_of(re, r => rc[r] && room(r, 25, 2) && smash_game_total[r] >= 250 && prev(smash_game_total[r]) < 250
	)
)

achievement(
    title = "Why, Spike?", points = 1, type="missable",
    description = "Don't forgive Lakilester",
    id = 79707, badge = "86072", published = "2019-08-07 3:10:48 AM", modified = "2025-05-13 1:56:26 PM",
    trigger = any_of(re, r => rc[r] && room(r, 19, 8) && map_var(10)[r] == 1 && prev(map_var(10)[r]) == 0
    )
)

achievement(
    title = "Afraid of Ghosts", points = 4,
    description = "Make it to the chest at the end of the Spike Room in Tubba Blubba's Castle without using Bow",
    id = 84288, badge = "91675", published = "2019-09-28 7:30:40 PM", modified = "2025-05-13 1:56:26 PM",
    trigger  = any_of(re, r =>
        unless(!rc[r]) && once(prev(map_id[r] != 12) && map_id[r] == 12) &&
        never(area_id[r] != 15) && never(map_id[r] != 12) &&
        never(acting_partner[r] == 0x09 && partner_action_state[r] == 0x01) &&
        trigger_when(
            mario_x_pos[r] >= -262.0 && 
            mario_z_pos[r] <= -200.0 && prev(mario_z_pos[r] > -200.0)
        )
    )
)

achievement(
    title = "Hidden Goodies", points = 10,
    description = "Find every hidden block (Must grab item from each box at least once)",
    id = 321728, badge = "359762", published = "2023-05-26 6:12:17 PM", modified = "2023-06-08 11:12:59 PM",
    trigger = any_of(re, r =>
        measured(sum_of(hidden_block_flags, i => game_flag(i)[r]) == 47, when = rc[r]) &&
        sum_of(hidden_block_flags, i => prev(game_flag(i)[r])) == 46
	)
)

achievement(
    title = "I Feel Like I've Been Scammed", points = 3, type="missable",
    description = "Get an 'Upgrade' from Chet Rippo in Toad Town",
    id = 321729, badge = "359763", published = "2023-05-26 6:12:18 PM", modified = "2023-06-13 9:41:29 PM",
    trigger = any_of(re, r => rc[r] && room(r, 1, 5) &&
        area_flag(50)[r] > prev(area_flag(50)[r])
	)
)

achievement(
    title = "She Does Spells, but Not for Free", points = 3,
    description = "Purchase a 'Special Course' Spell from Merlee in Dry Dry Outpost",
    id = 321730, badge = "359764", published = "2023-05-26 6:12:18 PM", modified = "2023-05-28 5:28:13 PM",
    trigger = any_of(re, r => rc[r] && room(r, 9, 1) && prev(merlee_casts_left[r]) < 20 && merlee_casts_left[r] == 20
	)
)

achievement(
    title = "Old School House Party", points = 1,
    description = "Become 8-Bit Mario in Boo's Mansion",
    id = 321731, badge = "359765", published = "2023-05-26 6:12:18 PM", modified = "2023-05-29 7:41:23 PM",
    trigger = any_of(re, r => rc[r] && room(r, 13, 4) && map_flag(10)[r] > prev(map_flag(10)[r])
	)
)

achievement(
    title = "You're A Monster", points = 0,
    description = "Deal enough damage to Whacka and cause him to disappear",
    id = 321732, badge = "359766", published = "2023-05-26 6:12:19 PM", modified = "2023-05-28 5:28:14 PM",
    trigger = any_of(re, r => rc[r] && room(r, 8, 0) && prev(game_byte(0x75)[r]) < 8 && game_byte(0x75)[r] >= 8
	)
)

achievement(
    title = "Dayzee'd and Confused", points = 5,
    description = "Defeat an Amazy Dayzee",
    id = 321733, badge = "359767", published = "2023-05-26 6:12:19 PM", modified = "2023-05-28 5:28:14 PM",
    trigger = any_of(re, r => rc[r] && enemy_actor(r, 1, addr =>
        byte(addr + 0x135) == 0x33 &&
        prev(byte(addr + 0x1bb)) > 0 && byte(addr + 0x1bb) == 0
	))
)

achievement(
    title = "Loading Screen Aficionado", points = 1, type="missable",
    description = "Wait on any Chapter introduction and hear the classic Mario Bros. theme",
    id = 321734, badge = "359768", published = "2023-05-26 6:12:20 PM", modified = "2023-05-29 4:36:29 PM",
    trigger = any_of(re, r => unless(!rc[r]) && repeated(900, music[r] == 65) && never(area_id[r] != 0)
	)
)

achievement(
    title = "Sorry, Bro!", points = 5, type="missable",
    description = "After getting the Super Boots, go and find Luigi's secret diary BEFORE meeting Lady Bow",
    id = 321737, badge = "359771", published = "2023-05-26 6:12:21 PM", modified = "2023-05-29 8:25:04 PM",
    trigger = any_of(re, r => rc[r] && room(r, 0, 11) && game_flag(0x69)[r] > prev(game_flag(0x69)[r]))
)

achievement(
    title = "Survey Says...!", points = 3, type="missable",
    description = "Answer all of the questions correctly in the 64th Trivia Quiz-Off",
    id = 321738, badge = "359772", published = "2023-05-26 6:12:21 PM", modified = "2023-05-28 5:28:16 PM",
    trigger = any_of(re, r => rc[r] && area_world_id() == 4 && prev(quiz_show_answers_correct_answer_count_for_peach()) == 9 &&
              quiz_show_answers_correct_answer_count_for_peach() == 10
	)
)

achievement(
    title = "Mild Shock", points = 5,
    description = "Use a Thunder Rage from a 'Mystery?' item (Cannot use Double or Triple dip)",
    id = 321863, badge = "359779", published = "2023-05-27 2:01:14 AM", modified = "2023-06-15 12:24:10 AM",
    trigger = any_of(re, r => rc[r] && once(battle_2() == 52 && prev(item_used_id()) == 150 && item_used_id() == 130) &&
              (always_false() || (never(event_id() == 0) && never(remaining_turns_using_his_turn_mario() == 0)))
	)
)

achievement(
    title = "Quite the New Look", points = 1, type="missable",
    description = "As Peach, disguise yourself as an enemy and look at the mirror in her room",
    id = 321950, badge = "359781", published = "2023-05-27 4:40:53 AM", modified = "2023-06-12 4:05:53 AM",
    trigger = any_of(re, r => rc[r] && area_world_id() == 4 && map_id() == 8 && npc_dialogue_id() == 69 && npc_group_id() == 20 &&
              prev(also_dialogue()) == 88 && also_dialogue() == 89 && prev(dialogue()) == 82 && dialogue() == 83
	)
)

achievement(
    title = "Shroomy Slots", points = 10,
    description = "Earn a Mushroom from the Slot Machine in Shy Guy's Toybox",
    id = 322960, badge = "360326", published = "2023-05-29 3:20:59 PM", modified = "2023-10-16 3:15:40 PM",
    trigger = any_of(re, r => rc[r] && area_world_id() == 16 && map_id() == 8 && byte(0x0DBF90) == 1 && (what_2() == 143 || what_2() == 14) &&
              ((prev(item_slots_word()) != 138 && item_slots_word() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit()) != 138 && _16bit() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_2()) != 138 && _16bit_2() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_3()) != 138 && _16bit_3() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_4()) != 138 && _16bit_4() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_5()) != 138 && _16bit_5() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_6()) != 138 && _16bit_6() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_7()) != 138 && _16bit_7() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_8()) != 138 && _16bit_8() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_9()) != 138 && _16bit_9() == 138 && disable_player_inputs_flag() == 1))
	)
)

achievement(
    title = "Mighty Morphin' Shy Guys", points = 5,
    description = "Defeat the groups of two Red, Pink, Yellow, Green, and Blue Shy Guys IN ORDER in the Blue Zone of Shy Guys Toybox (Must not use First Strike Badge!)",
    id = 322736, badge = "359998", published = "2023-05-28 8:28:53 PM", modified = "2024-06-03 1:28:20 AM",
    trigger = any_of(re, r => rc[r] && map_id() == 3 &&
              once(once(once(once(once(once(once(once(once(once(battle_id() == 4096) &&
                  remaining_turns_mario_won_the_battle() > prev(remaining_turns_mario_won_the_battle())) &&
                  battle_id() == 4100) &&
                  remaining_turns_mario_won_the_battle() > prev(remaining_turns_mario_won_the_battle())) &&
                  battle_id() == 4098) &&
                  remaining_turns_mario_won_the_battle() > prev(remaining_turns_mario_won_the_battle())) &&
                  battle_id() == 4101) &&
                  remaining_turns_mario_won_the_battle() > prev(remaining_turns_mario_won_the_battle())) &&
                  battle_id() == 4097) &&
                  remaining_turns_mario_won_the_battle() > prev(remaining_turns_mario_won_the_battle())
              ) &&
              (always_false() || (never(area_world_id() != 16)))
	)
)

leaderboard(
    id = 5385, title = "Jump Attack Highscore",
    description = "Highscore in a single Jump Attack Minigame",
    start  = area_world_id() == 25 && map_id() == 1 && music_id() == 133,
    cancel = area_world_id() == 0 && map_id() == 0,
    submit = map_id() != 1,
    value  = byte(0x10F5C7) * 256 + jump_attack_highest_amount_won_in_a_single_game_16bits(),
    format = "VALUE"
)

leaderboard(
    id = 5384, title = "Jump Attack Total Coins",
    description = "Total Coins won in the Jump Attack Minigame",
    start  = area_world_id() == 25 && map_id() == 1 && music_id() == 133,
    cancel = area_world_id() == 0 && map_id() == 0,
    submit = map_id() != 1,
    value  = byte(0x10F5C1) * 256 + jump_attack_total_coins_won_16bits(),
    format = "VALUE"
)

leaderboard(
    id = 5382, title = "Smash Attack Total Coins",
    description = "Total Coins won in the Smash Attack Minigame",
    start  = area_world_id() == 25 && map_id() == 2 && music_id() == 133,
    cancel = area_world_id() == 0 && map_id() == 0,
    submit = map_id() != 2,
    value  = byte(0x10F5C9) * 256 + smash_attack_total_coins_won_16bits_byte(),
    format = "VALUE"
)

leaderboard(
    id = 5383, title = "Smash Attack Highscore",
    description = "Highscore in a single Smash Attack Minigame",
    start  = area_world_id() == 25 && map_id() == 2 && music_id() == 133,
    cancel = area_world_id() == 0 && map_id() == 0,
    submit = map_id() != 2,
    value  = byte(0x10F5CF) * 256 + smash_attack_highest_amount_won_in_a_single_game_16bits(),
    format = "VALUE"
)

rich_presence_conditional_display(byte(0x0A094A) == 0, "On the Main Menu")

rich_presence_conditional_display(byte(0x0A094A) == 1 && event_id() == 2, "In the Pause Menu at {0} | Level: {1} | {2} Star Spirits Rescued | {3} Total Battles and {4} Star Pieces",
    rich_presence_lookup("Map", area_world_id_word(), MapLookup),
    rich_presence_value("Level", marios_level()),
    rich_presence_lookup("Spirit", star_spirits_low4(), SpiritLookup),
    rich_presence_value("TotalBattles", number_of_battles_word()),
    rich_presence_value("StarPieces", total_star_pieces_collected())
)

rich_presence_conditional_display(byte(0x0A094A) == 1, "Traveling with {0} at {1} | Level: {2} | {3} Star Spirits Rescued | {4} Total Battles and {5} Star Pieces",
    rich_presence_lookup("Partner", partner_currently_out(), PartnerLookup),
    rich_presence_lookup("Map", area_world_id_word(), MapLookup),
    rich_presence_value("Level", marios_level()),
    rich_presence_lookup("Spirit", star_spirits_low4(), SpiritLookup),
    rich_presence_value("TotalBattles", number_of_battles_word()),
    rich_presence_value("StarPieces", total_star_pieces_collected())
)

rich_presence_display("Preparing to play Paper Mario")
