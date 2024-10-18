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