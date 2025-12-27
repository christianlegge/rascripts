// HeXen
// #ID = 8288

// $0C7E78: Difficulty - old note from Toteman, UNSTABLE, avoid at all costs!
function difficulty_old_note_from_toteman_unstable_avoid_at_all_costs() => byte(0x0C7E78)

// $0C7EA0: Character Class
//          (UNSTABLE ADDRESS DO NOT USE!)
function character_class() => byte(0x0C7EA0)

// $0C7F90: Player life
function player_life() => byte(0x0C7F90)

// $0C812C: In game
function in_game() => byte(0x0C812C)

// $0C824C: (8 bit) - class ID right address (by xnaivx)
//          00 - fighter
//          01 - cleric
//          02 - mage
function class_id_right_address_by_xnaivx() => byte(0x0C824C)

// $0C8444: Level id
//          0 = Menu
function level_id() => byte(0x0C8444)

// $0C8964: (8 bit) - Difficulty ID (by xnaivx)
//          00 - easiest
//          04 - hardest difficulty
function difficulty_id_by_xnaivx() => byte(0x0C8964)

// $0CF834: Level switch
function level_switch() => byte(0x0CF834)

// $0DB0DB: Level ends
function level_ends() => byte(0x0DB0DB)

// $0E7C76: Shield
function shield() => byte(0x0E7C76)

// $0E7C7A: Helmet
function helmet() => byte(0x0E7C7A)

// $0E7C7E: High armor
function high_armor() => byte(0x0E7C7E)

// $0E7C84: Mana potions
function mana_potions() => byte(0x0E7C84)

// $0E7C8C: Vial potion
function vial_potion() => byte(0x0E7C8C)

// $0E7DA0: Keys
//          bit4 = Emerald
//          bit6 = White
function keys() => byte(0x0E7DA0)

// $0E7DC0: Mana
function mana() => byte(0x0E7DC0)

// $0E7DD0: Cheats
//          God mode
function no_cheats() => byte(0x0E7DD0) == 0 && byte(0xe7dd1) == 0

// $0E7DD1: Cheats
//          Artifacts
function cheats() => byte(0x0E7DD1)

// $15D7AC: Infinite life
function infinite_life() => byte(0x15D7AC)

// $17CE74: Level cheat
function level_cheat() => byte(0x17CE74)

function no_demo() => dword(0xc702c) == 0

achievement(
    title = "Winnowing Hall", points = 5,
    description = "Complete prologue level Winnowing Hall.",
    id = 105268, badge = "114183", published = "2020-03-29 6:24:03 PM", modified = "2020-11-23 6:16:06 AM",
    trigger = once(level_id() == 1) && once(level_id() == 2) && level_switch() == 1 && in_game() == 1 &&
              no_cheats() && no_demo()
)

achievement(
    title = "Seven Portals", points = 5,
    description = "Enter in any portal in Seven Portals level.",
    id = 105269, badge = "114195", published = "2020-03-29 6:24:05 PM", modified = "2020-03-30 5:09:54 PM",
    trigger = level_id() == 2 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Guardian of Ice", points = 5,
    description = "Enter level Guardian of Ice.",
    id = 105270, badge = "114203", published = "2020-03-29 6:24:08 PM", modified = "2020-03-29 6:24:08 PM",
    trigger = level_id() == 3 && level_ends() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Guardian of Fire", points = 5,
    description = "Enter level Guardian of Fire.",
    id = 105271, badge = "114205", published = "2020-03-29 6:24:11 PM", modified = "2020-03-30 10:27:25 PM",
    trigger = level_id() == 4 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Guardian of Steel", points = 5,
    description = "Enter level Guardian of Steel.",
    id = 105272, badge = "114877", published = "2020-03-29 6:24:13 PM", modified = "2020-03-30 10:27:45 PM",
    trigger = level_id() == 5 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Bright Crucible", points = 5,
    description = "Enter level Bright Crucible",
    id = 105273, badge = "114878", published = "2020-03-29 6:24:16 PM", modified = "2020-03-30 10:28:05 PM",
    trigger = level_id() == 6 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Darkmere", points = 5,
    description = "Enter level Darkmere.",
    id = 105274, badge = "114880", published = "2020-03-29 6:24:19 PM", modified = "2020-03-30 10:28:13 PM",
    trigger = level_id() == 8 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Shadow Wood", points = 5,
    description = "Enter in any portal in Shadow Wood level.",
    id = 105275, badge = "114879", published = "2020-03-29 6:24:21 PM", modified = "2020-03-30 10:28:18 PM",
    trigger = level_id() == 13 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Caves of Circe", points = 5,
    description = "Enter level Caves of Circe.",
    id = 105276, badge = "114881", published = "2020-03-29 6:24:24 PM", modified = "2020-03-30 10:28:28 PM",
    trigger = level_id() == 9 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Wastelands", points = 5,
    description = "Enter level Wastelands.",
    id = 105277, badge = "114882", published = "2020-03-29 6:24:26 PM", modified = "2020-03-30 10:28:36 PM",
    trigger = level_id() == 10 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Sacred Grove", points = 5,
    description = "Enter level Sacred Grove.",
    id = 105278, badge = "114883", published = "2020-03-29 6:24:29 PM", modified = "2020-04-03 4:52:10 PM",
    trigger = level_id() == 11 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Hypostile", points = 5,
    description = "Enter level Hypostile.",
    id = 105279, badge = "114884", published = "2020-03-29 6:24:31 PM", modified = "2020-03-30 10:28:47 PM",
    trigger = level_id() == 12 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Heresiah Seminary", points = 5,
    description = "Reach the Heresiah Seminary level.",
    id = 105280, badge = "114885", published = "2020-03-29 6:24:34 PM", modified = "2020-03-30 10:28:55 PM",
    trigger = level_id() == 27 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Orchad of Lamentations", points = 5,
    description = "Enter level Orchad of Lamentations.",
    id = 105281, badge = "114886", published = "2020-03-29 6:24:37 PM", modified = "2020-03-30 10:29:02 PM",
    trigger = level_id() == 32 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Silent Refectory", points = 5,
    description = "Enter level Silent Refectory.",
    id = 105282, badge = "114887", published = "2020-03-29 6:24:39 PM", modified = "2020-03-30 10:29:10 PM",
    trigger = level_id() == 33 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Wolf Chapel", points = 5,
    description = "Enter level Wolf Chapel.",
    id = 105283, badge = "114888", published = "2020-03-29 6:24:42 PM", modified = "2020-03-30 10:29:17 PM",
    trigger = level_id() == 34 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Dragon Chapel", points = 5,
    description = "Enter level Dragon Chapel.",
    id = 105284, badge = "114889", published = "2020-03-29 6:24:44 PM", modified = "2020-03-30 10:29:24 PM",
    trigger = level_id() == 28 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Griffin Chapel", points = 5,
    description = "Enter level Griffin Chapel.",
    id = 105285, badge = "114891", published = "2020-03-29 6:24:47 PM", modified = "2020-03-30 10:29:31 PM",
    trigger = level_id() == 30 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Deathwing Chapel", points = 5,
    description = "Enter level Deathwing Chapel.",
    id = 105286, badge = "114890", published = "2020-03-29 6:24:50 PM", modified = "2020-03-30 10:29:43 PM",
    trigger = level_id() == 31 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Castle of Grief", points = 5,
    description = "Reach the Castle of Grief level.",
    id = 105287, badge = "114892", published = "2020-03-29 6:24:53 PM", modified = "2020-03-30 10:29:45 PM",
    trigger = level_id() == 22 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Forsaken Outpost", points = 5,
    description = "Enter level Forsaken Outpost",
    id = 105288, badge = "114893", published = "2020-03-29 6:24:57 PM", modified = "2020-04-03 4:53:32 PM",
    trigger = level_id() == 21 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "The Gibbet", points = 5,
    description = "Enter level The Gibbet.",
    id = 105289, badge = "114894", published = "2020-03-29 6:24:59 PM", modified = "2020-04-03 4:53:47 PM",
    trigger = level_id() == 23 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Effluvium", points = 5,
    description = "Enter level Effluvium.",
    id = 105290, badge = "114895", published = "2020-03-29 6:25:02 PM", modified = "2020-04-03 4:53:50 PM",
    trigger = level_id() == 24 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "The Dungeons", points = 5,
    description = "Enter level The Dungeons.",
    id = 105291, badge = "114896", published = "2020-03-29 6:25:04 PM", modified = "2020-04-03 4:53:57 PM",
    trigger = level_id() == 25 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Desolated Garden", points = 5,
    description = "Enter level Desolated Garden.",
    id = 105292, badge = "114897", published = "2020-03-29 6:25:07 PM", modified = "2020-04-03 4:54:00 PM",
    trigger = level_id() == 26 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Necropolis", points = 5,
    description = "Reach the Necropolis.",
    id = 105293, badge = "114898", published = "2020-03-29 6:25:10 PM", modified = "2020-04-03 4:52:46 PM",
    trigger = level_id() == 35 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Zadek Tomb", points = 5,
    description = "Enter level Zadek Tomb.",
    id = 105294, badge = "114899", published = "2020-03-29 6:25:13 PM", modified = "2020-04-03 4:52:49 PM",
    trigger = level_id() == 36 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Manelkir Tomb", points = 5,
    description = "Enter level Manelkir Tomb.",
    id = 105295, badge = "114900", published = "2020-03-29 6:25:16 PM", modified = "2020-04-03 4:52:52 PM",
    trigger = level_id() == 37 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Traductus Tomb", points = 5,
    description = "Enter level Traductus Tomb.",
    id = 105296, badge = "114901", published = "2020-03-29 6:25:19 PM", modified = "2020-04-03 4:52:55 PM",
    trigger = level_id() == 38 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "The Vivarium", points = 5,
    description = "Enter level The Vivarium.",
    id = 105297, badge = "114902", published = "2020-03-29 6:25:22 PM", modified = "2020-04-03 4:52:31 PM",
    trigger = level_id() == 39 && level_switch() == 1 && in_game() == 1 && no_cheats() && no_demo()
)

achievement(
    title = "Dark Crucible Fight", points = 10,
    description = "Enter the final level Dark Crucible as fighter.",
    id = 105298, badge = "114903", published = "2020-03-29 6:25:25 PM", modified = "2022-11-23 9:35:34 AM",
    trigger = level_id() == 40 && level_switch() == 1 && in_game() == 1 && class_id_right_address_by_xnaivx() == 0 &&
              no_cheats() && no_demo()
)

achievement(
    title = "Dark Crucible Crusade", points = 10,
    description = "Enter the final level Dark Crucible as cleric.",
    id = 105299, badge = "115121", published = "2020-03-29 6:25:28 PM", modified = "2022-11-23 10:09:10 AM",
    trigger = level_id() == 40 && level_switch() == 1 && in_game() == 1 && class_id_right_address_by_xnaivx() == 1 &&
              no_cheats() && no_demo()
)

achievement(
    title = "Dark Crucible Odyssey", points = 10,
    description = "Enter the final level Dark Crucible as mage.",
    id = 105300, badge = "114905", published = "2020-03-29 6:25:30 PM", modified = "2022-11-23 10:09:12 AM",
    trigger = level_id() == 40 && level_ends() == 1 && in_game() == 1 && class_id_right_address_by_xnaivx() == 2 &&
              no_cheats() && no_demo()
)

achievement(
    title = "Seven Portals Quest", points = 10,
    description = "Enter in any portal in Seven Portals level on archmage difficulty.",
    id = 105301, badge = "115118", published = "2020-03-29 6:25:33 PM", modified = "2022-11-23 10:09:14 AM",
    trigger = level_id() == 2 && level_switch() == 1 && in_game() == 1 && difficulty_id_by_xnaivx() == 4 &&
              no_cheats() && no_demo()
)

achievement(
    title = "Shadow Wood Quest", points = 10,
    description = "Enter in any portal in Shadow Wood level on archmage difficulty.",
    id = 105302, badge = "115123", published = "2020-03-29 6:25:36 PM", modified = "2022-11-23 10:09:14 AM",
    trigger = level_id() == 13 && level_switch() == 1 && in_game() == 1 && difficulty_id_by_xnaivx() == 4 &&
              no_cheats() && no_demo()
)

achievement(
    title = "Heresiah Seminary Quest", points = 10,
    description = "Reach the Heresiah Seminary level on archmage difficulty.",
    id = 105303, badge = "115124", published = "2020-03-29 6:25:39 PM", modified = "2022-11-23 10:09:13 AM",
    trigger = level_id() == 27 && level_switch() == 1 && in_game() == 1 && difficulty_id_by_xnaivx() == 4 &&
              no_cheats() && no_demo()
)

achievement(
    title = "Castle of Grief Quest", points = 10,
    description = "Reach the Castle of Grief level on sorcerer difficulty or higher.",
    id = 105304, badge = "115125", published = "2020-03-29 6:25:43 PM", modified = "2022-11-23 10:09:10 AM",
    trigger = level_id() == 22 && level_switch() == 1 && in_game() == 1 && difficulty_id_by_xnaivx() >= 2 &&
              no_cheats() && no_demo()
)

achievement(
    title = "Dark Crucible Quest", points = 10,
    description = "Enter the final level Dark Crucible on sorcerer difficulty or higher.",
    id = 105305, badge = "114903", published = "2020-03-29 6:25:45 PM", modified = "2022-11-23 10:09:12 AM",
    trigger = level_id() == 40 && level_ends() == 1 && in_game() == 1 && difficulty_id_by_xnaivx() >= 2 &&
              no_cheats() && no_demo()
)

achievement(
    title = "Castle of Grief Legend", points = 10,
    description = "Reach the Castle of Grief level on archmage difficulty.",
    id = 105306, badge = "115126", published = "2020-03-29 6:25:48 PM", modified = "2022-11-23 10:09:09 AM",
    trigger = level_id() == 22 && level_switch() == 1 && in_game() == 1 && difficulty_id_by_xnaivx() == 4 &&
              no_cheats() && no_demo()
)

achievement(
    title = "Dark Crucible Legend", points = 10,
    description = "Enter the final level Dark Crucible on arhcmage difficulty.",
    id = 105307, badge = "115127", published = "2020-03-29 6:25:51 PM", modified = "2022-11-23 10:09:11 AM",
    trigger = level_id() == 40 && level_switch() == 1 && in_game() == 1 && difficulty_id_by_xnaivx() == 4 &&
              no_cheats() && no_demo()
)
