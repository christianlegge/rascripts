// Conker's Pocket Tales
// #ID = 4893
// #MinimumVersion = 1.3

function key() => byte(0x00C419)
function first_key() => byte(0x00C429)
function mushroom_town_key() => byte(0x00C42A)
function barn_key() => byte(0x00C42B)
function has_slingshot() => byte(0x00C460)
function spatoon() => byte(0x00C462)
function pan() => byte(0x00C463)
function coin_ingot() => byte(0x00C464)
function scuba_mask() => byte(0x00C465)
function coin() => byte(0x00C466)
function dkc_theme() => byte(0x00C563)
function countdown_to_theme() => byte(0x00C564)
function ammo() => byte(0x00CED9)
function gbc_invites() => byte(0x00CEE0)
function gbc_blues() => byte(0x00CEE1)
function gbc_reds() => byte(0x00CEE2)
function gb_blues() => bcd(byte(0xffad))
function gbc_acorns_saved() => byte(0xce42)
function gbc_berri() => byte(0xc456)
function gb_invites() => bcd(byte(0xffae))
function gb_berri() => bit7(0xc201)
function gb_berri_and_acorns() => bitcount(0xc201)

// Minigame stuff
//
function gb_targets_left() => byte(0xdf7c)
function gb_target_time_seconds() => bcd(byte(0xdf7b))
function gb_target_time_frac() => byte(0xdecf)

function gb_target_time_remaining_100() {
    whole = gb_target_time_seconds() * 100
    frac = prev(gb_target_time_frac())
    frac_hundreds = (60 - frac) * 100 / 60
    return max_of(measured(whole + frac_hundreds, when = frac != 0x00),
    measured(whole, when = frac == 0x00))
}

function gb_lj_distance_meters() => byte(0xdf88)
function gb_lj_distance_frac() => byte(0xdf89)
function gb_lj_landed() => byte(0xdf7e) == 0x02 && prev(byte(0xdf7e)) == 0x01

function gb_lj_distance_100() {
    whole = gb_lj_distance_meters()
    frac = gb_lj_distance_frac()
    return whole * 100 + frac * 100 / 16
}

function gb_hurdle_distance() => word_be(0xdf76)
function gb_hurdle_conker_time_secs() => bcd(byte(0xdf71))
function gb_hurdle_conker_time_frac() => byte(0xdf72)
function gb_hurdle_conker_time_raw() => word_be(0xdf71)

function gb_hurdle_time_100() {
    whole = gb_hurdle_conker_time_secs() * 100
    frac = gb_hurdle_conker_time_frac() * 100 / 60
    return whole + frac
}

function gb_swim_distance() => word_be(0xdf76)
function gb_swim_conker_time_secs() => bcd(byte(0xdf71))
function gb_swim_conker_time_frac() => byte(0xdf72)
function gb_swim_conker_time_raw() => word_be(0xdf71)

function gb_swim_time_100() {
    whole = gb_swim_conker_time_secs() * 100
    frac = gb_swim_conker_time_frac() * 100 / 60
    return whole + frac
}

function gb_boat_lap() => byte(0xdfb1)
function gb_boat_lap1_secs() => bcd(byte(0xdfb3))
function gb_boat_lap1_frac() => byte(0xdfb4)
function gb_boat_lap2_secs() => bcd(byte(0xdfb5))
function gb_boat_lap2_frac() => byte(0xdfb6)

function gb_boat_total_time_100() {
    whole1 = gb_boat_lap1_secs() * 100
    frac1 = gb_boat_lap1_frac() * 100 / 60
    whole2 = gb_boat_lap2_secs() * 100
    frac2 = gb_boat_lap2_frac() * 100 / 60
    return whole1 + frac1 + whole2 + frac2
}


// Permanent Flags
//
final_acorns_gb = [
    bit0(0xc201),
    bit1(0xc201),
    bit2(0xc201),
    bit3(0xc201),
    bit4(0xc201),
    bit5(0xc201),
    bit6(0xc201)
]

function gb_acorns_saved() {
    return sum_of(final_acorns_gb, _ => _)
}

willow_blues_gb = [
    bit4(0xc215),
    bit4(0xc216), bit5(0xc216), bit6(0xc216), bit7(0xc216),
    bit0(0xc217), bit1(0xc217), bit2(0xc217)
]

vulture_blues_gb = [
    bit4(0xc217), bit5(0xc217), bit6(0xc217), bit7(0xc217),
    bit0(0xc218), bit1(0xc218), bit2(0xc218), bit3(0xc218)
]

krow_blues_gb = [
    bit4(0xc218), bit5(0xc218), bit6(0xc218), bit7(0xc218),
    bit0(0xc219), bit1(0xc219), bit2(0xc219), bit3(0xc219)
]

claw_blues_gb = [
    bit4(0xc219), bit5(0xc219), bit6(0xc219), bit7(0xc219),
    bit0(0xc21a), bit1(0xc21a), bit2(0xc21a), bit3(0xc21a)
]

mako_blues_gb = [
    bit4(0xc21a), bit5(0xc21a), bit6(0xc21a), bit7(0xc21a),
    bit0(0xc21b), bit1(0xc21b), bit2(0xc21b), bit3(0xc21b)
]

aztec_blues_gb = [
    bit5(0xc21d), bit6(0xc21d), bit7(0xc21d),
    bit0(0xc21e), bit1(0xc21e), bit2(0xc21e), bit3(0xc21e), bit4(0xc21e)
]

willow_invites_gb = [
    bit0(0xc207), bit1(0xc207), bit2(0xc207), bit3(0xc207)
]

vulture_invites_gb = [
    bit4(0xc207), bit5(0xc207), bit6(0xc207), bit7(0xc207)
]

krow_invites_gb = [
    bit0(0xc208), bit1(0xc208), bit2(0xc208), bit3(0xc208)
]

mako_invites_gb = [
    bit4(0xc208), bit5(0xc208), bit6(0xc208), bit7(0xc208)
]

claw_invites_gb = [
    bit0(0xc209), bit1(0xc209), bit2(0xc209), bit3(0xc209)
]

aztec_invites_gb = [
    bit4(0xc209), bit5(0xc209), bit6(0xc209), bit7(0xc209)
]

willow_reds_gb = [
    bit5(0xc21b), bit6(0xc21b), bit7(0xc21b),
    bit0(0xc21c), bit1(0xc21c), bit2(0xc21c)
]

vulture_reds_gb = [
    bit3(0xc21c), bit4(0xc21c)
]

krow_reds_gb = [
    bit5(0xc21c), bit6(0xc21c)
]

mako_reds_gb = [
    bit7(0xc21c), bit0(0xc21d)
]

claw_reds_gb = [
    bit1(0xc21d), bit2(0xc21d)
]

aztec_reds_gb = [
    bit3(0xc21d), bit4(0xc21d)
]

willow_blues_gbc = [
    bit5(0xc301),
    bit0(0xc30c),
    bit6(0xc36c), // boss
    bit6(0xc36e),
    bit4(0xc36f),
    bit7(0xc371),
    bit7(0xc375),
    bit3(0xc37c)
]

vulture_blues_gbc = [
    bit0(0xc349), // boss
    bit6(0xc350),
    bit4(0xc380),
    bit5(0xc382),
    bit6(0xc385),
    bit5(0xc391),
    bit5(0xc394),
    bit6(0xc3e2)
]

krow_blues_gbc = [
    bit5(0xc3b1),
    bit6(0xc3b2),
    bit5(0xc3b3),
    bit0(0xc3e4), bit1(0xc3e4), bit2(0xc3e4), // boss 3, 2, 1
    bit7(0xc3e5), // boss 4
    bit6(0xc3e6)  // boss 5
]

mako_blues_gbc = [
    bit4(0xc333),
    bit6(0xc3b7),
    bit5(0xc3b8), bit6(0xc3b8),
    bit5(0xc3b9),
    bit6(0xc3ba),
    bit6(0xc3bb),
    bit6(0xc3bc)
]

claw_blues_gbc = [
    bit4(0xc3bd), bit6(0xc3bd),
    bit0(0xc3c2), bit2(0xc3c2),
    bit4(0xc3c9), bit6(0xc3c9),
    bit2(0xc3cf),
    bit1(0xc3f7) // boss
]

aztec_blues_gbc = [
    bit0(0xc31c), bit3(0xc31c), bit5(0xc31c),
    bit6(0xc323),
    bit4(0xc328),
    bit3(0xc331), bit4(0xc331),
    bit2(0xc3fd) // boss
]

willow_invites_gbc = [
    bit2(0xc30e),
    bit7(0xc311),
    bit7(0xc3d6),
    bit7(0xc3d9)
]

vulture_invites_gbc = [
    bit0(0xc34b), bit3(0xc34b),
    bit3(0xc388),
    bit7(0xc3e3)
]

krow_invites_gbc = [
    bit0(0xc397),
    bit5(0xc3a1),
    bit0(0xc3a6),
    bit6(0xc3fb)
]

mako_invites_gbc = [
    bit5(0xc338),
    bit2(0xc341),
    bit7(0xc405),
    bit7(0xc408)
]

claw_invites_gbc = [
    bit3(0xc3c0),
    bit5(0xc3c6),
    bit0(0xc3cc),
    bit4(0xc3d2)
]

aztec_invites_gbc = [
    bit0(0xc328),
    bit3(0xc32d),
    bit3(0xc32e),
    bit2(0xc400)
]

willow_reds_gbc = [
    bit2(0xc302),
    bit3(0xc308),
    bit2(0xc314),
    bit7(0xc3d3),
    bit7(0xc40b),
    bit7(0xc40f)
]

vulture_reds_gbc = [
    bit7(0xc347),
    bit7(0xc353)
]

krow_reds_gbc = [
    bit0(0xc39d),
    bit4(0xc3f9)
]

mako_reds_gbc = [
    bit6(0xc33a),
    bit7(0xc406)
]

claw_reds_gbc = [
    bit4(0xc3c6),
    bit7(0xc3cd)
]

aztec_reds_gbc = [
    bit4(0xc329),
    bit3(0xc323)
]

gb_maps = {
        0x00: "Willow Woods",
        0x01: "Willow Woods",
        0x02: "Willow Woods",
        0x03: "Willow Woods",
        0x04: "Willow Woods",
        0x05: "Willow Woods",
        0x06: "Willow Woods",
        0x07: "Willow Woods",
        0x08: "Willow Woods",
        0x09: "Willow Woods",
        0x0a: "Willow Woods",
        0x0b: "Willow Woods",
        0x0c: "Willow Woods",
        0x0e: "Willow Woods",
        0x0f: "Vultureville",
        0x10: "Vultureville",
        0x11: "Vultureville",
        0x12: "Vultureville",
        0x13: "Vultureville",
        0x14: "Vultureville",
        0x16: "Vultureville",
        0x17: "Vultureville",
        0x18: "Vultureville",
        0x19: "Vultureville",
        0x1c: "Vultureville",
        0x1d: "Willow Woods",
        0x1e: "Willow Woods",
        0x20: "Willow Woods",
        0x21: "Mako Islands",
        0x22: "Mako Islands",
        0x23: "Mako Islands",
        0x24: "Claw Swamp",
        0x25: "Krow Keep",
        0x26: "Willow Woods",
        0x27: "Willow Woods",
        0x28: "Willow Woods",
        0x29: "Willow Woods",
        0x2b: "Mako Islands",
        0x2d: "Mako Islands",
        0x2f: "Mako Islands",
        0x30: "Vultureville",
        0x31: "Vultureville",
        0x32: "Vultureville",
        0x34: "Vultureville",
        0x35: "Vultureville",
        0x36: "Vultureville",
        0x37: "Vultureville",
        0x39: "Vultureville",
        0x3a: "Vultureville",
        0x3d: "Krow Keep",
        0x3e: "Aztec Temple",
        0x3f: "Claw Swamp",
        0x40: "Claw Swamp",
        0x41: "Claw Swamp",
        0x42: "Claw Swamp",
        0x43: "Claw Swamp",
        0x44: "Claw Swamp",
        0x45: "Claw Swamp",
        0x46: "Claw Swamp",
        0x47: "Vultureville",
        0x48: "Vultureville",
        0x49: "Krow Keep",
        0x4a: "Krow Keep",
        0x4b: "Krow Keep",
        0x4c: "Krow Keep",
        0x4d: "Krow Keep",
        0x4e: "Krow Keep",
        0x4f: "Krow Keep",
        0x50: "Vultureville",
        0x51: "Krow Keep",
        0x52: "Mako Islands",
        0x53: "Mako Islands",
        0x54: "Mako Islands",
        0x55: "Mako Islands",
        0x56: "Mako Islands",
        0x57: "Mako Islands",
        0x59: "Willow Woods",
        0x5a: "Claw Swamp",
        0x5b: "Final Dungeon",
        0x5c: "Aztec Temple",
        0x5d: "Krow Keep",
        0x5e: "Krow Keep",
        0x5f: "Krow Keep",
        0x60: "Krow Keep",
        0x69: "Final Dungeon",
        0x6a: "Mako Islands",
        0x6b: "Mako Islands"
}

gbc_maps = {
        0x00: "Willow Woods",
        0x01: "Aztec Temple",
        0x02: "Mako Islands",
        0x03: "Vultureville",
        0x05: "Final Dungeon",
        0x08: "Willow Woods",
        0x09: "Willow Woods",
        0x0a: "Willow Woods",
        0x0b: "Willow Woods",
        0x0f: "Willow Woods",
        0x10: "Willow Woods",
        0x11: "Willow Woods",
        0x12: "Willow Woods",
        0x13: "Willow Woods",
        0x14: "Willow Woods",
        0x26: "Vultureville",
        0x29: "Krow Keep",
        0x2a: "Krow Keep",
        0x2b: "Krow Keep",
        0x2d: "Krow Keep",
        0x39: "Mako Islands",
        0x3a: "Mako Islands",
        0x3b: "Mako Islands",
        0x3c: "Mako Islands",
        0x3d: "Mako Islands",
        0x3e: "Mako Islands",
        0x3f: "Claw Swamp",
        0x4a: "Mako Islands",
        0x4b: "Mako Islands",
        0x4d: "Mako Islands",
        0x4e: "Mako Islands",
        0x4f: "Claw Swamp",
        0x53: "Krow Keep",
        0x58: "Krow Keep",
        0x59: "Claw Swamp",
        0x61: "Krow Keep",
        0x62: "Aztec Temple",
        0x66: "Aztec Temple",
        0x68: "Mako Islands",
        0x69: "Mako Islands",
        0x6a: "Mako Islands",
        0x6b: "Mako Islands",
        0x6c: "Willow Woods"
}

function gb_end() => bit6(0xc21f) == 1
function gbc_end() => byte(0xc5cb) == 1

function world_blues_gb(map_id) {
    if gb_maps[map_id] == "Willow Woods" {
        return sum_of(willow_blues_gb, _ => _)
    } else if gb_maps[map_id] == "Vultureville" {
        return sum_of(vulture_blues_gb, _ => _)
    } else if gb_maps[map_id] == "Krow Keep" {
        return sum_of(krow_blues_gb, _ => _)
    } else if gb_maps[map_id] == "Claw Swamp" {
        return sum_of(claw_blues_gb, _ => _)
    } else if gb_maps[map_id] == "Mako Islands" {
        return sum_of(mako_blues_gb, _ => _)
    } else if gb_maps[map_id] == "Aztec Temple" {
        return sum_of(aztec_blues_gb, _ => _)
    } else {
        return 0
    }
}

function world_blues_gbc(map_id) {
    if gbc_maps[map_id] == "Willow Woods" {
        return sum_of(willow_blues_gbc, _ => _)
    } else if gbc_maps[map_id] == "Vultureville" {
        return sum_of(vulture_blues_gbc, _ => _)
    } else if gbc_maps[map_id] == "Krow Keep" {
        return sum_of(krow_blues_gbc, _ => _)
    } else if gbc_maps[map_id] == "Claw Swamp" {
        return sum_of(claw_blues_gbc, _ => _)
    } else if gbc_maps[map_id] == "Mako Islands" {
        return sum_of(mako_blues_gbc, _ => _)
    } else if gbc_maps[map_id] == "Aztec Temple" {
        return sum_of(aztec_blues_gbc, _ => _)
    } else {
        return 0
    }
}

function world_invites_gb(map_id) {
    if gb_maps[map_id] == "Willow Woods" {
        return sum_of(willow_invites_gb, _ => _)
    } else if gb_maps[map_id] == "Vultureville" {
        return sum_of(vulture_invites_gb, _ => _)
    } else if gb_maps[map_id] == "Krow Keep" {
        return sum_of(krow_invites_gb, _ => _)
    } else if gb_maps[map_id] == "Claw Swamp" {
        return sum_of(claw_invites_gb, _ => _)
    } else if gb_maps[map_id] == "Mako Islands" {
        return sum_of(mako_invites_gb, _ => _)
    } else if gb_maps[map_id] == "Aztec Temple" {
        return sum_of(aztec_invites_gb, _ => _)
    } else {
        return 0
    }
}

function world_invites_gbc(map_id) {
    if gbc_maps[map_id] == "Willow Woods" {
        return sum_of(willow_invites_gbc, _ => _)
    } else if gbc_maps[map_id] == "Vultureville" {
        return sum_of(vulture_invites_gbc, _ => _)
    } else if gbc_maps[map_id] == "Krow Keep" {
        return sum_of(krow_invites_gbc, _ => _)
    } else if gbc_maps[map_id] == "Claw Swamp" {
        return sum_of(claw_invites_gbc, _ => _)
    } else if gbc_maps[map_id] == "Mako Islands" {
        return sum_of(mako_invites_gbc, _ => _)
    } else if gbc_maps[map_id] == "Aztec Temple" {
        return sum_of(aztec_invites_gbc, _ => _)
    } else {
        return 0
    }
}

function world_reds_gb(map_id) {
    if gb_maps[map_id] == "Willow Woods" {
        return sum_of(willow_reds_gb, _ => _)
    } else if gb_maps[map_id] == "Vultureville" {
        return sum_of(vulture_reds_gb, _ => _)
    } else if gb_maps[map_id] == "Krow Keep" {
        return sum_of(krow_reds_gb, _ => _)
    } else if gb_maps[map_id] == "Claw Swamp" {
        return sum_of(claw_reds_gb, _ => _)
    } else if gb_maps[map_id] == "Mako Islands" {
        return sum_of(mako_reds_gb, _ => _)
    } else if gb_maps[map_id] == "Aztec Temple" {
        return sum_of(aztec_reds_gb, _ => _)
    } else {
        return 0
    }
}

function world_reds_gbc(map_id) {
    if gbc_maps[map_id] == "Willow Woods" {
        return sum_of(willow_reds_gbc, _ => _)
    } else if gbc_maps[map_id] == "Vultureville" {
        return sum_of(vulture_reds_gbc, _ => _)
    } else if gbc_maps[map_id] == "Krow Keep" {
        return sum_of(krow_reds_gbc, _ => _)
    } else if gbc_maps[map_id] == "Claw Swamp" {
        return sum_of(claw_reds_gbc, _ => _)
    } else if gbc_maps[map_id] == "Mako Islands" {
        return sum_of(mako_reds_gbc, _ => _)
    } else if gbc_maps[map_id] == "Aztec Temple" {
        return sum_of(aztec_reds_gbc, _ => _)
    } else {
        return 0
    }
}

function gbc() => byte(0xff4d) != 0xff
function gb() => !gbc()

function gb_map_screen() => byte(0xffa6)
function gbc_map_screen() => byte(0xce40)

function in_game_flag() => byte(0x00C55B)
function gbc_in_game() => in_game_flag() == 0x01
function gb_in_game_flag() => byte(0x00C5B2)
function gb_in_game() => gb_in_game_flag() != 0x00

function gb_reds() {
    return sum_of(willow_reds_gb, _ => _) + sum_of(vulture_reds_gb, _ => _) + sum_of(krow_reds_gb, _ => _) + sum_of(mako_reds_gb, _ => _) + sum_of(claw_reds_gb, _ => _) + sum_of(aztec_reds_gb, _ => _)
}

function gb_rank_score() {
    return gb_blues() + gb_invites() / 2 + gb_reds() * 2 + gb_berri_and_acorns()
}

function gbc_rank_score() {
    return gbc_blues() + gbc_invites() / 2 + gbc_reds() * 2 + gbc_acorns_saved() + gbc_berri()
}

function gb_shebang() {
    return gb_rank_score() >= 100
}

function gbc_shebang() {
    return gbc_rank_score() >= 100
}

function collected_frame_gb() {
    return __ornext(
        gb_blues() > prev(gb_blues()) ||
        gb_invites() > prev(gb_invites()) ||
        gb_reds() > prev(gb_reds()) ||
        gb_berri_and_acorns() > prev(gb_berri_and_acorns())
    )
}

function collected_frame_gbc() {
    return __ornext(
        gbc_blues() > prev(gbc_blues()) ||
        gbc_invites() > prev(gbc_invites()) ||
        gbc_reds() > prev(gbc_reds()) ||
        gbc_acorns_saved() > prev(gbc_acorns_saved()) ||
        gbc_berri() > prev(gbc_berri())
    )
}

// Rich Presence
//

rich_presence_conditional_display(gb() && !gb_in_game(), "[GB] Conker is in the main menu")
rich_presence_conditional_display(gbc() && !gbc_in_game(), "[GBC] Conker is in the main menu")
for map_id in gb_maps {
    if (gb_maps[map_id] != "Final Dungeon") {
    num_reds = 2
    if (gb_maps[map_id] == "Willow Woods") {
        num_reds = 6
    }
    rich_presence_conditional_display(gb() && gb_map_screen() == map_id, "[GB] Conker is exploring " + gb_maps[map_id] + " [🟦{0}/8] [✉️{1}/4] [🟥{2}/"+num_reds+"]",
    rich_presence_value("Blues", world_blues_gb(map_id)),
    rich_presence_value("Invites", world_invites_gb(map_id)),
    rich_presence_value("Reds", world_reds_gb(map_id)))
    }
    else {
        rich_presence_conditional_display(gb() && gb_map_screen() == map_id, "[GB] Conker is saving Berri and friends [🌰{0}/7]",
        rich_presence_value("Acorns", gb_acorns_saved()))
    }
}
for map_id in gbc_maps {
if (gbc_maps[map_id] != "Final Dungeon") {
    num_reds = 2
    if (gbc_maps[map_id] == "Willow Woods") {
        num_reds = 6
    }
    rich_presence_conditional_display(gbc() && gbc_map_screen() == map_id, "[GBC] Conker is exploring " + gbc_maps[map_id] + " [🟦{0}/8] [✉️{1}/4] [🟥{2}/"+num_reds+"]",
    rich_presence_value("Blues", world_blues_gbc(map_id)),
    rich_presence_value("Invites", world_invites_gbc(map_id)),
    rich_presence_value("Reds", world_reds_gbc(map_id)))
    }
    else {
        rich_presence_conditional_display(gbc() && gbc_map_screen() == map_id, "[GBC] Conker is saving Berri and friends [🌰{0}/7]",
        rich_presence_value("Acorns", gbc_acorns_saved()))
    }
}
rich_presence_conditional_display(gb(), "[GB] Conker is out looking for Berri [🟦{0}/48] [✉️{1}/24] [🟥{2}/16] [{3}]", rich_presence_value("Blues", gb_blues()),
rich_presence_value("Invites", gb_invites()),
rich_presence_value("Map", gb_map_screen()),
rich_presence_value("Reds", gb_reds()))
rich_presence_conditional_display(gbc(), "[GBC] Conker is out looking for Berri [🟦{0}/48] [✉️{1}/24] [🟥{2}/16] [{3}]", rich_presence_value("Blues", gbc_blues()),
rich_presence_value("Invites", gbc_invites()),
rich_presence_value("Map", gbc_map_screen()),
rich_presence_value("Reds", gbc_reds()))
rich_presence_display("Conker is out looking for Berri [{0}]", rich_presence_value("GBCIndicator", byte(0xff4d)))

// Leaderboards

leaderboard("[GB] Willow Woods Target Practice", description = "Get the best time in the Willow Woods target practice minigame.", 
    start = gb() && gb_in_game() && gb_map_screen() == 0x03 && gb_targets_left() == 0 && prev(gb_targets_left()) == 0x80,
    cancel = always_false(),
    submit = always_true(),
    value = gb_target_time_remaining_100(),
    format = "FIXED2")

leaderboard ("[GB] Mako Islands Long Jump", description = "Get the best distance in the Mako Islands long jump minigame.",
    start = gb() && gb_in_game() && gb_map_screen() == 0x56 && gb_lj_landed(),
    cancel = always_false(),
    submit = always_true(),
    value = gb_lj_distance_100(),
    format = "FIXED2")

leaderboard("[GB] Mako Islands Hurdle Race", description = "Get the best time in the Mako Islands hurdle race minigame.",
    start = gb() && gb_in_game() && gb_map_screen() == 0x55 && gb_hurdle_distance() >= 0x918 && prev(gb_hurdle_conker_time_raw()) == 0 && gb_hurdle_conker_time_raw() != 0,
    cancel = always_false(),
    submit = always_true(),
    value = gb_hurdle_time_100(),
    format = "FIXED2")

leaderboard("[GB] Mako Islands Swim Race", description = "Get the best time in the Mako Islands swim race minigame.",
    start = gb() && gb_in_game() && gb_map_screen() == 0x54 && gb_swim_distance() >= 0x9db && prev(gb_swim_conker_time_raw()) == 0 && gb_swim_conker_time_raw() != 0,
    cancel = always_false(),
    submit = always_true(),
    value = gb_swim_time_100(),
    format = "FIXED2")

leaderboard("[GB] Mako Islands Boat Race", description = "Get the best time in the Mako Islands boat race.",
    start = gb() && gb_in_game() && gb_map_screen() == 0x6a && gb_boat_lap() == 0x02 && prev(gb_boat_lap()) == 0x01,
    cancel = always_false(),
    submit = always_true(),
    value = gb_boat_total_time_100(),
    format = "MILLISECS")

// Achievements
//
function rank_achievement(threshold, title, rank_name) {
    achievement(
        title = title,
        points = 5,
        description = "Achieve the " + rank_name + " rank.",
        trigger = (gb() && prev(gb_in_game()) && gb_rank_score() >= threshold && collected_frame_gb()) ||
            (gbc() && prev(gbc_in_game()) && gbc_rank_score() >= threshold && collected_frame_gbc())
    )
}

function all_blues_achievement(gb_bit_array, gbc_bit_array, map_screen, title, name) {
    achievement(
        title = title,
        points = 5,
        description = "Collect all of the Blue Presents in " + name + ".",
        trigger = ( measured(sum_of(gb_bit_array, _ => _) == 8, when = gb() && gb_in_game()) && sum_of(gb_bit_array, x => prev(x)) == 7) ||
            ( gbc() && gbc_in_game() && all_of(gbc_bit_array, el => el == 1) && sum_of(gbc_bit_array, x => prev(x)) == 7 && gbc_blues() % 8 == 0) || 
            ( gbc() && gbc_in_game() && all_of(gbc_bit_array, el => el == 1) && gbc_blues() % 8 == 0 && prev(gbc_blues()) % 8 == 7 && gbc_map_screen() == map_screen),
        type = "progression"
    )
}

function all_optional_achievement(gb_bit_array, gbc_bit_array, title, name) {
    achievement(
        title = title,
        points = 5,
        description = "Collect all of the Party Invites and Special Presents in " + name + ".",
        trigger = ( measured(sum_of(gb_bit_array, _ => _) == length(gb_bit_array), when = gb() && gb_in_game()) && sum_of(gb_bit_array, x => prev(x)) == length(gb_bit_array) - 1) ||
                  ( measured(sum_of(gbc_bit_array, _ => _) == length(gbc_bit_array), when = gbc() && gbc_in_game()) && sum_of(gbc_bit_array, x => prev(x)) == length(gbc_bit_array) - 1)
    )
}

rank_achievement(32, "But I'm Saving Them", "Acorn Aggravator")
rank_achievement(40, "I Am the One Who Stomps", "Conker Stomper")
rank_achievement(56, "I Might Just Wild Out", "Crazy Squirrel")
rank_achievement(64, "Death From Above", "Treetop Terror")
rank_achievement(80, "Birthday Boy", "Birthday Bonanza")


all_blues_achievement(willow_blues_gb, willow_blues_gbc, 0x08, "Anti-Hsstamean", "Willow Woods")
all_blues_achievement(vulture_blues_gb, vulture_blues_gbc, 0x51, "For the Birds", "Vultureville")
all_blues_achievement(krow_blues_gb, krow_blues_gbc, 0x61, "Keep Waldorf Down", "Krow Keep")
all_blues_achievement(mako_blues_gb, mako_blues_gbc, 0x02, "Wave Race: Squirrel Storm", "Mako Islands")
all_blues_achievement(claw_blues_gb, claw_blues_gbc, 0x60, "Fiending for More Box Puzzles", "Claw Swamp")
all_blues_achievement(aztec_blues_gb, aztec_blues_gbc, 0x62, "Stronger than a Graveler", "Aztec Temple")

willow_optional_flags_gb = willow_invites_gb
for flag in willow_reds_gb {
    array_push(willow_optional_flags_gb, flag)
}
willow_optional_flags_gbc = willow_invites_gbc
for flag in willow_reds_gbc {
    array_push(willow_optional_flags_gbc, flag)
}
all_optional_achievement(willow_optional_flags_gb, willow_optional_flags_gbc, "Woods Wizard", "Willow Woods")

vulture_optional_flags_gb = vulture_invites_gb
for flag in vulture_reds_gb {
    array_push(vulture_optional_flags_gb, flag)
}
vulture_optional_flags_gbc = vulture_invites_gbc
for flag in vulture_reds_gbc {
    array_push(vulture_optional_flags_gbc, flag)
}
all_optional_achievement(vulture_optional_flags_gb, vulture_optional_flags_gbc, "Vulture Victor", "Vultureville")

krow_optional_flags_gb = krow_invites_gb
for flag in krow_reds_gb {
    array_push(krow_optional_flags_gb, flag)
}
krow_optional_flags_gbc = krow_invites_gbc
for flag in krow_reds_gbc {
    array_push(krow_optional_flags_gbc, flag)
}
all_optional_achievement(krow_optional_flags_gb, krow_optional_flags_gbc, "Keep King", "Krow Keep")

mako_optional_flags_gb = mako_invites_gb
for flag in mako_reds_gb {
    array_push(mako_optional_flags_gb, flag)
}
mako_optional_flags_gbc = mako_invites_gbc
for flag in mako_reds_gbc {
    array_push(mako_optional_flags_gbc, flag)
}
all_optional_achievement(mako_optional_flags_gb, mako_optional_flags_gbc, "Mako Medalist", "Mako Islands")

claw_optional_flags_gb = claw_invites_gb
for flag in claw_reds_gb {
    array_push(claw_optional_flags_gb, flag)
}
claw_optional_flags_gbc = claw_invites_gbc
for flag in claw_reds_gbc {
    array_push(claw_optional_flags_gbc, flag)
}
all_optional_achievement(claw_optional_flags_gb, claw_optional_flags_gbc, "Swamp Swindler", "Claw Swamp")

aztec_optional_flags_gb = aztec_invites_gb
for flag in aztec_reds_gb {
    array_push(aztec_optional_flags_gb, flag)
}
aztec_optional_flags_gbc = aztec_invites_gbc
for flag in aztec_reds_gbc {
    array_push(aztec_optional_flags_gbc, flag)
}
all_optional_achievement(aztec_optional_flags_gb, aztec_optional_flags_gbc, "Temple Topper", "Aztec Temple")

achievement(title = "Berri Alive", points = 10,
    description = "Enter the end portal in the final dungeon and save Berri!",
    trigger = (gb() && gb_in_game() && gb_map_screen() == 0x5b && prev(!gb_end()) && gb_end()) ||
        (gbc() && gbc_in_game() && gbc_map_screen() == 0x05 && prev(!gbc_end()) && gbc_end()),
    type = "win_condition"
)

achievement(title = "Conkered!", points = 25,
    description = "Save all the acorns and Berri with all the collectibles to earn the Whole Shebang rating.",
    trigger = (gb() && gb_in_game() && gb_map_screen() == 0x5b && prev(!gb_end()) && gb_end() && gb_shebang()) ||
        (gbc() && gbc_in_game() && gbc_map_screen() == 0x05 && prev(!gbc_end()) && gbc_end() && gbc_shebang()),
    type = "win_condition"
)

// PREVIOUS ACHIEVEMENTS

achievement(
    title = "Present Collect!", points = 5,
    description = "Retrieve your first [Stolen Present].",
    id = 12693, badge = "12588", published = "2014-09-10 4:42:33 AM", modified = "2014-11-05 7:21:29 PM",
    trigger = gbc_blues() == 1
)

achievement(
    title = "A Familiar Tune", points = 5,
    description = "Sit down and play Donkey Kong.",
    id = 12691, badge = "12611", published = "2014-09-10 4:42:15 AM", modified = "2014-11-05 7:21:18 PM",
    trigger = dkc_theme() == 1 && countdown_to_theme() == 0
)

achievement(
    title = "Ammo Hoarder", points = 10,
    description = "Collect 20 pieces of ammunition.",
    id = 12692, badge = "12589", published = "2014-09-10 4:42:19 AM", modified = "2014-11-05 7:22:13 PM",
    trigger = ammo() == 20
)

achievement(
    title = "Key to The Forest.", points = 10,
    description = "Obtain the Forest Guardian's Key.",
    id = 12695, badge = "12591", published = "2014-09-10 4:42:38 AM", modified = "2023-06-16 8:53:19 AM",
    trigger = key() == 1 && first_key() > prev(first_key())
)

achievement(
    title = "Side-Arm", points = 10,
    description = "Obtain the Slingshot in the Windmill.",
    id = 12697, badge = "12592", published = "2014-09-10 4:43:02 AM", modified = "2014-11-05 7:23:11 PM",
    trigger = has_slingshot() == 1
)

achievement(
    title = "Key to The Mushroom.", points = 10,
    description = "Obtain the Mushroom Key In the Spooky Forest.",
    id = 12699, badge = "12594", published = "2014-09-10 4:43:08 AM", modified = "2023-06-16 8:53:17 AM",
    trigger = key() == 1 && mushroom_town_key() > prev(mushroom_town_key())
)

achievement(
    title = "East-Side Farm-Yard", points = 10, type="progression",
    description = "Collect enough Presents to enter the Old Barn.",
    id = 12694, badge = "12590", published = "2014-09-10 4:42:36 AM", modified = "2020-07-05 7:03:30 AM",
    trigger = gbc_blues() == 8
)

achievement(
    title = "Lost in the Mail", points = 10,
    description = "Collect 1 Party Invitation.",
    id = 12696, badge = "12596", published = "2014-09-10 4:42:41 AM", modified = "2014-11-05 7:22:02 PM",
    trigger = gbc_invites() == 1
)

achievement(
    title = "Key to Vulture-Ville", points = 10,
    description = "Obtain the Forest Guardian's Key.",
    id = 12701, badge = "12597", published = "2014-09-10 4:43:13 AM", modified = "2019-10-12 1:05:01 PM",
    trigger = barn_key() == 1
)

achievement(
    title = "Pan-Fodder", points = 10,
    description = "Eradicate Dusty's bats, obtain the Tankard.",
    id = 12703, badge = "12603", published = "2014-09-10 4:43:19 AM", modified = "2019-10-12 1:05:01 PM",
    trigger = spatoon() == 1
)

achievement(
    title = "Smithy's", points = 10,
    description = "Trade the Tankard for a Gold-Pan.",
    id = 12704, badge = "12604", published = "2014-09-10 4:43:21 AM", modified = "2019-10-12 1:05:01 PM",
    trigger = pan() == 1
)

achievement(
    title = "Pan For Gold", points = 10,
    description = "....Pan for gold.",
    id = 12705, badge = "12605", published = "2014-09-10 4:43:23 AM", modified = "2019-10-12 1:05:01 PM",
    trigger = coin_ingot() == 1 && spatoon() == 0
)

achievement(
    title = "Scuuuuuuuba", points = 10, type="progression",
    description = "Defeat the Lords of Vulture-Ville.",
    id = 12706, badge = "12954", published = "2014-09-10 4:43:33 AM", modified = "2020-07-05 7:03:02 AM",
    trigger = scuba_mask() == 1
)

achievement(
    title = "No Wonder They Didn't Show", points = 10,
    description = "Collect 3 Party Invitation.",
    id = 12700, badge = "12596", published = "2014-09-10 4:43:11 AM", modified = "2019-10-12 1:05:01 PM",
    trigger = gbc_invites() == 3
)

achievement(
    title = "Jaunter back to Cools-Ville.", points = 10, type="progression",
    description = "Collect enough Presents to leave Vulture-Ville and Enter Krow Keep.",
    id = 12702, badge = "12617", published = "2014-09-10 4:43:16 AM", modified = "2020-07-05 7:03:11 AM",
    trigger = gbc_blues() == 16
)

achievement(
    title = "A \"Special\" Gift", points = 10,
    description = "Find one Red Present.",
    id = 12707, badge = "12609", published = "2014-09-10 4:43:37 AM", modified = "2019-10-12 1:05:01 PM",
    trigger = gbc_reds() == 1
)

achievement(
    title = "More Targets", points = 10,
    description = "Obtain the Coin.",
    id = 12709, badge = "12615", published = "2014-09-10 4:55:13 AM", modified = "2019-10-06 11:40:01 AM",
    trigger = coin() == 1
)

achievement(
    title = "Next Venue", points = 10,
    description = "Collect enough Presents to leave Krow Keep.",
    id = 15669, badge = "15233", published = "2014-10-16 6:52:43 AM", modified = "2020-07-05 7:02:40 AM",
    trigger = gbc_blues() == 24
)

achievement(
    title = "Toll of the Bog", points = 10,
    description = "Collect enough Presents to enter the Claw Swamp.",
    id = 12698, badge = "12593", published = "2014-09-10 4:43:05 AM", modified = "2020-07-05 7:03:21 AM",
    trigger = gbc_blues() == 24
)

achievement(
    title = "Red Birthday", points = 25,
    description = "Find all Red Presents.",
    id = 12708, badge = "12613", published = "2014-09-10 4:43:42 AM", modified = "2020-07-05 7:02:56 AM",
    trigger = gbc_reds() == 16
)

achievement(
    title = "Trashed My Own House Party 'Cuz Nobody Came", points = 25, type="win_condition",
    description = "Collect all 24 Party Invitations.",
    id = 15668, badge = "15235", published = "2014-10-16 6:46:56 AM", modified = "2020-07-05 7:02:46 AM",
    trigger = gbc_invites() == 24
)
