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
function invitation_count() => byte(0x00CEE0)
function blue_present_count() => byte(0x00CEE1)
function red_present_count() => byte(0x00CEE2)

// Permanent Flags

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
    bit6(0xc3eb)  // boss 5
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
    bit0(0xc31c), bit3(0xc31c), bit4(0xc31c),
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

// Achievements

achievement(
    title = "Present Collect!", points = 5,
    description = "Retrieve your first [Stolen Present].",
    id = 12693, badge = "12588", published = "2014-09-10 4:42:33 AM", modified = "2014-11-05 7:21:29 PM",
    trigger = blue_present_count() == 1
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
    trigger = blue_present_count() == 8
)

achievement(
    title = "Lost in the Mail", points = 10,
    description = "Collect 1 Party Invitation.",
    id = 12696, badge = "12596", published = "2014-09-10 4:42:41 AM", modified = "2014-11-05 7:22:02 PM",
    trigger = invitation_count() == 1
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
    trigger = invitation_count() == 3
)

achievement(
    title = "Jaunter back to Cools-Ville.", points = 10, type="progression",
    description = "Collect enough Presents to leave Vulture-Ville and Enter Krow Keep.",
    id = 12702, badge = "12617", published = "2014-09-10 4:43:16 AM", modified = "2020-07-05 7:03:11 AM",
    trigger = blue_present_count() == 16
)

achievement(
    title = "A \"Special\" Gift", points = 10,
    description = "Find one Red Present.",
    id = 12707, badge = "12609", published = "2014-09-10 4:43:37 AM", modified = "2019-10-12 1:05:01 PM",
    trigger = red_present_count() == 1
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
    trigger = blue_present_count() == 24
)

achievement(
    title = "Toll of the Bog", points = 10,
    description = "Collect enough Presents to enter the Claw Swamp.",
    id = 12698, badge = "12593", published = "2014-09-10 4:43:05 AM", modified = "2020-07-05 7:03:21 AM",
    trigger = blue_present_count() == 24
)

achievement(
    title = "Red Birthday", points = 25,
    description = "Find all Red Presents.",
    id = 12708, badge = "12613", published = "2014-09-10 4:43:42 AM", modified = "2020-07-05 7:02:56 AM",
    trigger = red_present_count() == 16
)

achievement(
    title = "Trashed My Own House Party 'Cuz Nobody Came", points = 25, type="win_condition",
    description = "Collect all 24 Party Invitations.",
    id = 15668, badge = "15235", published = "2014-10-16 6:46:56 AM", modified = "2020-07-05 7:02:46 AM",
    trigger = invitation_count() == 24
)
