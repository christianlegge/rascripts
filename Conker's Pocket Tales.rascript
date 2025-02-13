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
