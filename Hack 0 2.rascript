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

// $001ECC: [Bitfield] Ch 2 - Breakthrough state
//          Bit6 = Checkpoint active
//          Bit7 = Level cleared
function ch_2_breakthrough_state() => byte(0x001ECC)

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

function end_screen_cheevo(title, desc, screen, points) {
}

function diary_cheevo(title, desc, screen, points) {
    achievement(title = title, description = desc, points = points,
    trigger = message_delta() && current_level_id() == screen)
}

diary_cheevo("Taking the High Road", "Find my first diary entry.", 0x0025, 2)
diary_cheevo("Darkened Door", "Find my second diary entry.", 0x0026, 5)
diary_cheevo("Leap Frog", "Find my third diary entry.", 0x0027, 3)

achievement(title = "Doubling Back", description = "Find my fourth diary entry.", points = 2,
trigger = message_delta() && current_level_id() == 0x0102 && mario_y_coord() == 0x80)

achievement(title = "Terraforming", description = "Find my fifth diary entry.", points = 3,
trigger = message_delta() && current_level_id() == 0x101 && mario_x_screen() == 0x09)

function end_cheevo(title, desc, screen, points) {
    achievement(title = title, description = desc, points = points,
    trigger = prev(game_state()) == 0x13 && game_state() == 0x14 && current_level_id() == screen)
}

end_cheevo("End 1 of 4", "You have escaped the facility, but your work is not done.", 0x002E, 5)
end_cheevo("End 2 of 4", "My plans for this organization run deeper than you realize.", 0x002B, 5)
end_cheevo("End 3 of 4", "You learned the code, but there is more to uncover.", 0x0031, 5)
end_cheevo("End 4 of 4", "Learn the truth about my brother.", 0x0036, 10)
end_cheevo("Hidden End 1 of 2", "You didn't accept my gift?", 0x003A, 1)
end_cheevo("Hidden End 2 of 2", "Learn the truth about yourself.", 0x0038, 10)

achievement(title = "Shell Surfer", description = "Reach the end of Chapter 2 - Breakthrough without riding a mole after encountering the Disco Shell.", points = 5,
trigger = once(current_level_id() == 0x0106 && mario_x_screen() == 0x0c) && never(on_mole() && pswitch_timer() == 0) && never(prev(game_state()) != 0x14) && trigger_when(goal_delta()))

// Leaderboards

// Rich Presence

level_names = {

}

rp_powerup = rich_presence_lookup("Powerup", mario_powerup(), { 0x00: "Small Mario", 0x01: "Big Mario" }, "Mario")

