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

function unsigned_lt(a, b) {
    if (b >= 0x80) {
        return a >= 0x80 && a < b
    } else {
        return a >= 0x80 || a < b
    }
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
