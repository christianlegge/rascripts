// Conker's Pocket Tales
// #ID = 4893

// $0000: NOTE: This game is backwards compatible with Game Boy. All code notes refer to the GBC version unless otherwise noted. All of the names for collectibles in the GBC notes refer to the GameFAQs guide by TrulyDexterous, which don't always make a lot of sense, but seemed like a better option than just enumerating them.
function note_this_game_is_backwards_compatible_with_game_boy_all_code_notes_refer_to_the_gbc_version_unless_otherwise_noted_all_of_the_names_for_collectibles_in_the_gbc_notes_refer_to_the_gamefaqs_guide_by_trulydexterous_which_don_t_always_make_a_lot_of_sense_but_seemed_like_a_better_option_than_just_enumerating_them() => byte(0x000000)

// $4152: [ROM Bank 0x6F] Array of [16-bit] pointers to object data tables for each map screen
//        +0x00 = Pointer to table of X positions of objects in map 00
//        +0x02 = Pointer to table of Y positions of objects in map 00
//        +0x04 = Pointer to table of types of objects in map 00
//        +0x06 = Pointer to table of objects' collectible flags in map 00
//        +0x08 = Pointer to table of X positions of objects in map 01
//        ...
function rom_bank_0x6f_array_of_16_bit_pointers_to_object_data_tables_for_each_map_screen() => word(0x004152)

// $48CE: [ROM Bank 0x6F] Array of [16-bit] pointers to permanent collectible flag tables for each map screen
//        +0x00 = Pointer to table of collectible flags for map 00
//        +0x02 = Pointer to table of collectible flags for map 01
//        ...
function rom_bank_0x6f_array_of_16_bit_pointers_to_permanent_collectible_flag_tables_for_each_map_screen() => word(0x0048CE)

// $C074: (7d)
//        27 Nutty Foranger
//        36 Accorn Aggrovator
//        42 Conker Stomper
//        54 Raving Rodent
//        63 Crazy Squirrel
//        73 Treetop Terror
//        82 Mental Mammal
function d() => byte(0x00C074)

// $C081: [8-bit] Targets remaining in target game
function targets_remaining_in_target_game() => byte(0x00C081)

// $C0D4: [8-bit] Target game timer (frames)
//        Counts up from 0 to 0x31, then seconds tick down and this resets
function target_game_timer_frames() => byte(0x00C0D4)

// $C0D5: [8-bit] Target game timer (seconds)
//        Becomes 0xFF when time runs out
function target_game_timer_seconds() => byte(0x00C0D5)

// $C201: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Final Dungeon First Acorn Saved
//        Bit1 = Final Dungeon Third Acorn Saved
//        Bit2 = Final Dungeon Second Acorn Saved
//        Bit 3 = Final Dungeon Seventh Acorn Saved
//        Bit4 = Final Dungeon Sixth Acorn Saved
//        Bit5 = Final Dungeon Fourth Acorn Saved
//        Bit6 = Final Dungeon Fifth Acorn Saved
//        Bit7 = Final Dungeon Spoken to Berri
function gb_bitfield_permanent_collectible_flags() => byte(0x00C201)

// $C205: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Willow Woods Windmill Key
//        Bit2 = Willow Woods Mushroom Town Key
//        Bit4 = Willow Woods Old Barn Key
//        Bit6 = Vultureville Cemetery Key
function gb_bitfield_permanent_collectible_flags() => byte(0x00C205)

// $C206: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Krow Keep Castle Key
//        Bit2 = Mako Islands Aztec Key
//        Bit4 = Claw Swamp Aztec Key
function gb_bitfield_permanent_collectible_flags() => byte(0x00C206)

// $C207: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Willow Woods After Hsstamean Invitation
//        Bit1 = Willow Woods Through Cave Invitation
//        Bit2 = Willow Woods Boulder Invitation
//        Bit3 = Willow Woods Cave Invitation
//        Bit4 = Vultureville Behind Culture Invitation 1
//        Bit5 = Vultureville Behind Culture Invitation 2
//        Bit6 = Vultureville Hotel Invitation
//        Bit7 = Vultureville Underwater Invitation
function gb_bitfield_permanent_collectible_flags() => byte(0x00C207)

// $C208: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Krow Keep Fake Wall Invitation 1
//        Bit1 = Krow Keep Fake Wall Invitation 2
//        Bit2 = Krow Keep Spikes Invitation
//        Bit3 = Krow Keep Box Puzzle Invitation
//        Bit4 = Mako Islands Ledge Invitation
//        Bit5 = Mako Islands West Underwater Invitation
//        Bit6 = Mako Islands Northeast Underwater Invitation
//        Bit7 = Mako Islands North Island Invitation
function gb_bitfield_permanent_collectible_flags() => byte(0x00C208)

// $C209: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Claw Swamp Invitation Behind Boulder 1
//        Bit1 = Claw Swamp Invitation Behind Boulder 2
//        Bit2 = Claw Swamp Invitation Behind Rock
//        Bit3 = Claw Swamp Spikes Invitation
//        Bit4 = Aztec Temple Invitation 1
//        Bit5 = Aztec Temple Invitation 2
//        Bit6 = Aztec Temple Invitation 3
//        Bit7 = Aztec Temple Invitation 4
function gb_bitfield_permanent_collectible_flags() => byte(0x00C209)

// $C20C: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit1 = Mako Islands Engine
//        Bit2 = Mako Islands Rudder
//        Bit3 = Mako Islands Wood
//        Bit4 = Mako Islands Propeller
//        Bit5 = Willow Woods Slingshot
//        Bit6 = Claw Swamp Saw
//        Bit7 = Vultureville Tankard
function gb_bitfield_permanent_collectible_flags() => byte(0x00C20C)

// $C20D: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Vultureville Gold Pan
//        Bit1 = Vultureville Gold Bar
//        Bit2 = Vultureville Swim Mask
//        Bit3 = Krow Keep Token
//        Bit5 = Mako Islands Pickaxe
function gb_bitfield_permanent_collectible_flags() => byte(0x00C20D)

// $C215: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit4 = Willow Woods Hsstamean Blue Present
function gb_bitfield_permanent_collectible_flags() => byte(0x00C215)

// $C216: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit4 = Willow Woods Forest Guardian Blue Present
//        Bit5 = Willow Woods Target Practice Blue Present
//        Bit6 = Willow Woods Mushroom Town Blue Present
//        Bit7 = Willow Woods Forest Wong Blue Present
function gb_bitfield_permanent_collectible_flags() => byte(0x00C216)

// $C217: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Willow Woods Windmill Blue Present
//        Bit1 = Willow Woods Switches Blue Present
//        Bit2 = Willow Woods Garden Blue Present
//        Bit4 = Vultureville First Building Blue Present
//        Bit5 = Vultureville Jail Blue Present
//        Bit6 = Vultureville Undertaker Blue Present
//        Bit7 = Vultureville Bank Blue Present
function gb_bitfield_permanent_collectible_flags() => byte(0x00C217)

// $C218: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Vultureville Blacksmith Blue Present
//        Bit1 = Vultureville Vulture Culture Blue Present
//        Bit2 = Vultureville Underwater Blue Present
//        Bit3 = Vultureville Sol and Luxo Blue Present
//        Bit4 = Krow Keep Cup Game Blue Present
//        Bit5 = Krow Keep Key Blue Present
//        Bit6 = Krow Keep Entrance Blue Present
//        Bit7 = Krow Keep Waldorf Blue Present 1
function gb_bitfield_permanent_collectible_flags() => byte(0x00C218)

// $C219: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Krow Keep Waldorf Blue Present 2
//        Bit1 = Krow Keep Waldorf Blue Present 3
//        Bit2 = Krow Keep Waldorf Blue Present 4
//        Bit3 = Krow Keep Waldorf Blue Present 5
//        Bit4 = Claw Swamp Box Puzzle Blue Present 1
//        Bit5 = Claw Swamp Box Puzzle Blue Present 2
//        Bit6 = Claw Swamp Box Puzzle Blue Present 3
//        Bit7 = Claw Swamp Box Puzzle Blue Present 4
function gb_bitfield_permanent_collectible_flags() => byte(0x00C219)

// $C21A: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Claw Swamp Box Puzzle Blue Present 5
//        Bit1 = Claw Swamp Box Puzzle Blue Present 6
//        Bit2 = Claw Swamp Box Puzzle Blue Present 7
//        Bit3 = Claw Swamp Swamp Fiend Blue Present
//        Bit4 = Mako Islands First Blue Present
//        Bit5 = Mako Islands Boat Built Blue Present
//        Bit6 = Mako Islands Rudder Blue Present
//        Bit7 = Mako Islands Engine Blue Present
function gb_bitfield_permanent_collectible_flags() => byte(0x00C21A)

// $C21B: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Mako Islands Propeller Blue Present
//        Bit1 = Mako Islands Wood Blue Present
//        Bit2 = Mako Islands Builder Blue Present
//        Bit3 = Mako Islands Race Blue Present
//        Bit5 = Willow Woods Forest Wong Special Present
//        Bit6 = Willow Woods Near Claw Swamp Special Present
//        Bit7 = Willow Woods Boulder Special Present
function gb_bitfield_permanent_collectible_flags() => byte(0x00C21B)

// $C21C: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Willow Woods Ledge Special Present
//        Bit1 = Willow Woods Cave Door Special Present
//        Bit2 = Willow Woods Underwater Special Present
//        Bit3 = Vultureville Cemetery Special Present
//        Bit4 = Vultureville Behind Building Special Present
//        Bit5 = Krow Keep Entrance Special Present
//        Bit6 = Krow Keep Sword Special Present
//        Bit7 = Mako Islands Northeast Special Present
function gb_bitfield_permanent_collectible_flags() => byte(0x00C21C)

// $C21D: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Mako Islands Underwater Special Present
//        Bit1 = Claw Swamp Special Present 2
//        Bit2 = Claw Swamp Special Present 1
//        Bit3 = Aztec Temple Special Present 1
//        Bit4 = Aztec Temple Special Present 2
//        Bit5 = Aztec Temple Blue Present 1
//        Bit6 = Aztec Temple Blue Present 2
//        Bit7 = Aztec Temple Blue Present 3
function gb_bitfield_permanent_collectible_flags() => byte(0x00C21D)

// $C21E: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit0 = Aztec Temple Blue Present 4
//        Bit1 = Aztec Temple Blue Present 5
//        Bit2 = Aztec Temple Blue Present 6
//        Bit3 = Aztec Temple Blue Present 7
//        Bit4 = Aztec Temple Blue Present 8
function gb_bitfield_permanent_collectible_flags() => byte(0x00C21E)

// $C21F: [8-bit] [GB] [Bitfield] Permanent collectible flags
//        Bit6 = Entered final escape portal
function gb_bitfield_permanent_collectible_flags() => byte(0x00C21F)

// $C300: [8-bit] [Array length 266] Permanent collectible flags, only updated on updating the screen (pausing, changing area, text box)
//        Pointers to these bytes are kept in ROM bank 0x6F (see note on 0x48CE) and are indexed by map screen (0xCE40). Within an individual map screen's flags, an object's index determines which bit will be set when you collect it, left to right (e.g. the first object will be bit 7 of the first byte, the eigth will be bit 0 of the first byte, and the ninth will be bit 7 of the second byte). The amount of bytes in each map screen is determined by the presence of a 0xFF byte in its X position data (see note on 0xCB00). The first group of 8 values which includes an object at X position 0xFF will be the last collectible flags byte in this array for that map screen.
function array_length_266_permanent_collectible_flags_only_updated_on_updating_the_screen_pausing_changing_area_text_box() => byte(0x00C300)

// $C301: [8-bit] Permanent collectible flags for map screen 0x0
//        Bit5 = Willow Woods Target Troubles Blue Present (obj index 0xa)
function permanent_collectible_flags_for_map_screen_0x0() => byte(0x00C301)

// $C302: [8-bit] Permanent collectible flags for map screen 0x0
//        Bit2 = Willow Woods Red Present 4 (obj index 0x15)
function permanent_collectible_flags_for_map_screen_0x0() => byte(0x00C302)

// $C308: [8-bit] Permanent collectible flags for map screen 0x0
//        Bit3 = Willow Woods Red Present 3 (obj index 0x44)
function permanent_collectible_flags_for_map_screen_0x0() => byte(0x00C308)

// $C30C: [8-bit] Permanent collectible flags for map screen 0x0
//        Bit0 = Willow Woods Fenced In Blue Present (obj index 0x67)
function permanent_collectible_flags_for_map_screen_0x0() => byte(0x00C30C)

// $C30E: [8-bit] Permanent collectible flags for map screen 0x0
//        Bit2 = Willow Woods After the Boss Invitation (obj index 0x75)
function permanent_collectible_flags_for_map_screen_0x0() => byte(0x00C30E)

// $C311: [8-bit] Permanent collectible flags for map screen 0x0
//        Bit7 = Willow Woods Invitation 2 (obj index 0x88)
function permanent_collectible_flags_for_map_screen_0x0() => byte(0x00C311)

// $C314: [8-bit] Permanent collectible flags for map screen 0x0
//        Bit2 = Willow Woods Red Present 2 (obj index 0xa5)
function permanent_collectible_flags_for_map_screen_0x0() => byte(0x00C314)

// $C31C: [8-bit] Permanent collectible flags for map screen 0x1
//        Bit0 = Aztec Twenty-Eight Box Puzzles Later Blue Present (obj index 0x17)
//        Bit3 = Aztec I Know What You Did Last Box Puzzle Blue Present (obj index 0x14)
//        Bit5 = Aztec Box Puzzles Revisited Blue Present (obj index 0x12)
function permanent_collectible_flags_for_map_screen_0x1() => byte(0x00C31C)

// $C323: [8-bit] Permanent collectible flags for map screen 0x1
//        Bit6 = Aztec Not Another Box Puzzle Blue Present (obj index 0x49)
//        Bit3 = Aztec Lord of the Box Puzzles: Return of the Box Red Present (obj index 0x4c)
function permanent_collectible_flags_for_map_screen_0x1() => byte(0x00C323)

// $C328: [8-bit] Permanent collectible flags for map screen 0x1
//        Bit4 = Aztec I Still Know What You Did Last Box Puzzle Blue Present (obj index 0x73)
//        Bit0 = Aztec Invitation 3 (obj index 0x77)
function permanent_collectible_flags_for_map_screen_0x1() => byte(0x00C328)

// $C329: [8-bit] Permanent collectible flags for map screen 0x1
//        Bit4 = Aztec Switches Red Present (obj index 0x7b)
function permanent_collectible_flags_for_map_screen_0x1() => byte(0x00C329)

// $C32D: [8-bit] Permanent collectible flags for map screen 0x1
//        Bit3 = Aztec Into the Blue Invitation (obj index 0x9c)
function permanent_collectible_flags_for_map_screen_0x1() => byte(0x00C32D)

// $C32E: [8-bit] Permanent collectible flags for map screen 0x1
//        Bit3 = Aztec Not Even Hiding Invitation (obj index 0xa4)
function permanent_collectible_flags_for_map_screen_0x1() => byte(0x00C32E)

// $C331: [8-bit] Permanent collectible flags for map screen 0x1
//        Bit3 = Aztec Gone in Sixty Box Puzzles Blue Present (obj index 0xbc)
//        Bit4 = Aztec Not Another Box Puzzle 2 Blue Present (obj index 0xbb)
function permanent_collectible_flags_for_map_screen_0x1() => byte(0x00C331)

// $C333: [8-bit] Permanent collectible flags for map screen 0x2
//        Bit3 = Aztec Key (obj index 0x4)
//        Bit4 = Mako Islands Racing with Honker Blue Present (obj index 0x3)
function permanent_collectible_flags_for_map_screen_0x2() => byte(0x00C333)

// $C338: [8-bit] Permanent collectible flags for map screen 0x2
//        Bit5 = Mako Islands Invitation 4 (obj index 0x2a)
function permanent_collectible_flags_for_map_screen_0x2() => byte(0x00C338)

// $C33A: [8-bit] Permanent collectible flags for map screen 0x2
//        Bit6 = Mako Islands Red Present 1 (obj index 0x39)
function permanent_collectible_flags_for_map_screen_0x2() => byte(0x00C33A)

// $C341: [8-bit] Permanent collectible flags for map screen 0x2
//        Bit2 = Mako Islands Invitation 2 (obj index 0x75)
function permanent_collectible_flags_for_map_screen_0x2() => byte(0x00C341)

// $C347: [8-bit] Permanent collectible flags for map screen 0x3
//        Bit7 = Vultureville Red Present 1 (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x3() => byte(0x00C347)

// $C349: [8-bit] Permanent collectible flags for map screen 0x3
//        Bit0 = Vultureville - Sol and Luxo Blue Present (obj index 0x17)
//        Bit1 = Swimming Mask
function permanent_collectible_flags_for_map_screen_0x3() => byte(0x00C349)

// $C34B: [8-bit] Permanent collectible flags for map screen 0x3
//        Bit0 = Vultureville Invitation 4 (obj index 0x27)
//        Bit3 = Vultureville Hanging with the Cows Invitation (obj index 0x24)
function permanent_collectible_flags_for_map_screen_0x3() => byte(0x00C34B)

// $C350: [8-bit] Permanent collectible flags for map screen 0x3
//        Bit6 = Vultureville Pan for Gold Blue Present (obj index 0x49)
function permanent_collectible_flags_for_map_screen_0x3() => byte(0x00C350)

// $C353: [8-bit] Permanent collectible flags for map screen 0x3
//        Bit7 = Vultureville Red Present 2 (obj index 0x60)
function permanent_collectible_flags_for_map_screen_0x3() => byte(0x00C353)

// $C355: [8-bit] Permanent collectible flags for map screen 0x5
//        Bit6 = Final Dungeon Seventh Acorn Saved
function permanent_collectible_flags_for_map_screen_0x5() => byte(0x00C355)

// $C356: [8-bit] Permanent collectible flags for map screen 0x5
//        Bit1 = Final Dungeon Fifth Acorn Saved
//        Bit2 = Final Dungeon Fourth Acorn Saved
//        Bit4 = Final Dungeon First Acorn Saved
function permanent_collectible_flags_for_map_screen_0x5() => byte(0x00C356)

// $C35B: [8-bit] Permanent collectible flags for map screen 0x5
//        Bit1 = Final Dungeon Third Acorn Saved
function permanent_collectible_flags_for_map_screen_0x5() => byte(0x00C35B)

// $C35C: [8-bit] Permanent collectible flags for map screen 0x5
//        Bit0 = Final Dungeon Second Acorn Saved
function permanent_collectible_flags_for_map_screen_0x5() => byte(0x00C35C)

// $C361: [8-bit] Permanent collectible flags for map screen 0x5
//        Bit3 = Final Dungeon Spoken to Berri and started escape timer
function permanent_collectible_flags_for_map_screen_0x5() => byte(0x00C361)

// $C367: [8-bit] Permanent collectible flags for map screen 0x5
//        Bit1 = Final Dungeon Sixth Acorn Saved
function permanent_collectible_flags_for_map_screen_0x5() => byte(0x00C367)

// $C36C: [8-bit] Permanent collectible flags for map screen 0x8
//        Bit6 = Willow Woods Hsstamean Blue Present (obj index 0x6)
function permanent_collectible_flags_for_map_screen_0x8() => byte(0x00C36C)

// $C36E: [8-bit] Permanent collectible flags for map screen 0xa
//        Bit5 = Windmill Key
//        Bit6 = Willow Woods Find the Guardian Blue Present (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0xa() => byte(0x00C36E)

// $C36F: [8-bit] Permanent collectible flags for map screen 0xb
//        Bit4 = Willow Woods Windmill WoesBlue Present (obj index 0x3)
//        Bit5 = Slingshot
function permanent_collectible_flags_for_map_screen_0xb() => byte(0x00C36F)

// $C371: [8-bit] Permanent collectible flags for map screen 0xc
//        Bit7 = Willow Woods Mushroom Town Blue Present (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0xc() => byte(0x00C371)

// $C375: [8-bit] Permanent collectible flags for map screen 0xf
//        Bit7 = Willow Woods Puzzle Time Blue Present (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0xf() => byte(0x00C375)

// $C37A: [8-bit] Permanent collectible flags for map screen 0x13
//        Bit6 = Vultureville Key (obj index 0x2)
function permanent_collectible_flags_for_map_screen_0x13() => byte(0x00C37A)

// $C37C: [8-bit] Permanent collectible flags for map screen 0x14
//        Bit3 = Willow Woods In the Forest Blue Present (obj index 0x4)
//        Bit6 = Mushroom Key
function permanent_collectible_flags_for_map_screen_0x14() => byte(0x00C37C)

// $C37F: [8-bit] Permanent collectible flags for map screen 0x17
//        Bit7 = Tankard (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x17() => byte(0x00C37F)

// $C380: [8-bit] Permanent collectible flags for map screen 0x18
//        Bit4 = Vultureville The Bank Job Blue Present (obj index 0x3)
function permanent_collectible_flags_for_map_screen_0x18() => byte(0x00C380)

// $C382: [8-bit] Permanent collectible flags for map screen 0x1a
//        Bit5 = Vultureville Pan for Presents Blue Present (obj index 0x2)
//        Bit7 = Gold Pan (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x1a() => byte(0x00C382)

// $C385: [8-bit] Permanent collectible flags for map screen 0x1c
//        Bit6 = Vultureville I Shot the Sheriff Blue Present (obj index 0x9)
function permanent_collectible_flags_for_map_screen_0x1c() => byte(0x00C385)

// $C388: [8-bit] Permanent collectible flags for map screen 0x1d
//        Bit3 = Vultureville Invitation 1 (Hotel) (obj index 0x4)
function permanent_collectible_flags_for_map_screen_0x1d() => byte(0x00C388)

// $C390: [8-bit] Permanent collectible flags for map screen 0x23
//        Bit6 = Gold Bar (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x23() => byte(0x00C390)

// $C391: [8-bit] Permanent collectible flags for map screen 0x24
//        Bit5 = Vultureville The Undertaker Blue Present (obj index 0x2)
function permanent_collectible_flags_for_map_screen_0x24() => byte(0x00C391)

// $C394: [8-bit] Permanent collectible flags for map screen 0x26
//        Bit5 = Vultureville In Da House Blue Present (obj index 0xa)
function permanent_collectible_flags_for_map_screen_0x26() => byte(0x00C394)

// $C397: [8-bit] Permanent collectible flags for map screen 0x28
//        Bit0 = Krow Keep In the Spikes Invitation (obj index 0x7)
function permanent_collectible_flags_for_map_screen_0x28() => byte(0x00C397)

// $C39D: [8-bit] Permanent collectible flags for map screen 0x2a
//        Bit0 = Krow Keep Behind the Swords Red Present (obj index 0x7)
function permanent_collectible_flags_for_map_screen_0x2a() => byte(0x00C39D)

// $C3A1: [8-bit] Permanent collectible flags for map screen 0x2b
//        Bit5 = Krow Keep A Box Challenge Invitation (obj index 0x12)
function permanent_collectible_flags_for_map_screen_0x2b() => byte(0x00C3A1)

// $C3A6: [8-bit] Permanent collectible flags for map screen 0x2c
//        Bit0 = Krow Keep Hidden Passage 2 Invitation (obj index 0x1f)
function permanent_collectible_flags_for_map_screen_0x2c() => byte(0x00C3A6)

// $C3B1: [8-bit] Permanent collectible flags for map screen 0x33
//        Bit5 = Krow Keep Key Blue Present (obj index 0x2)
//        Bit6 = Krow Keep Key (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x33() => byte(0x00C3B1)

// $C3B2: [8-bit] Permanent collectible flags for map screen 0x34
//        Bit5 = Krow Keep Target Practice Coin (obj index 0x2)
//        Bit6 = Krow Keep Target Practice Blue Present (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x34() => byte(0x00C3B2)

// $C3B3: [8-bit] Permanent collectible flags for map screen 0x35
//        Bit5 = Krow Keep Hustled Blue Present (obj index 0x2)
function permanent_collectible_flags_for_map_screen_0x35() => byte(0x00C3B3)

// $C3B7: [8-bit] Permanent collectible flags for map screen 0x39
//        Bit6 = Mako Islands An Early Start Blue Present (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x39() => byte(0x00C3B7)

// $C3B8: [8-bit] Permanent collectible flags for map screen 0x3a
//        Bit5 = Mako Islands Speak to Ted Blue Present (obj index 0x2)
//        Bit6 = Mako Islands The Boat Builder Blue Present (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x3a() => byte(0x00C3B8)

// $C3B9: [8-bit] Permanent collectible flags for map screen 0x3b
//        Bit5 = Mako Islands Shoot-out Blue Present (obj index 0x2)
//        Bit6 = Mako Islands Wood (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x3b() => byte(0x00C3B9)

// $C3BA: [8-bit] Permanent collectible flags for map screen 0x3c
//        Bit5 = Mako Islands Engine (obj index 0x2)
//        Bit6 = Mako Islands Hurdling with Honker Blue Present (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x3c() => byte(0x00C3BA)

// $C3BB: [8-bit] Permanent collectible flags for map screen 0x3d
//        Bit5 = Mako Islands Rudder (obj index 0x2)
//        Bit6 = Mako Islands Blue Present (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x3d() => byte(0x00C3BB)

// $C3BC: [8-bit] Permanent collectible flags for map screen 0x3e
//        Bit5 = Mako Islands Propeller (obj index 0x2)
//        Bit6 = Mako Islands The Long Jump Blue Present (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x3e() => byte(0x00C3BC)

// $C3BD: [8-bit] Permanent collectible flags for map screen 0x3f
//        Bit4 = Claw Swamp The Good, The Bad and the Box Puzzle Blue Present (obj index 0x3)
//        Bit6 = Claw Swamp Box Puzzler Blue Present (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x3f() => byte(0x00C3BD)

// $C3C0: [8-bit] Permanent collectible flags for map screen 0x3f
//        Bit1 = Claw Swamp Pickaxe
//        Bit3 = Claw Swamp Behind the Stack Invitation (obj index 0x1c)
function permanent_collectible_flags_for_map_screen_0x3f() => byte(0x00C3C0)

// $C3C2: [8-bit] Permanent collectible flags for map screen 0x40
//        Bit0 = Claw Swamp The Box Puzzles of the Navarone Blue Present (obj index 0x7)
//        Bit2 = Claw Swamp The Chronicles of Box Puzzle Blue Present (obj index 0x5)
function permanent_collectible_flags_for_map_screen_0x40() => byte(0x00C3C2)

// $C3C6: [8-bit] Permanent collectible flags for map screen 0x40
//        Bit4 = Claw Swamp Red Present 1 (obj index 0x23)
//        Bit5 = Claw Swamp Invitation 2 (obj index 0x22)
function permanent_collectible_flags_for_map_screen_0x40() => byte(0x00C3C6)

// $C3C9: [8-bit] Permanent collectible flags for map screen 0x41
//        Bit4 = Claw Swamp Eternal Sunshine of the Spotless Box Puzzle Blue Present (obj index 0xb)
//        Bit6 = Claw Swamp Box Puzzles of the Caribbean Blue Present (obj index 0x9)
function permanent_collectible_flags_for_map_screen_0x41() => byte(0x00C3C9)

// $C3CC: [8-bit] Permanent collectible flags for map screen 0x41
//        Bit0 = Claw Swamp Invitation 3 (obj index 0x27)
function permanent_collectible_flags_for_map_screen_0x41() => byte(0x00C3CC)

// $C3CD: [8-bit] Permanent collectible flags for map screen 0x41
//        Bit7 = Claw Swamp Red Present 2 (obj index 0x28)
function permanent_collectible_flags_for_map_screen_0x41() => byte(0x00C3CD)

// $C3CF: [8-bit] Permanent collectible flags for map screen 0x42
//        Bit2 = Claw Swamp The Perfect Box Puzzle Blue Present (obj index 0xd)
function permanent_collectible_flags_for_map_screen_0x42() => byte(0x00C3CF)

// $C3D2: [8-bit] Permanent collectible flags for map screen 0x42
//        Bit4 = Claw Swamp Invitation 4 (obj index 0x23)
function permanent_collectible_flags_for_map_screen_0x42() => byte(0x00C3D2)

// $C3D3: [8-bit] Permanent collectible flags for map screen 0x43
//        Bit7 = Willow Woods Red Present 1 (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x43() => byte(0x00C3D3)

// $C3D6: [8-bit] Permanent collectible flags for map screen 0x46
//        Bit7 = Willow Woods West Cave Invitation (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x46() => byte(0x00C3D6)

// $C3D9: [8-bit] Permanent collectible flags for map screen 0x48
//        Bit7 = Willow Woods Cave Invitation (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x48() => byte(0x00C3D9)

// $C3DC: [8-bit] Permanent collectible flags for map screen 0x4b
//        Bit1 = Mako Islands Saw (obj index 0x6)
function permanent_collectible_flags_for_map_screen_0x4b() => byte(0x00C3DC)

// $C3E2: [8-bit] Permanent collectible flags for map screen 0x51
//        Bit6 = Vultureville Lost Treasure Blue Present (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x51() => byte(0x00C3E2)

// $C3E3: [8-bit] Permanent collectible flags for map screen 0x52
//        Bit7 = Vultureville Lost Treasure 2 Invitation (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x52() => byte(0x00C3E3)

// $C3E4: [8-bit] Permanent collectible flags for map screen 0x53
//        Bit0 = Krow Keep Waldorf 3 Blue Present (obj index 0x7)
//        Bit1 = Krow Keep Waldorf 2 Blue Present (obj index 0x6)
//        Bit2 = Krow Keep Waldorf 1 Blue Present (obj index 0x5)
function permanent_collectible_flags_for_map_screen_0x53() => byte(0x00C3E4)

// $C3E5: [8-bit] Permanent collectible flags for map screen 0x53
//        Bit7 = Krow Keep Waldorf 4 Blue Present (obj index 0x8)
function permanent_collectible_flags_for_map_screen_0x53() => byte(0x00C3E5)

// $C3EB: [8-bit] Permanent collectible flags for map screen 0x58
//        Bit6 = Krow Keep Waldorf 5 Blue Present (obj index 0x1)
function permanent_collectible_flags_for_map_screen_0x58() => byte(0x00C3EB)

// $C3F7: [8-bit] Permanent collectible flags for map screen 0x60
//        Bit1 = Claw Swamp The Swamp Fiend Blue Present (obj index 0x6)
function permanent_collectible_flags_for_map_screen_0x60() => byte(0x00C3F7)

// $C3F9: [8-bit] Permanent collectible flags for map screen 0x61
//        Bit4 = Krow Keep Red Present 2 (obj index 0x3)
function permanent_collectible_flags_for_map_screen_0x61() => byte(0x00C3F9)

// $C3FB: [8-bit] Permanent collectible flags for map screen 0x61
//        Bit6 = Krow Keep Hidden Passage Invitation (obj index 0x11)
function permanent_collectible_flags_for_map_screen_0x61() => byte(0x00C3FB)

// $C3FD: [8-bit] Permanent collectible flags for map screen 0x62
//        Bit2 = Aztec Golem Blue Present (obj index 0x5)
function permanent_collectible_flags_for_map_screen_0x62() => byte(0x00C3FD)

// $C400: [8-bit] Permanent collectible flags for map screen 0x64
//        Bit2 = Aztec Hiding in the Pool Invitation (obj index 0x5)
function permanent_collectible_flags_for_map_screen_0x64() => byte(0x00C400)

// $C405: [8-bit] Permanent collectible flags for map screen 0x69
//        Bit7 = Mako Islands Under the Sea Invitation (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x69() => byte(0x00C405)

// $C406: [8-bit] Permanent collectible flags for map screen 0x6a
//        Bit7 = Mako Islands In the Corner Red Present (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x6a() => byte(0x00C406)

// $C408: [8-bit] Permanent collectible flags for map screen 0x6b
//        Bit7 = Mako Islands Invitation 3 (obj index 0x8)
function permanent_collectible_flags_for_map_screen_0x6b() => byte(0x00C408)

// $C40B: [8-bit] Permanent collectible flags for map screen 0x6e
//        Bit7 = Willow Woods Mysterious Cave Red Present 1 (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x6e() => byte(0x00C40B)

// $C40F: [8-bit] Permanent collectible flags for map screen 0x72
//        Bit7 = Willow Woods Mysterious Cave Red Present 2 (obj index 0x0)
function permanent_collectible_flags_for_map_screen_0x72() => byte(0x00C40F)

// $C419: Key
function key() => byte(0x00C419)

// $C41D: [8-bit] Game over sequence trigger
//        0x00 = False
//        0x01 = True
function game_over_sequence_trigger() => byte(0x00C41D)

// $C424: (Mako Islands)
//        Engine
function mako_islands() => byte(0x00C424)

// $C425: (Mako Islands)
//        Rudder
function mako_islands() => byte(0x00C425)

// $C426: (Mako Islands)
//        Wood
function mako_islands() => byte(0x00C426)

// $C427: (Mako Islands)
//        Propeller
function mako_islands() => byte(0x00C427)

// $C428: (Mako Islands)
//        Boat set
function mako_islands() => byte(0x00C428)

// $C429: First key
function first_key() => byte(0x00C429)

// $C42A: mushroom town key
function mushroom_town_key() => byte(0x00C42A)

// $C42B: barn key
function barn_key() => byte(0x00C42B)

// $C42C: Key lost at cemetery
function key_lost_at_cemetery() => byte(0x00C42C)

// $C42D: Krow Keep castle key
function krow_keep_castle_key() => byte(0x00C42D)

// $C436: First key
function first_key() => byte(0x00C436)

// $C449: (Mako Islands)
//        All 4 things?
function mako_islands() => byte(0x00C449)

// $C456: [8-bit] Berri saved in final dungeon
//        0x00 = No
//        0x01 = Yes
function berri_saved_in_final_dungeon() => byte(0x00C456)

// $C45C: First key
function first_key() => byte(0x00C45C)

// $C460: [8-bit] Has slingshot?
//        0x00 = No
//        0x01 = Yes
function has_slingshot() => byte(0x00C460)

// $C461: saw
function saw() => byte(0x00C461)

// $C462: spatoon?
function spatoon() => byte(0x00C462)

// $C463: pan
function pan() => byte(0x00C463)

// $C464: coin? ingot?
function coin_ingot() => byte(0x00C464)

// $C465: scuba mask
function scuba_mask() => byte(0x00C465)

// $C466: coin
function coin() => byte(0x00C466)

// $C467: torch
function torch() => byte(0x00C467)

// $C468: pickaxe
function pickaxe() => byte(0x00C468)

// $C490: 1 = Aztec temple boss was defeated
function aztec_temple_boss_was_defeated() => byte(0x00C490)

// $C4A2: 1 = Last blue present collect, teleport shown up
function last_blue_present_collect_teleport_shown_up() => byte(0x00C4A2)

// $C4CE: (Mako Island)
//        Race prepared?
function mako_island() => byte(0x00C4CE)

// $C4EA: [8-bit] Rank up message queued
//        Gets set to 1 when Conker ranks up. Displays a message and resets to 0 as soon as possible.
function rank_up_message_queued() => byte(0x00C4EA)

// $C500: [8-bit] [Array length 8] Screen Y position for currently loaded objects, relative to background map
function array_length_8_screen_y_position_for_currently_loaded_objects_relative_to_background_map() => byte(0x00C500)

// $C508: [8-bit] [Array length 8] Screen X position for currently loaded objects, relative to background map
function array_length_8_screen_x_position_for_currently_loaded_objects_relative_to_background_map() => byte(0x00C508)

// $C510: [8-bit] [Array length 8] Index into object data tables for currently loaded objects
//        See notes for 0xCB00, 0xCC00, 0xCD00
function array_length_8_index_into_object_data_tables_for_currently_loaded_objects() => byte(0x00C510)

// $C51D: 3 hidden conkers in Aztec temple
function hidden_conkers_in_aztec_temple() => byte(0x00C51D)

// $C51F: Mako Aztec key?
function mako_aztec_key() => byte(0x00C51F)

// $C543: [8-bit] Fireball projectile direction
//        0xFF = No fireball active
//        0x00 = East
//        0x01 = West
//        0x02 = North
//        0x03 = South
//        0x04 = Northeast
//        0x05 = Northwest
//        0x06 = Southeast
//        0x07 = Southwest
function fireball_projectile_direction() => byte(0x00C543)

// $C544: [8-bit] Spear projectile direction
//        0xFF = No spear active
//        0x00 = East
//        0x01 = West
//        0x02 = North
//        0x03 = South
function spear_projectile_direction() => byte(0x00C544)

// $C545: [8-bit] Fireball projectile Y position (relative to background map)
function fireball_projectile_y_position_relative_to_background_map() => byte(0x00C545)

// $C546: [8-bit] Spear projectile Y position (relative to background map)
function spear_projectile_y_position_relative_to_background_map() => byte(0x00C546)

// $C547: [8-bit] Fireball projectile X position (relative to background map)
function fireball_projectile_x_position_relative_to_background_map() => byte(0x00C547)

// $C548: [8-bit] Spear projectile X position (relative to background map)
function spear_projectile_x_position_relative_to_background_map() => byte(0x00C548)

// $C55B: [8-bit] In-game flag
//        0x00 = Not in game (title screen, boot, etc)
//        0x01 = In game
function in_game_flag() => byte(0x00C55B)
function gbc_in_game() => in_game_flag() == 0x01

// $C563: 01=DKC theme
function dkc_theme() => byte(0x00C563)

// $C564: countdown to theme
function countdown_to_theme() => byte(0x00C564)

// $C566: [8-bit] Music ID
//        0x00 - Silence
//        0x01 - Silence
//        0x02 - Main theme
//        0x03 - Krow Keep outside
//        0x04 - DKC bonus theme
//        0x05 - Boss theme
//        0x06 - Inside buildings
//        0x07 - Caves
//        0x08 - Title opening
//        0x09 - Pause/File Select
//        0x0a - Vultureville Inside Buildings
//        0x0b - Vultureville
//        0x0c - Krow Keep Inside
//        0x0d - Mako Islands
//        0x0e - Claw Swamp
//        0x0f - Minigame
//        0x10 - Present collected
//        0x11 - Present collected
//        0x12 - Talking to npc
//        0x13 - Temple
//        0x14 - Lose minigame
//        0x15 - Win minigame
//        0x16 - Underwater/ending
//        0x17 - Alternate title
//        0x18 - Name entry (Only used in GB mode)
//        0x19 - Talking to bad npc
//        0x1a - Game over
function music_id() => byte(0x00C566)

// $C56E: [8-bit] Conker projectile direction (slingshot)
//        0xFF = No conker active
//        0x00 = East
//        0x01 = West
//        0x02 = North
//        0x03 = South
//        0x04 = Northeast
//        0x05 = Northwest
//        0x06 = Southeast
//        0x07 = Southwest
function conker_projectile_direction_slingshot() => byte(0x00C56E)

// $C57D: 3 = Aztec key from Swamp was collected
//        Bit 0 actually
//        ff = Aztec temple boss defeated
function aztec_key_from_swamp_was_collected() => byte(0x00C57D)

// $C59F: d = Mako Aztec key?
//        Bit 3 affected
//        Going from 05 to 12 and then 0d
function d_mako_aztec_key() => byte(0x00C59F)

// $C5B2: [8-bit] [GB] In-game flag
//        0x00 = Not in-game
function gb_in_game_flag() => byte(0x00C5B2)
function gb_in_game() => gb_in_game_flag() != 0x00

// $C5B5: [8-bit] [GB] Current ammo
function gb_current_ammo() => byte(0x00C5B5)

// $C5CB: [8-bit] Viewing final cutscene/credits
//        0x00 = No
//        0x01 = Yes
function viewing_final_cutscene_credits() => byte(0x00C5CB)

// $C900: [8-bit] [Array length 256] Collectible flags for objects on current map screen
//        Bit6 = Object is loaded but not collected
//        Bit7 = Object is collected
function array_length_256_collectible_flags_for_objects_on_current_map_screen() => byte(0x00C900)

// $C901: [8-bit] In-scene collectible flags
//        Bit7 = Willow Woods - Find the Guardian (Blue Present)
//        Bit7 = Vultureville - Lost Treasure (Blue Present)
//        Bit7 = Krow Keep - Target Practice (Blue Present)
//        Bit7 = Krow Keep - Key
//        Bit7 = Krow Keep - Waldorf Part 5 (Blue Present)
//        Bit7 = Mako Islands - An Early Start (Blue Present)
//        Bit7 = Mako Islands - The Boat Builder (Blue Present)
//        Bit7 = Mako Islands - The Long Jump (Blue Present)
//        Bit7 = Mako Islands - Hurdling with Honker (Blue Present)
function in_scene_collectible_flags() => byte(0x00C901)

// $C902: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Vultureville - The Undertaker (Blue Present)
//        Bit7 = Vultureville - Pan for Presents (Blue Present)
//        Bit7 = Krow Keep - Token
//        Bit7 = Krow Keep - Hustled! (Blue Present)
//        Bit7 = Krow Keep - The Key (Blue Present)
//        Bit7 = Mako Islands - Shoot-Out! (Blue Present)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C902)

// $C903: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Willow Woods - Windmill Woes (Blue Present)
//        Bit7 = Vultureville - The Bank Job (Blue Present)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C903)

// $C904: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Vultureville - Invitation 1 (Hotel)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C904)

// $C905: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Krow Keep - Waldorf Part 1 (Blue Present)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C905)

// $C906: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Krow Keep - Waldorf Part 2 (Blue Present)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C906)

// $C907: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Krow Keep - Invitation 2 (Spike Room)
//        Bit7 = Krow Keep - Waldorf Part 3 (Blue Present)
//        Bit7 - Krow Keep - Behind the Swords (Red Present)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C907)

// $C908: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Krow Keep - Waldorf Part 4 (Blue Present)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C908)

// $C909: [8-bit] In-scene collectible flags
//        Bit7 = Vultureville - I Shot the Sheriff! (Blue Present)
function in_scene_collectible_flags() => byte(0x00C909)

// $C90A: [8-bit] In-scene collectible flags (changes meaning dependent on scene)
//        Bit7 = Willow Woods - Target Troubles (Blue Present)
//        Bit7 = Vultureville - In Da House! (Blue Present)
function in_scene_collectible_flags_changes_meaning_dependent_on_scene() => byte(0x00C90A)

// $C911: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Krow Keep - Invitation 1 (Hidden Passage)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C911)

// $C912: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Krow Keep - Invitation 3 (A Box Challenge)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C912)

// $C917: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Vultureville - Boss: Sol and Luxo (Blue Present)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C917)

// $C91F: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Krow Keep - Invitation 4 (Hidden Passage 2)
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C91F)

// $C924: [8-bit] In-scene collectible flags
//        Bit7 = Vultureville - Hanging with the Cows (Invitation)
function in_scene_collectible_flags() => byte(0x00C924)

// $C949: [8-bit] In-scene collectible flags
//        Bit7 = Vultureville - Pan for Gold (Blue Present)
function in_scene_collectible_flags() => byte(0x00C949)

// $C975: [8-bit] In-scene collectible flags (meaning changes dependent on scene)
//        Bit7 = Mako Islands - Invitation 2
function in_scene_collectible_flags_meaning_changes_dependent_on_scene() => byte(0x00C975)

// $CA00: Boss HP
function boss_hp() => byte(0x00CA00)

// $CB00: [8-bit] [Array length 256] X positions of objects on current map screen
//        Measured in 8x8 tiles
//        Indexed by values at 0xC510
//        ---
//        Extra use: starting from the beginning, every group of 8 values represents an object that can be marked with a permanent collectible flag (starting at address 0xC300) - a group that includes a 0xFF will be the last group of objects that uses the permanent flag tables
function array_length_256_x_positions_of_objects_on_current_map_screen() => byte(0x00CB00)

// $CC00: [8-bit] [Array length 256] Y positions of objects on current map screen
//        Measured in 8x8 tiles
//        Indexed by values at 0xC510
function array_length_256_y_positions_of_objects_on_current_map_screen() => byte(0x00CC00)

// $CD00: [8-bit] [Array length 256] Types of objects on current map screen
//        Indexed by values at 0xC510
//        0x00 = Health Acorn
//        0x01 = Conker Ammo
//        0x02 = Invitation
//        0x03 = Blue Present
//        0x04 = Red Present
//        0x05 = Pickaxe
//        0x09 = Slingshot
//        0x0D = Swim Mask
//        0x0E = Gold Pan
//        0x10 = Aztec Key
function array_length_256_types_of_objects_on_current_map_screen() => byte(0x00CD00)

// $CE00: [8-bit] Screen scroll X offset
//        Measured in 8x8 tiles. Used for sprites and collision, but does not affect tilemap.
function screen_scroll_x_offset() => byte(0x00CE00)

// $CE01: [8-bit] Screen scroll Y offset
//        Measured in 8x8 tiles. Used for sprites and collision, but does not affect tilemap.
function screen_scroll_y_offset() => byte(0x00CE01)

// $CE2E: [8-bit] Animation timer
//        Reused for all animations. Counts from 0 to whatever the max for the current animation is, loops on a per-animation basis
function animation_timer() => byte(0x00CE2E)

// $CE3C: [8-bit] Jumping
//        Bit0 = Jump is happening
function jumping() => byte(0x00CE3C)

// $CE40: [8-bit] Current map screen
//        0x00 = Willow Woods Overworld
//        0x01 = Aztec Temple Inside
//        0x02 = Mako Islands Overworld
//        0x03 = Vultureville Overworld
//        0x05 = Final Dungeon
//        0x08 = Willow Woods Boss
//        0x09 = Willow Woods Conkers House
//        0x0a = Willow Woods Forest Guardian House
//        0x0b = Willow Woods Windmill
//        0x0f = Willow Woods Mushroom Town
//        0x10 = Willow Woods Mushroom Town
//        0x11 = Willow Woods Mushroom Town
//        0x12 = Willow Woods Mushroom Town
//        0x13 = Willow Woods Old Barn
//        0x14 = Willow Woods Mushroom Town
//        0x26 = Vultureville House
//        0x29 = Krow Keep Inside
//        0x2a = Krow Keep Inside
//        0x2b = Krow Keep Inside
//        0x2d = Krow Keep Inside
//        0x39 = Mako Islands Hut
//        0x3a = Mako Islands Teds Boats
//        0x3b = Mako Islands Hut
//        0x3c = Mako Islands Hut
//        0x3d = Mako Islands Hut
//        0x3e = Mako Islands Hut
//        0x3f = Claw Swamp Overworld
//        0x4a = Mako Islands Cave
//        0x4b = Mako Islands Cave
//        0x4d = Mako Islands Cave
//        0x4e = Mako Islands Entry Cave
//        0x4f = Claw Swamp House
//        0x53 = Krow Keep Outside Boss
//        0x58 = Krow Keep Waldorf 5
//        0x59 = Claw Swamp House
//        0x61 = Krow Keep Overworld
//        0x62 = Aztec Temple Boss
//        0x66 = Aztec Temple Underwater
//        0x68 = Mako Islands Underwater
//        0x69 = Mako Islands Underwater
//        0x6a = Mako Islands Underwater
//        0x6b = Mako Islands Underwater
//        0x6c = Willow Woods Mysterious Cave
function current_map_screen() => byte(0x00CE40)

// $CE42: [8-bit] Number of acorns saved in final dungeon
function number_of_acorns_saved_in_final_dungeon() => byte(0x00CE42)

// $CE43: [8-bit] Seconds on escape timer in final dungeon
function seconds_on_escape_timer_in_final_dungeon() => byte(0x00CE43)

// $CE45: [8-bit] Minutes on escape timer in final dungeon
function minutes_on_escape_timer_in_final_dungeon() => byte(0x00CE45)

// $CE53: Rank?
//        00 Woodland Weirdo
//        02 Forest Fiend
//        02 Hairy Hibernator
//        00 next
//        ...
//        0d Raving Rodent
//        13 Treetop Terror
//        07 Mental Mammal
function rank() => byte(0x00CE53)

// $CE57: [8-bit] Current map area
//        0x08 = Swimming
function current_map_area() => byte(0x00CE57)

// $CE80: [8-bit] [Array length 8] Types of currently loaded objects
//        0x00 = Health Acorn
//        0x01 = Conker Ammo
//        0x02 = Invitation
//        0x03 = Blue Present
//        0x04 = Red Present
//        0x05 = Pickaxe
//        0x09 = Slingshot
//        0x0D = Swim Mask
//        0x0E = Gold Pan
//        0x10 = Aztec Key
function array_length_8_types_of_currently_loaded_objects() => byte(0x00CE80)

// $CEC3: [8-bit] In-scene collectible flags
//        Bit0 = Willow Woods - Boss: Hsstamean (Blue Present)
function in_scene_collectible_flags() => byte(0x00CEC3)

// $CEC6: [8-bit] Invincibility frame timer
//        Counts down to 0
function invincibility_frame_timer() => byte(0x00CEC6)

// $CECD: [8-bit] Knockback animation active
//        0x00 = False
//        0x01 = True
function knockback_animation_active() => byte(0x00CECD)

// $CED1: fc = rank up
function fc_rank_up() => byte(0x00CED1)

// $CED6: [8-bit] Current life
//        Maximum of 99 (0x63)
function current_life() => byte(0x00CED6)

// $CED9: Ammo
function ammo() => byte(0x00CED9)

// $CEDE: [8-bit] Screen scroll Y position (same as SCY)
function screen_scroll_y_position_same_as_scy() => byte(0x00CEDE)

// $CEDF: [8-bit] Screen scroll X position (same as SCX)
function screen_scroll_x_position_same_as_scx() => byte(0x00CEDF)

// $CEE0: [8-bit] Invitation count
function invitation_count() => byte(0x00CEE0)

// $CEE1: [8-bit] Blue present count
function blue_present_count() => byte(0x00CEE1)

// $CEE2: [8-bit] Red present count
function red_present_count() => byte(0x00CEE2)

// $CEE3: cee0 cee2 excced:
//        06: Nutty Foranger rank
//        08 02: Acorn Aggravator
function cee0_cee2_excced() => byte(0x00CEE3)

// $CEF4: [8-bit] Conker X-position on screen
//        Typically 0x58, usually only changes near map edge
function conker_x_position_on_screen() => byte(0x00CEF4)

// $CEF5: [8-bit] Conker Y-position on screen
//        Typically 0x60, usually only changes near map edge
function conker_y_position_on_screen() => byte(0x00CEF5)

// $FF4D: [8-bit] CGB Mode Speed Switch Register
//        Can functionally be used to determine if in GB or CGB mode during gameplay. Will never be set if in GB mode and will remain at 0xFF.
//        0x80 = CGB
//        0xFF = GB
function cgb_mode_speed_switch_register() => byte(0x00FF4D)

// $FFA6: [8-bit] [GB] Current map screen
//        0x00 = Willow Woods Overworld
//        0x01 = Willow Woods Hsstamean
//        0x02 = Willow Woods Conker's House
//        0x03 = Willow Woods Forest Guardian House
//        0x04 = Willow Woods Windmill
//        0x05 = Willow Woods Mushroom Town House
//        0x06 = Willow Woods Mushroom Town House
//        0x07 = Willow Woods Mushroom Town House
//        0x08 = Willow Woods Mushroom Town House
//        0x09 = Willow Woods Mushroom Town House
//        0x0a = Willow Woods Mushroom Town House
//        0x0b = Willow Woods Mushroom Town House
//        0x0c = Willow Woods Old Barn
//        0x0e = Willow Woods Mushroom Town House
//        0x0f = Vultureville Hotel Upstairs
//        0x10 = Vultureville House
//        0x11 = Vultureville House
//        0x12 = Vultureville House
//        0x13 = Vultureville House
//        0x14 = Vultureville House
//        0x16 = Vultureville Panning House
//        0x17 = Vultureville Cemetery House
//        0x18 = Vultureville First House
//        0x19 = Vultureville House
//        0x1c = Vultureville Overworld
//        0x1d = Willow Woods Cave
//        0x1e = Willow Woods Mushroom Town Cave
//        0x20 = Willow Woods Cave Aztec Entry
//        0x21 = Mako Islands Cave
//        0x22 = Mako Islands Cave
//        0x23 = Mako Islands Cave
//        0x24 = Claw Swamp Overworld
//        0x25 = Krow Keep Overworld
//        0x26 = Willow Woods Underwater
//        0x27 = Willow Woods Underwater Mako Islands Entry
//        0x28 = Willow Woods Underwater
//        0x29 = Willow Woods Underwater Krow Keep Entry
//        0x2b = Mako Islands Underwater Northeast
//        0x2d = Mako Islands Underwater
//        0x2f = Mako Islands Overworld
//        0x30 = Vultureville Bar
//        0x31 = Vultureville Bank
//        0x32 = Vultureville Undertaker
//        0x34 = Vultureville Hotel
//        0x36 = Vultureville Tent
//        0x37 = Vultureville Tent
//        0x39 = Vultureville Tent
//        0x3a = Vultureville Tent
//        0x3d = Krow Keep Inside
//        0x3e = Aztec Temple Inside
//        0x3f = Claw Swamp House
//        0x40 = Claw Swamp House
//        0x41 = Claw Swamp House
//        0x42 = Claw Swamp House
//        0x43 = Claw Swamp House
//        0x44 = Claw Swamp House
//        0x45 = Claw Swamp House
//        0x46 = Claw Swamp House
//        0x47 = Vultureville Underwater Left of Bridge
//        0x48 = Vultureville Underwater Right of Bridge
//        0x49 = Krow Keep Tent
//        0x4a = Krow Keep Tent
//        0x4b = Krow Keep Tent
//        0x4c = Krow Keep Tent
//        0x4d = Krow Keep Tent
//        0x4e = Krow Keep Tent
//        0x4f = Krow Keep Tent
//        0x50 = Vultureville Boss
//        0x51 = Krow Keep Waldorf 5
//        0x52 = Mako Islands Northwest Hut
//        0x53 = Mako Islands Builder Hut
//        0x54 = Mako Islands Swim Game Hut
//        0x55 = Mako Islands Hurdles Hut
//        0x56 = Mako Islands Long Jump Hut
//        0x57 = Mako Islands Shooting Hut
//        0x59 = Willow Woods Cave
//        0x5a = Claw Swamp Boss
//        0x5b = Final Dungeon
//        0x5c = Aztec Temple Boss
//        0x5d = Krow Keep Waldorf 1
//        0x5e = Krow Keep Waldorf 2
//        0x5f = Krow Keep Waldorf 3
//        0x60 = Krow Keep Waldorf 4
//        0x69 = Final Dungeon
//        0x6a = Mako Islands Boat Race
//        0x6b = Mako Islands Entry Cave
function gb_current_map_screen() => byte(0x00FFA6)

// $FFAD: [8-bit] [GB] Current Blue (normal) Presents (BCD)
function gb_current_blue_normal_presents_bcd() => byte(0x00FFAD)

// $FFAE: [8-bit] [GB] Current Invitations (BCD)
function gb_current_invitations_bcd() => byte(0x00FFAE)

// $FFB0: [8-bit] [GB] Conker's health, measured in quarter acorns
function gb_conker_s_health_measured_in_quarter_acorns() => byte(0x00FFB0)

// $FFB3: [8-bit] [GB] During escape, number of minutes left until game over
//        Starts at 0x04, ticks down when 0xffb4 goes from 0x01 to 0x3c
function gb_during_escape_number_of_minutes_left_until_game_over() => byte(0x00FFB3)

// $FFB4: [8-bit] [GB] During escape, seconds value of game over timer (with 0xffb3)
//        Starts at 0x3c (dec 60)
function gb_during_escape_seconds_value_of_game_over_timer_with_0xffb3() => byte(0x00FFB4)

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
