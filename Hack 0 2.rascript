// ~Hack~ Hack 0 2
// #ID = 23703
// #MinimumVersion = 1.3

// $000100: [8-bit] Game state (same as SMW)
//          0x00 = Loading "Golden Yoshi Presents" (reset)
//          0x0E = In overworld
//          0x0F = Overworld/level fade out
//          0x13 = Level fade in
//          0x14 = In level
function game_state() => byte(0x000100)

// $00010B: [16-bit] Current level ID
//          0x0001 = Prologue
//          0x0002 = Ch 6 - Resolution? (Entrance)
//          0x0025 = Diary Entry #1
//          0x0026 = Diary Entry #2
//          0x0027 = Diary Entry #3
//          0x0028 = Ch 6 - Resolution? (First Section)
//          0x0029 = Ch 6 - Resolution? (Second Section)
//          0x002B = End 2 of 4
//          0x002c = Candy screen
//          0x002E = End 1 of 4
//          0x002F = Code entry room (from Prologue)
//          0x0031 = End 3 of 4
//          0x0032 = Death ball stage (secret code entry)
//          0x0033 = L/R platform stage
//          0x0034 = Final corridor (flickering room)
//          0x0036 = End 4 of 4
//          0x0038 = Hidden End 2 of 2
//          0x003A = Hidden End 1 of 2
//          0x0101 = Ch 5 - Takeover
//          0x0102 = Ch 4 - Manipulation
//          0x0103 = Ch 3 - Heat
//          0x0105 = Ch 1 - Rivalry
//          0x0106 = Ch 2 - Breakthrough
function current_level_id() => word(0x00010B)

// $000DD5: [8-bit] Goal flag
//          0x00 = Playing normally
//          0x01 = Touched goal
//          (Flickers to 0x80 before going back to 0)
function goal_flag() => byte(0x000DD5)

function goal_delta() => goal_flag() == 0x01 && prev(goal_flag() == 0x00)

// $001471: [8-bit] Standing on moving platform? (Includes enemies like Mega Moles)
//          0x00 = No
//          0x01 = Yes
function on_mole() => byte(0x001471) == 1

// $001EC7: [Bitfield] Ch 5 - Takeover state
//          Bit6 = Checkpoint active
//          Bit7 = Level cleared
function ch_5_takeover_state() => byte(0x001EC7)

// $001EC8: [Bitfield] Ch 4 - Manipulation state
//          Bit6 = Checkpoint active
//          Bit7 = Level cleared
function ch_4_manipulation_state() => byte(0x001EC8)

// $001EC9: [Bitfield] Ch 3 - Heat state
//          Bit6 = Checkpoint active
//          Bit7 = Level cleared
function ch_3_heat_state() => byte(0x001EC9)

// $001ECB: [Bitfield] Ch 1 - Rivalry state
//          Bit6 = Checkpoint active
//          Bit7 = Level cleared
function ch_1_rivalry_state() => byte(0x001ECB)

function ch_1_checkpoint() => bit6(0x001ECB)

// $001ECC: [Bitfield] Ch 2 - Breakthrough state
//          Bit6 = Checkpoint active
//          Bit7 = Level cleared
function ch_2_breakthrough_state() => byte(0x001ECC)

function levels_beaten() => byte(0x001F2E)

// $01B405: [8-bit] Death flag
//          0x00 = Playing normally
//          0x01 = Death transition is active
function death_flag() => byte(0x01B405)

function death_delta() => death_flag() > prev(death_flag())

// $02200E: [8-bit] Message box (boolean)
//          0x00 = Not viewing message box
//          0x01 = Viewing message box
function message_box_boolean() => byte(0x02200E)

function message_delta() => message_box_boolean() > prev(message_box_boolean())

function mario_powerup() => byte(0x000019)

function mario_x_screen() => byte(0x0000D2)

function mario_y_coord() => word(0x0000D3)

function pswitch_timer() => byte(0x0014AD)

function wallrunning() => byte(0x0013E3) != 0x00

function level_loaded() => prev(game_state()) == 0x13 && game_state() == 0x14

function in_level_loose() => game_state() >= 0x0F && game_state() <= 0x16

// Achievements

function level_clear_cheevo(title, desc, screen, points) {
    achievement(title = title, description = desc, points = points, type = "progression",
    trigger = goal_delta() && current_level_id() == screen)
}

level_clear_cheevo("The Nimble", "Clear Chapter 1 - Rivalry.", 0x0105, 3)
level_clear_cheevo("The Biologist", "Clear Chapter 2 - Breakthrough.", 0x0106, 3)
level_clear_cheevo("The Invulnerable", "Clear Chapter 3 - Heat.", 0x0103, 3)
level_clear_cheevo("The Kineticist", "Clear Chapter 4 - Manipulation.", 0x0102, 3)
level_clear_cheevo("The Ethereal", "Clear Chapter 5 - Takeover.", 0x0101, 3)

achievement(title = "Codebreaker", description = "Enter the unauthorized area.", points = 5,
trigger = level_loaded() && current_level_id() == 0x0032, type = "progression")

function diary_cheevo(title, desc, screen, points) {
    achievement(title = title, description = desc, points = points,
    trigger = message_delta() && current_level_id() == screen, type="progression")
}

diary_cheevo("Taking the High Road", "Find my first diary entry.", 0x0025, 2)
diary_cheevo("Darkened Door", "Find my second diary entry.", 0x0026, 5)
diary_cheevo("Leap Frog", "Find my third diary entry.", 0x0027, 3)

achievement(title = "Doubling Back", description = "Find my fourth diary entry.", points = 2,
trigger = message_delta() && current_level_id() == 0x0102 && mario_y_coord() == 0x80, type="progression")

achievement(title = "Terraforming", description = "Find my fifth diary entry.", points = 3,
trigger = message_delta() && current_level_id() == 0x101 && mario_x_screen() == 0x09, type="progression")

function end_cheevo(title, desc, screen, points, type) {
    achievement(title = title, description = desc, points = points,
    trigger = level_loaded() && current_level_id() == screen, type = type)
}

end_cheevo("Not Quite a Resolution", "Reach End 1 and escape the facility.", 0x002E, 5, type = "progression")
end_cheevo("Up in the Rafters", "Reach End 2 and learn more about Charles's plans.", 0x002B, 5, type = "progression")
end_cheevo("Learning the Code", "Reach End 3 and put your knowledge to use.", 0x0031, 5, type = "progression")
end_cheevo("Victory Candescence", "Reach End 4 and learn the truth about my brother.", 0x0036, 10, type = "win_condition")
end_cheevo("You Didn't Accept My Gift?", "Reach Hidden End 1 and pay for your insubordination.", 0x003A, 1, type = "")
end_cheevo("Writing on the Wall", "Reach Hidden End 2 and learn the truth about yourself.", 0x0038, 10, type = "win_condition")

achievement(title = "Shell Surfer", description = "Reach the end of Chapter 2 - Breakthrough without riding a mole after encountering the Disco Shell.", points = 5,
trigger = once(current_level_id() == 0x0106 && mario_x_screen() == 0x0c) && never(on_mole() && pswitch_timer() == 0) && never(prev(game_state()) != 0x14) && trigger_when(goal_delta()))

// Leaderboards

leaderboard(title = "Chapter 6 - Resolution? Least Deaths", description = "Complete Chapter 6 - Resolution? from the beginning with the least number of deaths.", format = "VALUE", value = death_delta(),
start = level_loaded() && current_level_id() == 0x0002, cancel = __ornext(game_state() == 0x00 || game_state() == 0x0E || current_level_id() == 0x2A), submit = level_loaded() && current_level_id() == 0x002c, lower_is_better = true)

leaderboard(title = "Unauthorized Area Least Deaths", description = "Complete the unauthorized area from the beginning with the least number of deaths.", format = "VALUE", value = death_delta(),
start = level_loaded() && current_level_id() == 0x0032, cancel = __ornext(game_state() == 0x00 || game_state() == 0x0E), submit = level_loaded() && current_level_id() == 0x0034, lower_is_better = true)

leaderboard(title = "The Walls are Lava", description = "Complete Chapter 1 - Rivalry with the least wallrunning time without using the checkpoint.", format = "FRAMES", value = wallrunning(), start = level_loaded() && current_level_id() == 0x0105 && ch_1_checkpoint() == 0, cancel = (current_level_id() != 0x0105 && current_level_id() != 0x0025) || death_delta() || game_state() == 0x0E, submit = goal_delta(), lower_is_better = true)

// Rich Presence

level_names = {
0x00c5: "being briefed on the mission.",
0x0001: "learning the ropes in Prologue.",
0x002F: "discovering a decommissioned area.",
0x0105: "bouncing off the walls in Rivalry.",
0x0025: "bouncing off the walls in Rivalry.",
0x0106: "playing with the moles in Breakthrough.",
0x0026: "playing with the moles in Breakthrough.",
0x0103: "squeaking through in Heat.",
0x0027: "squeaking through in Heat.",
0x0102: "feather falling in Manipulation.",
0x0101: "phasing in and out in Takeover.",
0x0002: "trying to find a Resolution?",
0x0028: "trying to find a Resolution?",
0x0029: "trying to find a Resolution?",
0x002c: "trying to find a Resolution?",
0x0032: "exploring an unauthorized area.",
0x0033: "exploring an unauthorized area.",
0x0034: "exploring an unauthorized area.",
0x002D: "escaping the facility... for now.",
0x002E: "escaping the facility... for now.",
0x002B: "starting to uncover the truth.",
0x0030: "in disguise... wait, what?",
0x0031: "in disguise... wait, what?",
0x0035: "meeting the real Marvin.",
0x0036: "meeting the real Marvin.",
0x0039: "learning not to turn down a generous gift.",
0x003A: "learning not to turn down a generous gift.",
}

rp_powerup = rich_presence_lookup("Powerup", mario_powerup(), { 0x00: "Small Mario", 0x01: "Big Mario" }, "Mario")
rp_level = rich_presence_lookup("Level", current_level_id(), level_names, "in a level.")
rp_levels_beaten = rich_presence_value("Exits", levels_beaten())

rich_presence_conditional_display(in_level_loose() && __ornext(current_level_id() == 0x0037 || current_level_id() == 0x0038), "Charles is learning the truth. [🚩{0}/5]", rp_levels_beaten)
rich_presence_conditional_display(in_level_loose(), "{0} is {1} [🚩{2}/5]", rp_powerup, rp_level, rp_levels_beaten)
rich_presence_conditional_display(game_state() <= 0x0A, "Mario is on the title screen.")
rich_presence_display("{0} is in the overworld. [🚩{1}/5]", rp_powerup, rp_levels_beaten)
