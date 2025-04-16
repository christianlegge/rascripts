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

world_npcs = {
    "US": 0xa0990,
    "JP": 0x9e7a0,
    "EU": 0x9f100
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

artifact_obtained = game_flag(0x374)
artifact_block = game_flag(0x37F)
slow_go_chest = game_flag(0x385)
super_hammer_chest = game_flag(0x384)
super_hammer_block = game_flag(0x380)
record_chest = game_flag(0x3D2)
spike_room_chest = game_flag(0x421)

mf0 = map_flag(0)
mf1 = map_flag(1)
mf13 = map_flag(13)


function unsigned_lt(a, b) {
    if (b >= 0x80) {
        return a >= 0x80 && a < b
    } else {
        return a >= 0x80 || a < b
    }
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


// Achievements

achievement("Cream Cheese", "Obtain the Repel Gel in Prologue without breaking the stone block.", points = 2,
    trigger = any_of(regions, r => 
        region_check[r] && prologue_stone_block[r] == 0 && prologue_repel_gel[r] > prev(prologue_repel_gel[r]) && map_id[r] == 0x02 && area_id[r] == 0x00
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

achievement("Parakarryless Seed", "Obtain the Magical Seed from the Bub-ulb in Mt. Rugged without using Parakarry.", points = 25,
    trigger = any_of(regions, r => 
        region_check[r] && never(region_check[r] && area_id[r] != 8) && never(region_check[r] && map_id[r] != 2) && once(prev(map_id[r]) != 2 && map_id[r] == 2) && never(region_check[r] && acting_partner[r] == 0x04 && partner_action_state[r] == 0x01) && trigger_when(mt_rugged_seed[r] == 1) && prev(mt_rugged_seed[r]) == 0
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


if (!debug) {
    rich_presence_conditional_display(region_check["US"], "Mario is exploring {0} [♥{1}/{2}]", 
        area_id_lookup_us, rp_hp_us, rp_max_hp_us)
    rich_presence_conditional_display(region_check["JP"], "Mario is exploring {0} [♥{1}/{2}]",
        area_id_lookup_jp, rp_hp_jp, rp_max_hp_jp)
    rich_presence_conditional_display(region_check["EU"], "Mario is exploring {0} [♥{1}/{2}]",
        area_id_lookup_eu, rp_hp_eu, rp_max_hp_eu)
}
else {
    rich_presence_conditional_display(region_check["US"], "Mario is exploring {0} [♥{1}/{2}] [Area ID: {3}] [Entry ID: {4}] [Map ID: {5}], [Story Progress: {6}]",
        area_id_lookup_us, rp_hp_us, rp_max_hp_us, rp_area_id_us, rp_entry_id_us, rp_map_id_us, rp_story_progress_us)
    rich_presence_conditional_display(region_check["JP"], "Mario is exploring {0} [♥{1}/{2}] [Area ID: {3}] [Entry ID: {4}] [Map ID: {5}] [Story Progress: {6}]",
        area_id_lookup_jp, rp_hp_jp, rp_max_hp_jp, rp_area_id_jp, rp_entry_id_jp, rp_map_id_jp, rp_story_progress_jp)
    rich_presence_conditional_display(region_check["EU"], "Mario is exploring {0} [♥{1}/{2}] [Area ID: {3}] [Entry ID: {4}] [Map ID: {5}] [Story Progress: {6}]",
        area_id_lookup_eu, rp_hp_eu, rp_max_hp_eu, rp_area_id_eu, rp_entry_id_eu, rp_map_id_eu, rp_story_progress_eu)
}

rich_presence_display("Glitching Paper Mario")
