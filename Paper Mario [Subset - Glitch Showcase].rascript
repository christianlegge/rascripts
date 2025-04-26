// Paper Mario [Subset - Glitch Showcase]
// #MinimumVersion = 1.3
// #ID = 33114

debug = true

regions = [ "US", "JP", "EU" ]

region_check = {
    "US": ascii_string_equals(0x77bd0, " grP", 4),
    "JP": ascii_string_equals(0x77ba0, " grP", 4),
    "EU": ascii_string_equals(0x73f70, " grP", 4)
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

first_enemy_type = {
    "US": byte(tbyte(0xdc070 + 0xe0) + 0x135),
    "JP": byte(tbyte(0xdc050 + 0xe0) + 0x135),
    "EU": byte(tbyte(0xd87e0 + 0xe0) + 0x135)
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

current_hp = {
    "US": byte(0x10f291),
    "JP": byte(0x10f451),
    "EU": byte(0x10dd91)
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

has_laki = {
    "US": byte(0x10f290 + 0x57),
    "JP": byte(0x10f450 + 0x57),
    "EU": byte(0x10dd90 + 0x57)
}

item_inv = {
    "US": byte(0x10f290 + 0x1b4),
    "JP": byte(0x10f450 + 0x1b4),
    "EU": byte(0x10dd90 + 0x1b4)
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
    "US": byte(0x10f290 + 0xb4),
    "JP": byte(0x10f450 + 0xb4),
    "EU": byte(0x10dd90 + 0xb4)
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
        "US": byte(0x2dbca8 + idx),
        "JP": byte(0x2dbca8 + idx),
        "EU": byte(0x2e1f88 + idx)
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
fpplus_bombwall = game_flag(0x241)
fpplus_koopa_chest = game_flag(0x282)
smash_charge = game_flag(0x27e)
koopa_fortress_key2 = game_flag(0x288)
koopa_fortress_key3_bombwall = game_flag(0x291)
koopa_fortress_key3 = game_flag(0x287)
koopa_fortress_door1 = game_flag(0x28A)
koopa_fortress_door2 = game_flag(0x28B)
koopa_fortress_door3 = game_flag(0x28C)
koopa_fortress_door4 = game_flag(0x28D)
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
record_chest = game_flag(0x3D2)
spike_room_chest = game_flag(0x421)
anti_guy_defeated = game_flag(0x451)
anti_guy_chest = game_flag(0x49F)
dictionary_chest = game_flag(0x47B)
toybox_blue_switch = game_flag(0x44D)
ultra_hammer_chest = game_flag(0x523)
happyflower_tree = game_flag(0x566)
yellow_plant_fed = game_flag(0x554)
bubble_plant_fed = game_flag(0x584)
sun_tower_rock = game_flag(0x579)
warehouse_key = game_flag(0x5BA)
warehouse_unlocked = game_flag(0x5BB)

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
        return a >= 0x80 || a < b
    }
}

function unsigned_gt(a, b) {
    if (b >= 0x80) {
        return a < 0x80 || a > b
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

achievement("Cream Cheese", "Obtain the Repel Gel in Prologue without breaking the stone block.", points = 2,
    trigger = any_of(regions, r => 
        region_check[r] && prologue_stone_block[r] == 0 && prologue_repel_gel[r] > prev(prologue_repel_gel[r]) && map_id[r] == 0x02 && area_id[r] == 0x00
    )
)

achievement("Refight Goomba King", "After defeating Goomba King, fight him again.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 0x00 && map_id[r] == 0x09 &&
        trigger_when(first_enemy_type[r] == 146 && battle_state[r] != 0) && prev(first_enemy_type[r] != 146) &&
        unsigned_gt(story_progress[r], 0x8f)
    )
)

achievement("Jr. Skip", "Obtain the Hammer and exit the Playground without fighting Jr. Troopa.", points = 25, 
    trigger = any_of(regions, r => 
        region_check[r] && __ornext(map_id[r] == 0x03 || map_id[r] == 0x02) && area_id[r] == 0 &&
        story_progress[r] == 0x88 && trigger_when(prev(current_hammer[r]) == 0xff && current_hammer[r] == 0x00) &&
        trigger_when(map_id[r] == 0x02)
    )
)

achievement("Retrigger Prologue", "After completing the Prologue, fight Jr. Troopa in the playground again.", points = 25, 
    trigger = any_of(regions, r => 
        region_check[r] && map_id[r] == 0x03 && area_id[r] == 0 &&
        trigger_when(story_progress[r] == 0x8a) && unsigned_gt(prev(story_progress[r]), 0x98)
    )
)

achievement("Early Star Piece", "In Prologue and with Goompa as your partner, obtain the Star Piece on the ledge without walking to the right of the tree.", points = 10,
    trigger = any_of(regions, r => 
        region_check[r] && once(prev(map_id[r] == 0x02) && map_id[r] == 0x04) &&
        never(region_check[r] && current_partner[r] != 5) &&
        never(region_check[r] && area_id[r] != 0) && never(region_check[r] && map_id[r] != 4) &&
        never(region_check[r] && mario_x_pos[r] >= 600.0 && mario_x_pos[r] < 700.0) &&
        prev(playground_starpiece[r] == 0) && trigger_when(playground_starpiece[r] == 1)
    )
)

achievement("Log Skip", "Reach the southern area of Toad Town beyond the logs before clearing them.", points = 5,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 0x01 && trigger_when(entry_id[r] == 0x02) && __ornext(map_id[r] == 0x02 || map_id[r] == 0x03) && trigger_when(map_id[r] == 0x03) && unsigned_lt(story_progress[r], 0xb4) && trigger_when(mario_x_pos[r] > 80 && prev(air_falling[r] == 1) && air_falling[r] == 0)
    )
)

achievement("Black Toad Skip", "Begin Chapter 1 without speaking to Merlon while the black Toads are blocking the path.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] && prev(area_id[r]) == 0x1 && prev(map_id[r]) == 0x2 && trigger_when(area_id[r] == 0x0 && map_id[r] == 13) && unsigned_lt(story_progress[r], 0x9c)
    )
)

achievement("Invisible Bridge Clip", "In Pleasant Path, on the screen to the right of Koopa Village, cross the river and exit the screen without hitting the blue switch and without using LZS.", points = 5,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 6 && prev(map_id[r] == 7) && entry_id[r] == 0 &&
        unsigned_lt(story_progress[r], 0xa5) &&
        trigger_when(map_id[r] == 0x8)
    )
)

achievement("Water Staircase Skip", "Reach the Koopa Bros. Fortress battlements without unlocking any of its doors.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 7 && prev(map_id[r] == 0x1) && entry_id[r] == 0 &&
        unsigned_lt(story_progress[r], 0xb0) &&
        koopa_fortress_door1[r] == 0 && koopa_fortress_door2[r] == 0 && koopa_fortress_door3[r] == 0 && koopa_fortress_door4[r] == 0 &&
        trigger_when(map_id[r] == 0x9)
    )
)

achievement("FP Plus Early", "Obtain the FP Plus above Koopa Bros. Fortress without blowing up the wall to reach the pipe.", points = 10,
    trigger = any_of(regions, r => 
        region_check[r] &&
        __ornext(encode_area_map(r) == 0x0700 || encode_area_map(r) == 0x0608) &&
        fpplus_bombwall[r] == 0 && prev(fpplus_koopa_chest[r] == 0) && 
        trigger_when(fpplus_koopa_chest[r] == 1)
    )
)

achievement("Staircase Skip", "In Koopa Bros. Fortress, recruit Bombette before obtaining the second Fortress Key.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 7 && __ornext(map_id[r] == 0x4 || map_id[r] == 0x5 || map_id[r] == 0x6) &&
        unsigned_lt(story_progress[r], 0xaa) &&
        koopa_fortress_key2[r] == 0 && prev(has_bombette[r] == 0) && trigger_when(has_bombette[r] == 1)
    )
)

achievement("Pie Jumps", "Cross the top of the room with 3 jail cells while only hitting the red switch once.", points = 2,
    trigger = any_of(regions, r => 
        region_check[r] && once(prev(map_id[r] == 4) && map_id[r] == 3 && entry_id[r] == 3) &&
        never(region_check[r] && area_id[r] != 7) &&
        never(region_check[r] && map_id[r] != 2 && map_id[r] != 3) &&
        never(region_check[r] && map_id[r] == 2 && entry_id[r] != 3) &&
        never(repeated(2, region_check[r] && mv0[r] != prev(mv0[r]))) &&
        trigger_when(prev(map_id[r] == 0x3) && map_id[r] == 0x2 && entry_id[r] == 3)
    )
)

achievement("Smash Charge KSJ", "Obtain the Smash Charge badge in Koopa Bros. Fortress from the platform below.", points = 3,
    trigger = any_of(regions, r => 
        region_check[r] &&
        never(region_check[r] && has_kooper[r] == 0) &&
        never(region_check[r] && area_id[r] != 7) &&
        never(region_check[r] && map_id[r] != 1) &&
        never(region_check[r] && prev(smash_charge[r] == 1)) &&
        once(mario_y_pos[r] >= 399.0 && mario_y_pos[r] < 401.0 && mario_x_pos[r] < -100.0) &&
        never(region_check[r] && mario_x_pos[r] > 100.0 && mario_y_pos[r] > 450.0) &&
        trigger_when(smash_charge[r] == 1)
    )
)

achievement("Right Fortress Jail Key", "Obtain the Fortress Key in the rightmost cell in the room with the red switches without blowing up the wall, then exit the area.", points = 5,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 7 && prev(map_id[r]) == 3 &&
        trigger_when(__ornext(map_id[r] == 0x2 || map_id[r] == 0x4)) &&
        koopa_fortress_key3_bombwall[r] == 0 && trigger_when(koopa_fortress_key3[r] == 1)
    )
)

achievement("Parakarryless Seed", "Obtain the Magical Seed from the Bub-ulb in Mt. Rugged without using Parakarry.", points = 25,
    trigger = any_of(regions, r => 
        region_check[r] && never(region_check[r] && area_id[r] != 8) && never(region_check[r] && map_id[r] != 2) && once(prev(map_id[r]) != 2 && map_id[r] == 2) && never(region_check[r] && acting_partner[r] == 0x04 && partner_action_state[r] == 0x01) && trigger_when(mt_rugged_seed[r] == 1) && prev(mt_rugged_seed[r]) == 0
    )
)

achievement("Sand Clip", "After completing Chapter 2, obtain the Ruins Key under the sand to the right of the statue room.", points = 5,
    trigger = any_of(regions, r => 
        region_check[r] && area_id[r] == 11 && __ornext(map_id[r] == 11 || map_id[r] == 15) &&
        unsigned_gt(story_progress[r], 0xc5) && has_laki[r] == 1 && current_hammer[r] >= 0x01 &&
        prev(ruins_key4[r] == 0) && trigger_when(ruins_key4[r] == 1)
    )
)

achievement("Buzzar Skip", "Cross Buzzar's bridge and enter Dry Dry Desert without alerting him.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && once(area_id[r] == 8 && prev(map_id[r] == 2) && map_id[r] == 4) && 
        buzzar_defeated[r] == 0 && trigger_when(area_id[r] == 10 && map_id[r] == 49) &&
        never(region_check[r] && area_id[r] == 8 && map_id[r] != 4) && never(region_check[r] && area_id[r] != 8 && area_id[r] != 10) &&
        check_npc(world_npcs[r], 12, addr => never(byte(addr + 0xa7) == 1 && bit0(addr + 2) > prev(bit0(addr + 2))))
    )
)

achievement("Rock Climb", "On the third screen of Mt. Rugged, enter from the lower left entrance and exit on the upper left.", points = 1,
    trigger = any_of(regions, r =>
        region_check[r] && prev(entry_id[r]) == 0 && prev(map_id[r] == 1) && area_id[r] == 8 &&
        trigger_when(map_id[r] == 3)
    )
)

achievement("Outpost Jump", "On the east screen of Dry Dry Outpost, enter the rooftop house without entering through the rightmost door.", points = 2,
    trigger = any_of(regions, r =>
        region_check[r] && never(region_check[r] && mario_x_pos[r] >= 225.0 && mario_z_pos[r] <= -63.0) && 
        never(region_check[r] && area_id[r] != 9) && never(region_check[r] && map_id[r] != 1) && once(prev(map_id[r] == 0) && map_id[r] == 1) &&
        trigger_when(mario_y_pos[r] == 140.0 && prev(mario_z_pos[r]) >= -180.0 && mario_z_pos[r] <= -180.0 && mario_x_pos[r] >= -430.0 && mario_x_pos[r] <= -350.0)
    )
)

achievement("Artifact Jump", "Obtain the Artifact in Dry Dry Ruins without hitting the switch or breaking the block.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && never(region_check[r] && mf0[r] != prev(mf0[r])) && 
        prev(artifact_obtained[r] == 0) && artifact_block[r] == 0 &&
        once(region_check[r] && area_id[r] == 11 && map_id[r] == 6 && prev(map_id[r] != 6)) &&
        never(region_check[r] && area_id[r] != 11) && never(region_check[r] && map_id[r] != 6) &&
        trigger_when(artifact_obtained[r] == 1)
    )
)

achievement("Super Hammer Puzzle Skip", "Obtain the Super Hammer without breaking the block and without pressing any of the staircase switches.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 7) && map_id[r] == 8) &&
        prev(super_hammer_chest[r] == 0) && trigger_when(super_hammer_chest[r] == 1) &&
        never(region_check[r] && mf0[r] != prev(mf0[r])) &&
        never(region_check[r] && mf1[r] != prev(mf1[r])) &&
        never(super_hammer_block[r] == 1) &&
        never(region_check[r] && map_id[r] != 8) && never(region_check[r] && area_id[r] != 11)
    )
)


achievement("Slow Go Early", "Obtain Slow Go without pressing any of the staircase switches.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 7) && map_id[r] == 8) &&
        prev(slow_go_chest[r] == 0) && trigger_when(slow_go_chest[r] == 1) &&
        never(region_check[r] && mf0[r] != prev(mf0[r])) &&
        never(region_check[r] && mf1[r] != prev(mf1[r])) &&
        never(region_check[r] && map_id[r] != 8) && never(region_check[r] && area_id[r] != 11)
    )
)

achievement("Chapter 2 Clippy", "Reach the room beyond the any of the locked doors in Dry Dry Ruins without unlocking that door.", points = 5,
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

achievement("Chapter 2 LZS", "Touch Mamar's Star Spirit card without activating the cutscene.", points = 10,
    trigger = lzs(200, 11, 14, 14, 16)
)

achievement("Record Skip", "Obtain the Weight in Boo's Mansion without playing the Record.", points = 10,
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

achievement("Chapter 3 LZS", "Touch Skolar's Star Spirit card without activating the cutscene.", points = 10,
    trigger = any_of([1, 11], el => lzs(0xf0, 14, 4, 14, el))
)

achievement("Spike Room", "Obtain the Castle Key in Tubba's Castle's spike room without using Bow.", points = 3,
    trigger  = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] != 12) && map_id[r] == 12) &&
        never(region_check[r] && area_id[r] != 15) && never(region_check[r] && map_id[r] != 12) &&
        prev(spike_room_chest[r] == 0) && trigger_when(spike_room_chest[r] == 1) &&
        never(region_check[r] && acting_partner[r] == 0x09 && partner_action_state[r] == 0x01)
    )
)

achievement("Chapter 4 Early", "Enter Shy Guy's Toybox without Bow and without revealing the door.", points = 4,
    trigger = any_of(regions, r =>
        region_check[r] && unsigned_lt(story_progress[r], 0xf6) &&
        prev(area_id[r] == 1) && prev(map_id[r] == 0x5) &&
        trigger_when(area_id[r] == 0 && map_id[r] == 13)
    )
)

achievement("Blue Switch Jailbreak", "Pull the lever in Shy Guy's Toybox's Blue Station without arriving from the left on the train, then exit the area.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && 
        never(region_check[r] && map_id[r] != 2 && toybox_blue_switch[r] == 0) &&
        once(area_id[r] == 16 && prev(map_id[r] != 0x2) && map_id[r] == 0x2 && entry_id[r] != 2 && toybox_blue_switch[r] == 0) &&
        trigger_when(prev(map_id[r] == 0x2) && map_id[r] != 0x2 && toybox_blue_switch[r] == 1) 
    )
)

achievement("Gourmet Guy Skip", "In Shy Guy's Toybox's Pink Station, pull the lever to fix the track without giving a cake to Gourmet Guy.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 16 && map_id[r] == 5 &&
        unsigned_lt(prev(story_progress[r]), 0xfe) && trigger_when(story_progress[r] == 0xff)
    )
)

achievement("Anti Guy Skip", "Open Anti Guy's chest while he's still guarding it.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 16 && map_id[r] == 12 &&
        prev(anti_guy_chest[r] == 0) && trigger_when(anti_guy_chest[r] == 1) &&
        anti_guy_defeated[r] == 0
    )
)

achievement("Bowless Green Station", "In the room with the conveyor belts in Shy Guy's Toybox's Green Station, get the Dictionary and exit the room without using Bow.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && never(region_check[r] && area_id[r] != 16) && once(prev(map_id[r] == 0x7) && map_id[r] == 0x8 && dictionary_chest[r] == 0) &&
        never(region_check[r] && map_id[r] != 8 && dictionary_chest[r] == 0) && 
        trigger_when(prev(map_id[r] == 0x8) && map_id[r] == 0x7 && dictionary_chest[r] == 1) &&
        never(region_check[r] && acting_partner[r] == 0x09 && partner_action_state[r] == 0x01)
    )
)

achievement("Chapter 4 LZS", "Touch Muskular's Star Spirit card without activating the cutscene.", points = 10,
    trigger = lzs(4, 16, 14, 14, 13)
)

achievement("Raph Skip", "Enter Mt. Lavalava without taking the zipline.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && once(area_id[r] == 17 && prev(map_id[r] != 20) && map_id[r] == 20 && entry_id[r] != 2) &&
        never(region_check[r] && mf10[r] == 1) &&
        never(region_check[r] && area_id[r] != 17 && area_id[r] != 18) &&
        never(region_check[r] && area_id[r] == 17 && map_id[r] != 20) &&
        trigger_when(prev(area_id[r] == 17) && area_id[r] == 18)
    )
)

achievement("Ultra Hammer Early", "Open the Ultra Hammer chest without using Parakarry or Lakilester while in the room and without riding Sushie.", points = 4,
    trigger = any_of(regions, r =>
        region_check[r] && once(ultra_hammer_chest[r] == 0 && area_id[r] == 18 && prev(map_id[r] != 0x6) && map_id[r] == 0x6) &&
        never(region_check[r] && area_id[r] != 18) && never(region_check[r] && map_id[r] != 6) &&
        never(acting_partner[r] == 0x04 && partner_action_state[r] == 0x01) &&
        never(acting_partner[r] == 0x08 && partner_action_state[r] == 0x01) &&
        never(acting_partner[r] == 0x07 && partner_action_state[r] == 0x01) &&
        trigger_when(ultra_hammer_chest[r] > prev(ultra_hammer_chest[r]))
    )
)

achievement("Ultra Hammer Skip", "Reach the third zipline in Mt. Lavalava without breaking the Ultra Hammer block in front of the door.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && unsigned_lt(story_progress[r], 0x1d) && 
        area_id[r] == 18 && prev(map_id[r] == 2) && trigger_when(map_id[r] == 8 && entry_id[r] == 0)
    )
)

achievement("Volcano Jump", "Go from the upper left entrance in Mt. Lavalava's main room to the lower left exit without crossing to the right side of the room.", points = 10,
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

achievement("Lava Piranha OOB", "First Strike Lava Piranha.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 18 && map_id[r] == 13 && battle_state[r] < 3 &&
        unsigned_lt(story_progress[r], 0x23) &&
        trigger_when(prev(battle_state[r] == 1) && battle_state[r] == 2 && first_enemy_type[r] == 179)
    )
)

achievement("Peach Warp", "After completing Chapter 5, trigger the volcano escape sequence again.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 18 && trigger_when(prev(map_id[r] == 14) && map_id[r] == 15) &&
        unsigned_gt(story_progress[r], 0x25) &&
        __ornext(map_id[r] == 12 || map_id[r] == 13 || map_id[r] == 14 || map_id[r] == 15)
    )
)

achievement("Early Laki", "Reach Lakilester without feeding the Bubble Plant.", points = 25,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 19 && trigger_when(map_id[r] == 8 && has_laki[r] > prev(has_laki[r])) &&
        __ornext(map_id[r] == 9 || map_id[r] == 10 || map_id[r] == 8 || map_id[r] == 0) &&
        bubble_plant_fed[r] == 0
    )
)

achievement("Dayzee Bypass", "Reach the Upgrade Block behind the Yellow Plant without walking to the right of the gate.", points = 2,
    trigger = any_of(regions, r =>
        region_check[r] && once(prev(map_id[r] == 0x0) && map_id[r] == 0x3 && entry_id[r] == 0) &&
        never(region_check[r] && mario_x_pos[r] >= -600.0 && mario_x_pos[r] < -500.0) &&
        never(region_check[r] && area_id[r] != 19) &&
        never(region_check[r] && map_id[r] != 3) &&
        ((trigger_when(mario_y_pos[r] >= 50.0 && mario_z_pos[r] <= -72.9 && prev(acting_partner[r] == 0x8) && acting_partner[r] == 0x0)) ||
        (trigger_when(mario_y_pos[r] >= 50.0 && mario_z_pos[r] <= -73.0 && prev(mario_z_pos[r]) > 73.0 && acting_partner[r] == 0x0)))
    )
)

achievement("Badge Dupe", "Obtain more than one Happy Flower badge from the trees in Flower Fields.", points = 1,
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

achievement("Yellow Berry Skip", "Reach the area beyond the Yellow Plant's gate in Flower Fields without feeding it or riding Lakilester.", points = 10,
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

achievement("Laki-less Puff Puff Machine", "Without obtaining Lakilester, destroy the Puff Puff Machine in Flower Fields and return to the main area.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 19 &&
        story_progress[r] == 53 && has_laki[r] == 0 &&
        prev(map_id[r] == 11) && map_id[r] == 0x0
    )
)

achievement("Sun Tower Skip", "Speak to the Sun in Flower Fields without blowing up the rock to fix the staircase.", points = 25,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 19 && map_id[r] == 10 &&
        sun_tower_rock[r] == 0 &&
        prev(story_progress[r] != 50) && trigger_when(story_progress[r] == 50)
    )
)

achievement("Chapter 6 LZS", "Touch Klevar's Star Spirit card without activating the cutscene.", points = 50,
    trigger = lzs(0x38, 19, 15, 14, 14)
)

achievement("Reverse All Cards I", "Touch Kalmar's Star Spirit card before any of the other ones.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && prev(story_progress[r] == 0x56) && story_progress[r] == 0x57 &&
        prev(area_id[r] == 21) && prev(map_id[r] == 23) && max_star_power[r] == 0
    )
)

achievement("? Bridge Without Ultra", "Reach Chapter 7 without Ultra Boots.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && prev(area_id[r] == 2) &&
        __ornext(prev(map_id[r] == 13) || prev(map_id[r] == 18) || prev(map_id[r] == 17)) &&
        current_boots[r] < 2 && prev(ch7_started[r] == 0) && trigger_when(ch7_started[r] == 1 && prev(map_id[r] == 13))
    )
)

achievement("Murder Solved Early", "In Shiver City, speak to Herringway before witnessing Mayor Penguin's murder or obtaining the Warehouse Key.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && unsigned_lt(prev(story_progress[r]), 0x3f) && trigger_when(story_progress[r] == 0x41) &&
        warehouse_key[r] == 0 && warehouse_unlocked[r] == 0 &&
        area_id[r] == 20 && map_id[r] == 10
    )
)

achievement("Snowmen Skip", "Without opening the door and without riding Sushie, enter the door past the snowmen in Shiver Region.", points = 3,
    trigger = any_of(regions, r =>
        region_check[r] && unsigned_lt(prev(story_progress[r]), 0x4a) &&
        prev(map_id[r] == 3) && trigger_when(map_id[r] == 6) &&
        area_id[r] == 20 && acting_partner[r] != 0x07 && has_laki[r] == 1
    )
)

achievement("Mirror Clip", "Enter the main hall on one side of the mirror and exit on the other side.", points = 3,
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

achievement("Small Statue Skip", "Enter the room underneath the large statue in Crystal Palace without moving it out of the way.", points = 5,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 21 && prev(map_id[r] == 17) &&
        unsigned_lt(story_progress[r], 0x54) &&
        trigger_when(map_id[r] == 27)
    )
)

achievement("Kooper Puzzle Skip", "In Crystal Palace, escape from the Duplighosts who are trying to impersonate Kooper without revealing any of them.", points = 2,
    trigger = any_of(regions, r =>
        region_check[r] && area_id[r] == 21 && prev(map_id[r] == 15) &&
        trigger_when(map_id[r] == 16) &&
        unsigned_lt(story_progress[r], 0x52)
    )
)

achievement("Inventory Overflow", "Sell a badge to a shop.", points = 10,
    trigger = any_of(regions, r =>
        region_check[r] && any_of(range(0, 9), idx =>
            prev_item_slot(r, idx) >= 0xe0 && prev_item_slot(r, idx) <= 0x154 &&
            dword(shop_addr[r] + 0xc) == idx &&
            coins[r] > prev(coins[r])
        )
    )
)


achievement("Reverse All Cards II", "Touch Klevar's Star Spirit card having only completed Chapter 7 previously.", points = 10,
    trigger = rac(0x38, 19, 15, [ch7_palacekeyused], [ch1_beatkoopabros, ch2_beattutankoopa, ch3_mysticalkey, ch4_bombedwall, ch5_intruderalert2])
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



// Rich Presence

area_id_lookup_us = rich_presence_lookup("Area", area_id["US"], area_id_values)
area_id_lookup_jp = rich_presence_lookup("Area", area_id["JP"], area_id_values)
area_id_lookup_eu = rich_presence_lookup("Area", area_id["EU"], area_id_values)
rp_hp_us = rich_presence_value("HP", current_hp["US"])
rp_hp_jp = rich_presence_value("HP", current_hp["JP"])
rp_hp_eu = rich_presence_value("HP", current_hp["EU"])
rp_max_hp_us = rich_presence_value("Max HP", max_hp["US"])
rp_max_hp_jp = rich_presence_value("Max HP", max_hp["JP"])
rp_max_hp_eu = rich_presence_value("Max HP", max_hp["EU"])
rp_area_id_us = rich_presence_value("Area ID", area_id["US"])
rp_area_id_jp = rich_presence_value("Area ID", area_id["JP"])
rp_area_id_eu = rich_presence_value("Area ID", area_id["EU"])
rp_entry_id_us = rich_presence_value("Entry ID", entry_id["US"])
rp_entry_id_jp = rich_presence_value("Entry ID", entry_id["JP"])
rp_entry_id_eu = rich_presence_value("Entry ID", entry_id["EU"])
rp_map_id_us = rich_presence_value("Map ID", map_id["US"])
rp_map_id_jp = rich_presence_value("Map ID", map_id["JP"])
rp_map_id_eu = rich_presence_value("Map ID", map_id["EU"])
rp_story_progress_us = rich_presence_value("Story Progress", story_progress["US"])
rp_story_progress_jp = rich_presence_value("Story Progress", story_progress["JP"])
rp_story_progress_eu = rich_presence_value("Story Progress", story_progress["EU"])
rp_first_enemy_type = rich_presence_value("First Enemy Type", byte(tbyte(0xdc070 + 0xe0) + 0x135))


if (!debug) {
    rich_presence_conditional_display(region_check["US"], "Mario is exploring {0} [♥{1}/{2}]", 
        area_id_lookup_us, rp_hp_us, rp_max_hp_us)
    rich_presence_conditional_display(region_check["JP"], "Mario is exploring {0} [♥{1}/{2}]",
        area_id_lookup_jp, rp_hp_jp, rp_max_hp_jp)
    rich_presence_conditional_display(region_check["EU"], "Mario is exploring {0} [♥{1}/{2}]",
        area_id_lookup_eu, rp_hp_eu, rp_max_hp_eu)
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
