// Paper Mario
// #ID = 10154

// $02D574: Screen Wideness (Signed Value/Load a save state to make it work)
function screen_wideness() => byte(0x02D574)

// $074026: Joystick Rotation
//          Bit0= Up
//          Bit1= Down
//          Bit2= Left
//          Bit3= Right
function joystick_rotation() => byte(0x074026)

// $074097: Event ID
//          00= Overworld
//          01= Mario is in a battle
//          02= Game Paused
function event_id() => byte(0x074097)

// $07409A: Cheats
//          01 = Always Spawn Chuck Quizmo
function cheats() => byte(0x07409A)

// $07409B: Cheats
//          01= Enemies can't touch Mario
//          02 = Defeat Enemies on Contact
//          03 = Auto-Defeat all enemies in Battle
//          04 = Automatically Run Away
function cheats_2() => byte(0x07409B)

// $0740A1: Player Current Character
//          (Loaded until you enter a new map)
//          00=Mario
//          01=Peach
//          03=Invisible
//          05=Peach (Can use Parasol)
function player_current_character() => byte(0x0740A1)

// $0740A2: Map Loaded while using a Partner Byte Flag
//          Needed only by Watt and Lakilester, to enter a new map ridding laki or using watt
function map_loaded_while_using_a_partner_byte_flag() => byte(0x0740A2)

// $0740A8: Area/World ID
//          00=Goomba Village
//          01=Toad Town
//          02=Sewers
//          03=Whale Belly
//          04=Peach Castle
//          05=Star Summit
//          06=Koopa Village
//          07=Koopa Bros. Fortress
//          08=Mt. Rugged
//          09=Dry Dry Outpost
//          0A=Dry Dry Desert
//          0B=Dry Dry Ruins
//          0C=Forever Forest
//          0D=Boo's Mansion
//          0E=Gusty Gulch
//          0F=Tubba Blubba's Castle
//          10=Shy Guy's Toybox
//          11=Lavalava Island
//          12=Mt. Lavalava
//          13=Flower Fields
//          14=Snow Road
//          15=Crystal Palace
//          16=Bowser's Castle
//          17=Outside Peach's Castle
//          17=Credits Map
//          19=Playroom/Minigames
//          1A=Game Over Map
//          1B=Test Maps
function area_world_id() => byte(0x0740A8)
function area_world_id_word() => word(0x0740A8)

MapLookup = {
    0x00: "Goomba Village",
    0x01: "Toad Town",
    0x02: "Sewers",
    0x03: "Whale Belly",
    0x04: "Peach Castle",
    0x05: "Star Summit",
    0x06: "Koopa Village",
    0x07: "Koopa Bros. Fortress",
    0x08: "Mt. Rugged",
    0x09: "Dry Dry Outpost",
    0x0A: "Dry Dry Desert",
    0x0B: "Dry Dry Ruins",
    0x0C: "Forever Forest",
    0x0D: "Boo's Mansion",
    0x0E: "Gusty Gulch",
    0x0F: "Tubba Blubba's Castle",
    0x10: "Shy Guy's Toybox",
    0x11: "Lavalava Island",
    0x12: "Mt. Lavalava",
    0x13: "Flower Fields",
    0x14: "Snow Road",
    0x15: "Crystal Palace",
    0x16: "Bowser's Castle",
    0x17: "Outside Peach's Castle",
}

// $0740B0: Current Map Entry ID loaded
function current_map_entry_id_loaded() => byte(0x0740B0)

// $0740B2: Map ID (This address work together with World ID)
function map_id() => byte(0x0740B2)

// $074189: Current Save File/Slot
function current_save_file_slot() => byte(0x074189)

// $0779C4: File 1 Total Play Time 1 (16bits)
//          (This value can't be edited, only change when you saved)
function file_1_total_play_time_1() => word(0x0779C4)

// $0779C6: File 1 Total Play Time 2 (16bits)
//          (This value can't be edited, only change when you saved)
function file_1_total_play_time_2() => word(0x0779C6)

// $0779C8: File 1 Name - Character 1
function file_1_name_character_1() => byte(0x0779C8)

// $0779CB: File 1 Total Star Spirits Rescued
//          (Only change when player save)
function file_1_total_star_spirits_rescued() => byte(0x0779CB)

// $0779CC: File 1 Name - Character 5
function file_1_name_character_5() => byte(0x0779CC)

// $0779CD: File 1 Name - Character 4
function file_1_name_character_4() => byte(0x0779CD)

// $0779CE: File 1 Name - Character 3
function file_1_name_character_3() => byte(0x0779CE)

// $0779CF: File 1 Name - Character 2
function file_1_name_character_2() => byte(0x0779CF)

// $0779D1: File 1 Name - Character 8
function file_1_name_character_8() => byte(0x0779D1)

// $0779D2: File 1 Name - Character 7
function file_1_name_character_7() => byte(0x0779D2)

// $0779D3: File 1 Name - Character 6
function file_1_name_character_6() => byte(0x0779D3)

// $0969D4: [EU] [8-bit] Encounter state
//          
//          0x02 = Neutral
//          
//          0x03 = Pre-battle
//          
//          0x04 = Conversation
//          
//          0x05 = Post-battle
function eu_encounter_state() => byte(0x0969D4)

// $09A5E0: [JP] [8-bit] Encounter state
//          
//          0x02 = Neutral
//          
//          0x03 = Pre-battle
//          
//          0x04 = Conversation
//          
//          0x05 = Post-battle
function jp_encounter_state() => byte(0x09A5E0)

// $09A600: [US] [8-bit] Encounter state
//          0x02 = Neutral
//          0x03 = Pre-battle
//          0x04 = Conversation
//          0x05 = Post-battle
function us_encounter_state() => byte(0x09A600)

// $0A0942: Fade Effect when you enter a new area
function fade_effect_when_you_enter_a_new_area() => byte(0x0A0942)

// $0A094A: 00 = Demo mode/Main Menu
//          01= In game
//          02= Game Booting

// $0AE070: Hand Pointer 2 enemies right ea/ec left c0/c2
//          3 Enemies: 9d-9f(ground)
//          c5-c7(flying) c8-ca(ground)
//          ec-ee(flying) ea-ec(ground)
//          2 Enemies Left enemy Bit 7+6 set Right enemy Bit 765 set
//          1 Enemy c0-c2 Bit 7+6 set 1 changing
function hand_pointer_2_enemies_right_ea_ec_left_c0_c2() => dword(0x0AE070)

// $0B0F38: [Pointer][+46] Battle ID for NPC 1
function pointer_battle_id_for_npc_1() => dword(0x0B0F38)

// $0B0FC0: [8bit] enemy map data
//          
//          shy guy blue zone left side
//          bit0 - Red shy guy
//          bit1 - yellow shy guy 1
//          bit2 - yellow shy guy 2
//          bit3 - blue shy guy
//          bit4 - green shy guy
function enemy_map_data() => byte(0x0B0FC0)

// $0B1050: [8bit] enemy map data
//          shy guy blue zone right side
//          
//          bit 0 - pink shy guy
function enemy_map_data_2() => byte(0x0B1050)

// $0B1200: [8bit] enemy map data
//          
//          shy guy blue zone left side
//          bit 1 - 3 yellow shy guy fight
function enemy_map_data_3() => byte(0x0B1200)

// $0B1D80: 01 = Mario isn't touching the ground
function mario_isnt_touching_the_ground() => byte(0x0B1D80)

// $0B1D9A: Camera Zoom 16bits
function camera_zoom_16bits() => word(0x0B1D9A)

// $0B2D8C: Pause
function pause() => byte(0x0B2D8C)

// $0DACF8: Last File Saved/Loaded
//          b2=Main Menu
//          00=Slot 1
//          01=Slot 2
//          02=Slot 3
//          03=Slot 4
function last_file_saved_loaded() => byte(0x0DACF8)

// $0DACFC: Number of times you have saved
function number_of_times_you_have_saved() => byte(0x0DACFC)

// $0DBC70: Progress Flags - Start
function progress_flags_start() => byte(0x0DBC70)

// $0DBC76: Bit4 = Hidden Block in 00-02
//          0x740a8=00
//          0x740b2=02
function hidden_block_in_00_02() => bit4(0x0DBC76)

// $0DBC7B: Bit7=Saving First Time Dialog
function saving_first_time_dialog() => byte(0x0DBC7B)

// $0DBC7C: Bit1 = You got an item for first time Flag
function you_got_an_item_for_first_time_flag() => byte(0x0DBC7C)

// $0DBC7D: [8bit] Luigi State
//          bit1 - luigi is outside of his room
function luigi_state_luigi_is_outside_of_his_room() => bit1(0x0DBC7D)

// $0DBC85: Partners Letters Flag 1 8bits
//          Bit4-7 = Letters 1-4 readed
function partners_letters_flag_1_8bits_letters_1_4_readed() => bit4(0x0DBC85)
function partners_letters_flag_1_8bits_letters_1_4_readed_bit5() => bit5(0x0DBC85)
function partners_letters_flag_1_8bits_letters_1_4_readed_bit6() => bit6(0x0DBC85)
function partners_letters_flag_1_8bits_letters_1_4_readed_bit7() => bit7(0x0DBC85)

// $0DBC86: Partners Letters Flag 2
//          ff = Letters 5-13 Readed
function partners_letters_flag_2_bit0() => bit0(0x0DBC86)
function partners_letters_flag_2_bit1() => bit1(0x0DBC86)
function partners_letters_flag_2_bit2() => bit2(0x0DBC86)
function partners_letters_flag_2_bit3() => bit3(0x0DBC86)
function partners_letters_flag_2_bit4() => bit4(0x0DBC86)
function partners_letters_flag_2_bit5() => bit5(0x0DBC86)
function partners_letters_flag_2_bit6() => bit6(0x0DBC86)
function partners_letters_flag_2_bit7() => bit7(0x0DBC86)

// $0DBC87: Partners Letters Flag 3
//          Bit0-6 = Letters 14-20 Readed
function partners_letters_flag_3_letters_14_20_readed() => bit0(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit1() => bit1(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit2() => bit2(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit3() => bit3(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit4() => bit4(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit5() => bit5(0x0DBC87)
function partners_letters_flag_3_letters_14_20_readed_bit6() => bit6(0x0DBC87)

// $0DBC96: Recipes Flag 1 16bits
function recipes_flag_1_16bits_bit6() => bit6(0x0DBC96)
function recipes_flag_1_16bits_bit7() => bit7(0x0DBC96)

// $0DBC98: Recipes Flag 2 16bits
function recipes_flag_2_16bits_bit0() => bit0(0x0DBC98)
function recipes_flag_2_16bits_bit1() => bit1(0x0DBC98)
function recipes_flag_2_16bits_bit2() => bit2(0x0DBC98)
function recipes_flag_2_16bits_bit3() => bit3(0x0DBC98)
function recipes_flag_2_16bits_bit4() => bit4(0x0DBC98)
function recipes_flag_2_16bits_bit5() => bit5(0x0DBC98)
function recipes_flag_2_16bits_bit6() => bit6(0x0DBC98)
function recipes_flag_2_16bits_bit7() => bit7(0x0DBC98)

// $0DBC9A: Recipes Flag 3 16bits
function recipes_flag_3_16bits_bit0() => bit0(0x0DBC9A)
function recipes_flag_3_16bits_bit1() => bit1(0x0DBC9A)
function recipes_flag_3_16bits_bit2() => bit2(0x0DBC9A)
function recipes_flag_3_16bits_bit3() => bit3(0x0DBC9A)
function recipes_flag_3_16bits_bit4() => bit4(0x0DBC9A)
function recipes_flag_3_16bits_bit5() => bit5(0x0DBC9A)
function recipes_flag_3_16bits_bit6() => bit6(0x0DBC9A)
function recipes_flag_3_16bits_bit7() => bit7(0x0DBC9A)

// $0DBC9C: Recipes Flag 4 16bits
function recipes_flag_4_16bits_bit0() => bit0(0x0DBC9C)
function recipes_flag_4_16bits_bit1() => bit1(0x0DBC9C)
function recipes_flag_4_16bits_bit2() => bit2(0x0DBC9C)
function recipes_flag_4_16bits_bit3() => bit3(0x0DBC9C)
function recipes_flag_4_16bits_bit5() => bit5(0x0DBC9C)
function recipes_flag_4_16bits_bit6() => bit6(0x0DBC9C)
function recipes_flag_4_16bits_bit7() => bit7(0x0DBC9C)

// $0DBCA2: Bit5 = Hidden Block 1 in 02-09
//          Bit6 = Hidden Block 2 in 02-09
//          Bit7 = Hidden Block 3 in 02-09
//          0x740a8=02
//          0x740b2=09
function hidden_block_1_in_02_09() => bit5(0x0DBCA2)
function hidden_block_2_in_02_09() => bit6(0x0DBCA2)
function hidden_block_3_in_02_09() => bit7(0x0DBCA2)

// $0DBCA3: Bit0 = Hidden Block in 02-0E
//          Bit4 = Hidden Block 1 in 02-11
//          Bit5 = Hidden Block 2 in 02-11
//          Bit6 = Hidden Block 3 in 02-11
//          Bit7 = Hidden Block 4 in 02-11
//          0x740a8=02
//          0x740b2=XX
function hidden_block_in_02_0e() => bit0(0x0DBCA3)
function hidden_block_1_in_02_11() => bit4(0x0DBCA3)
function hidden_block_2_in_02_11() => bit5(0x0DBCA3)
function hidden_block_3_in_02_11() => bit6(0x0DBCA3)
function hidden_block_4_in_02_11() => bit7(0x0DBCA3)

// $0DBCA4: Bit0 = Hidden Block 1 in 02-13
//          Bit1 = Hidden Block 2 in 02-13
//          Bit2 = Hidden Block 3 in 02-13
//          Bit4 = Hidden Block in 02-14
//          0x740a8=02
//          0x740b2=XX
function hidden_block_1_in_02_13() => bit0(0x0DBCA4)
function hidden_block_2_in_02_13() => bit1(0x0DBCA4)
function hidden_block_3_in_02_13() => bit2(0x0DBCA4)
function hidden_block_in_02_14() => bit4(0x0DBCA4)

// $0DBCBA: Bit7= Hidden Block in 06-07
//          0x740a8=06
//          0x740b2=07
function hidden_block_in_06_07() => bit7(0x0DBCBA)

// $0DBCD3: Bit7= Hidden Block in 0A-07
//          0x740a8=0A
//          0x740b2=07
function hidden_block_in_0a07() => bit7(0x0DBCD3)

// $0DBCD5: Bit2= Hidden Block in 0A-12
//          Bit5= Hidden Block in 0A-22
//          Bit6= Hidden Block in 0A-2B
//          0x740a8=0A
//          0x740b2=2B
function hidden_block_in_0a12() => bit2(0x0DBCD5)
function hidden_block_in_0a22() => bit5(0x0DBCD5)
function hidden_block_in_0a2b() => bit6(0x0DBCD5)

// $0DBCFA: Bit6 = Hidden Block 1 in 10-00
//          Bit7 = Hidden Block 2 in 10-00
//          0x740a8=10
//          0x740b2=00
function hidden_block_1_in_10_00() => bit6(0x0DBCFA)
function hidden_block_2_in_10_00() => bit7(0x0DBCFA)

// $0DBCFB: Bit3 = Hidden Block in 10-01
//          Bit5 = Hidden Block in 10-02
//          0x740a8=10
//          0x740b2=XX
function hidden_block_in_10_01() => bit3(0x0DBCFB)
function hidden_block_in_10_02() => bit5(0x0DBCFB)

// $0DBCFE: Bit0 = Hidden Block 1 in 10-04
//          Bit1 = Hidden Block 2 in 10-04
//          Bit3 = Hidden Block in 10-05
//          0x740a8=10
//          0x740b2=XX
function hidden_block_1_in_10_04() => bit0(0x0DBCFE)
function hidden_block_2_in_10_04() => bit1(0x0DBCFE)
function hidden_block_in_10_05() => bit3(0x0DBCFE)

// $0DBCFF: Bit1 = Hidden Block in 10-07
//          0x740a8=10
//          0x740b2=07
function hidden_block_in_10_07() => bit1(0x0DBCFF)

// $0DBD03: Bit0 = Hidden Block in 10-09
//          Bit2 = Red Hidden Block in 10-0A
//          Bit5 = Hidden Block 1 in 10-0A
//          Bit6 = Hidden Block 2 in 10-0A
//          0x740a8=10
//          0x740b2=XX
function hidden_block_in_10_09() => bit0(0x0DBD03)
function red_hidden_block_in_10_0a() => bit2(0x0DBD03)
function hidden_block_1_in_10_0a() => bit5(0x0DBD03)
function hidden_block_2_in_10_0a() => bit6(0x0DBD03)

// $0DBD04: Bit1 = Hidden Block in 10-0C
//          0x740a8=10
//          0x740b2=0C
function hidden_block_in_10_0c() => bit1(0x0DBD04)

// $0DBD0B: Bit6 = Hidden Block 1 in 11-01
//          Bit7 = Hidden Block 2 in 11-01
//          0x740a8=11
//          0x740b2=01
function hidden_block_1_in_11_01() => bit6(0x0DBD0B)
function hidden_block_2_in_11_01() => bit7(0x0DBD0B)

// $0DBD0C: Bit1 = Hidden Block in 11-08
//          Bit2 = Hidden Block in 11-0C
//          Bit3 = Hidden Block in 11-0D
//          0x740a8=11
//          0x740b2=XX
function hidden_block_in_11_08() => bit1(0x0DBD0C)
function hidden_block_in_11_0c() => bit2(0x0DBD0C)
function hidden_block_in_11_0d() => bit3(0x0DBD0C)

// $0DBD14: Bit0 = Hidden Block in 12-05
//          0x740a8=12
//          0x740b2=05
function hidden_block_in_12_05() => bit0(0x0DBD14)

// $0DBD1D: Bit6 = Hidden Block in 13-0C
//          0x740a8=13
//          0x740b2=0C
function hidden_block_in_13_0c() => bit6(0x0DBD1D)

// $0DBD1E: Bit2 = Hidden Block in 13-12
//          0x740a8=13
//          0x740b2=12
function hidden_block_in_13_12() => bit2(0x0DBD1E)

// $0DBD20: Bit0 = Hidden Block 1 in 13-11
//          Bit1 = Hidden Block 2 in 13-11
//          0x740a8=13
//          0x740b2=11
function hidden_block_1_in_13_11() => bit0(0x0DBD20)
function hidden_block_2_in_13_11() => bit1(0x0DBD20)

// $0DBD25: Bit2 = Hidden Block in 14-04
//          0x740a8=14
//          0x740b2=04
function hidden_block_in_14_04() => bit2(0x0DBD25)

// $0DBD26: Bit0 = Hidden Block in 14-06
//          0x740a8=14
//          0x740b2=06
function hidden_block_in_14_06() => bit0(0x0DBD26)

// $0DBD2C: Bit7 = Hidden Block in 15-12
//          0x740a8=15
//          0x740b2=12
function hidden_block_in_15_12() => bit7(0x0DBD2C)

// $0DBD35: Bit6 = Hidden Block in 16-25
//          0x740a8=16
//          0x740b2=25
function hidden_block_in_16_25() => bit6(0x0DBD35)

// $0DBD36: Bit7 = Hidden Block in 16-31
//          0x740a8=16
//          0x740b2=31
function hidden_block_in_16_31() => bit7(0x0DBD36)

// $0DBD3D: Bit3 = Hidden Block in 17-02
//          0x740a8=17
//          0x740b2=02
function hidden_block_in_17_02() => bit3(0x0DBD3D)

// $0DBD53: Bit1=Goombario First Battle Dialog
function goombario_first_battle_dialog() => byte(0x0DBD53)

// $0DBD73: Story Progress byte (8-bits)
//          80: Game Started - 60: Game Finished
function story_progress_byte() => byte(0x0DBD73)

// $0DBD7C: [Bitfield] Mario's letters
//          Bit0 = Kolorado 2
//          Bit1 = Yoshi Kids
//          Bit2 = Rowf
//          Bit3 = Wise Wisterwood
function bitfield_marios_letters_kolorado_2() => bit0(0x0DBD7C)
function bitfield_marios_letters_yoshi_kids() => bit1(0x0DBD7C)
function bitfield_marios_letters_rowf() => bit2(0x0DBD7C)
function bitfield_marios_letters_wise_wisterwood() => bit3(0x0DBD7C)

// $0DBD7D: [Bitfield] Mario's letters
//          Bit0 = Little T.
//          Bit1 = Vanna T.
//          Bit2 = Koopa Bros.
//          Bit3 = Koopa Troopas
//          Bit4 = Moustafa
//          Bit5 = Kolorado
//          Bit6 = Goombaria
//          Bit7 = Tayce T.
function bitfield_marios_letters_2_little_t() => bit0(0x0DBD7D)
function bitfield_marios_letters_2_vanna_t() => bit1(0x0DBD7D)
function bitfield_marios_letters_2_koopa_bros() => bit2(0x0DBD7D)
function bitfield_marios_letters_2_koopa_troopas() => bit3(0x0DBD7D)
function bitfield_marios_letters_2_moustafa() => bit4(0x0DBD7D)
function bitfield_marios_letters_2_kolorado() => bit5(0x0DBD7D)
function bitfield_marios_letters_2_goombaria() => bit6(0x0DBD7D)
function bitfield_marios_letters_2_tayce_t() => bit7(0x0DBD7D)

// $0DBD7E: Luigi's Diary 1
//          Bit0= Page 9
//          Bit1= Page 10
//          Bit2= Page 11
//          Bit3= Page 12
function luigis_diary_1_page_9() => bit0(0x0DBD7E)
function luigis_diary_1_page_10() => bit1(0x0DBD7E)
function luigis_diary_1_page_11() => bit2(0x0DBD7E)
function luigis_diary_1_page_12() => bit3(0x0DBD7E)

// $0DBD7F: Luigi's Diary 2
//          ff = Pages 1-8 Readed
function luigis_diary_2_bit0() => bit0(0x0DBD7F)
function luigis_diary_2_bit1() => bit1(0x0DBD7F)
function luigis_diary_2_bit2() => bit2(0x0DBD7F)
function luigis_diary_2_bit3() => bit3(0x0DBD7F)
function luigis_diary_2_bit4() => bit4(0x0DBD7F)
function luigis_diary_2_bit5() => bit5(0x0DBD7F)
function luigis_diary_2_bit6() => bit6(0x0DBD7F)
function luigis_diary_2_bit7() => bit7(0x0DBD7F)

// $0DBD8F: Degree cards
function degree_cards() => byte(0x0DBD8F)

// $0DBDE8: [8bit] times you have whacked whacka
function times_you_have_whacked_whacka() => byte(0x0DBDE8)

// $0DBEDC: Tattle Flags 1
//          Bit0=Bill Blaster
//          Bit1=Cleft
//          Bit2=Monty Mole
//          Bit3=Bandit
//          Bit4=Pokey
//          Bit5=Pokey Mummy
//          Bit6=Swooper
//          Bit7=Buzzy Beetle
function tattle_flags_1() => word(0x0DBEDC)
function tattle_flags_1_bill_blaster() => bit0(0x0DBEDC)
function tattle_flags_1_cleft() => bit1(0x0DBEDC)
function tattle_flags_1_monty_mole() => bit2(0x0DBEDC)
function tattle_flags_1_bandit() => bit3(0x0DBEDC)
function tattle_flags_1_pokey() => bit4(0x0DBEDC)
function tattle_flags_1_pokey_mummy() => bit5(0x0DBEDC)
function tattle_flags_1_swooper() => bit6(0x0DBEDC)
function tattle_flags_1_buzzy_beetle() => bit7(0x0DBEDC)

// $0DBEDD: Tattle Flags 2
//          Bit0=Paragoomba
//          Bit1=Spiked Goomba
//          Bit2=Fuzzy
//          Bit3=Koopa Troopa
//          Bit4=Paratroopa
//          Bit5=Bob-omb
//          Bit7=Bullet Bill
function tattle_flags_2_paragoomba() => bit0(0x0DBEDD)
function tattle_flags_2_spiked_goomba() => bit1(0x0DBEDD)
function tattle_flags_2_fuzzy() => bit2(0x0DBEDD)
function tattle_flags_2_koopa_troopa() => bit3(0x0DBEDD)
function tattle_flags_2_paratroopa() => bit4(0x0DBEDD)
function tattle_flags_2_bobomb() => bit5(0x0DBEDD)
function tattle_flags_2_bullet_bill() => bit7(0x0DBEDD)

// $0DBEDE: Tattle Flags 3
//          Bit2=Gloomba
//          Bit3=Paragloomba
//          Bit4=Spiked Gloomba
//          Bit5=Dark Koopa
//          Bit7=Goomba
function tattle_flags_3() => byte(0x0DBEDE)
function tattle_flags_3_gloomba() => bit2(0x0DBEDE)
function tattle_flags_3_paragloomba() => bit3(0x0DBEDE)
function tattle_flags_3_spiked_gloomba() => bit4(0x0DBEDE)
function tattle_flags_3_dark_koopa() => bit5(0x0DBEDE)
function tattle_flags_3_goomba() => bit7(0x0DBEDE)

// $0DBEE0: Tattle Flags 4
//          Bit0=Monty Mole (Green)
//          Bit1=Bzzap!
//          Bit2=Crazee Dayzee
//          Bit3=Amazy Dayzee
//          Bit4=Ruff Puff
//          Bit5=Spike?
//          Bit6=Gulpit
function tattle_flags_4() => word(0x0DBEE0)
function tattle_flags_4_monty_mole_green() => bit0(0x0DBEE0)
function tattle_flags_4_bzzap() => bit1(0x0DBEE0)
function tattle_flags_4_crazee_dayzee() => bit2(0x0DBEE0)
function tattle_flags_4_amazy_dayzee() => bit3(0x0DBEE0)
function tattle_flags_4_ruff_puff() => bit4(0x0DBEE0)
function tattle_flags_4_spike() => bit5(0x0DBEE0)
function tattle_flags_4_gulpit() => bit6(0x0DBEE0)

// $0DBEE1: Tattle Flags 5
//          Bit1=Jungle Fuzzy
//          Bit2=Spear Guy
//          Bit3=Lava Bubble
//          Bit4=Spike Top
//          Bit5=Putrid Piranha
//          Bit6=Lakitu
//          Bit7=Spiny
function tattle_flags_5_jungle_fuzzy() => bit1(0x0DBEE1)
function tattle_flags_5_spear_guy() => bit2(0x0DBEE1)
function tattle_flags_5_lava_bubble() => bit3(0x0DBEE1)
function tattle_flags_5_spike_top() => bit4(0x0DBEE1)
function tattle_flags_5_putrid_piranha() => bit5(0x0DBEE1)
function tattle_flags_5_lakitu() => bit6(0x0DBEE1)
function tattle_flags_5_spiny() => bit7(0x0DBEE1)

// $0DBEE2: Tattle Flags 6
//          Bit0=Groove Guy
//          Bit1=Sky Guy
//          Bit2=Medi Guy
//          Bit3=Pyro Guy
//          Bit4=Spy Guy
//          Bit6=Hurt Plant
//          Bit7=M.Bush.
function tattle_flags_6() => word(0x0DBEE2)
function tattle_flags_6_groove_guy() => bit0(0x0DBEE2)
function tattle_flags_6_sky_guy() => bit1(0x0DBEE2)
function tattle_flags_6_medi_guy() => bit2(0x0DBEE2)
function tattle_flags_6_pyro_guy() => bit3(0x0DBEE2)
function tattle_flags_6_spy_guy() => bit4(0x0DBEE2)
function tattle_flags_6_hurt_plant() => bit6(0x0DBEE2)
function tattle_flags_6_m_bush() => bit7(0x0DBEE2)

// $0DBEE3: Tattle Flags 7
//          Bit0=Stone Chomp
//          Bit1=Piranha Plant
//          Bit2=Forest Fuzzy
//          Bit3=Hyper Goomba
//          Bit4=Hyper Paragoomba
//          Bit5=Hyper Cleft
//          Bit6=Clubba
//          Bit7=Shy Guy
function tattle_flags_7_stone_chomp() => bit0(0x0DBEE3)
function tattle_flags_7_piranha_plant() => bit1(0x0DBEE3)
function tattle_flags_7_forest_fuzzy() => bit2(0x0DBEE3)
function tattle_flags_7_hyper_goomba() => bit3(0x0DBEE3)
function tattle_flags_7_hyper_paragoomba() => bit4(0x0DBEE3)
function tattle_flags_7_hyper_cleft() => bit5(0x0DBEE3)
function tattle_flags_7_clubba() => bit6(0x0DBEE3)
function tattle_flags_7_shy_guy() => bit7(0x0DBEE3)

// $0DBEE4: Tattle Flags 8
//          Bit0=Magikoopa (Bowser Castle)
//          Bit2=Red Magikoopa
//          Bit3=Green Magikoopa
//          Bit5=Yellow Magikoopa
//          Bit7=Gray Magikoopa
function tattle_flags_8() => word(0x0DBEE4)
function tattle_flags_8_magikoopa_bowser_castle() => bit0(0x0DBEE4)
function tattle_flags_8_red_magikoopa() => bit2(0x0DBEE4)
function tattle_flags_8_green_magikoopa() => bit3(0x0DBEE4)
function tattle_flags_8_yellow_magikoopa() => bit5(0x0DBEE4)
function tattle_flags_8_gray_magikoopa() => bit7(0x0DBEE4)

// $0DBEE5: Tattle Flags 9
//          Bit1=Bombshell Bill Blaster
//          Bit2=Bombshell Bill
//          Bit3=Hammer Bros.
//          Bit4=Koopatrol
function tattle_flags_9_bombshell_bill_blaster() => bit1(0x0DBEE5)
function tattle_flags_9_bombshell_bill() => bit2(0x0DBEE5)
function tattle_flags_9_hammer_bros() => bit3(0x0DBEE5)
function tattle_flags_9_koopatrol() => bit4(0x0DBEE5)

// $0DBEE6: Tattle Flags 10
//          Bit5=Ember
//          Bit6=Bony Beetle
//          Bit7=Dry Bones
function tattle_flags_10() => word(0x0DBEE6)
function tattle_flags_10_ember() => bit5(0x0DBEE6)
function tattle_flags_10_bony_beetle() => bit6(0x0DBEE6)
function tattle_flags_10_dry_bones() => bit7(0x0DBEE6)

// $0DBEE7: Tattle Flags 11
//          Bit0=White Clubba
//          Bit1=Frost Piranha
//          Bit2=Swoopula
//          Bit3=Duplighost
function tattle_flags_11_white_clubba() => bit0(0x0DBEE7)
function tattle_flags_11_frost_piranha() => bit1(0x0DBEE7)
function tattle_flags_11_swoopula() => bit2(0x0DBEE7)
function tattle_flags_11_duplighost() => bit3(0x0DBEE7)

// $0DBEEB: Tattle Flags 12
//          Bit2=White Magikoopa
function tattle_flags_12() => byte(0x0DBEEB)
function tattle_flags_12_white_magikoopa() => bit2(0x0DBEEB)

// $0DBEEC: Tattle Flags 13
//          Bit0=Blue Goomba
//          Bit1=Red Goomba
//          Bit2=Goomba King
function tattle_flags_13() => word(0x0DBEEC)
function tattle_flags_13_blue_goomba() => bit0(0x0DBEEC)
function tattle_flags_13_red_goomba() => bit1(0x0DBEEC)
function tattle_flags_13_goomba_king() => bit2(0x0DBEEC)

// $0DBEED: Tattle Flags 14
//          Bit1=Jr Troopa 2
//          Bit2=Jr Troopa 3
//          Bit3=Jr Troopa 4
//          Bit4=Jr Troopa 5
//          Bit5=Jr. Troppa 6
function tattle_flags_14_jr_troopa_2() => bit1(0x0DBEED)
function tattle_flags_14_jr_troopa_3() => bit2(0x0DBEED)
function tattle_flags_14_jr_troopa_4() => bit3(0x0DBEED)
function tattle_flags_14_jr_troopa_5() => bit4(0x0DBEED)
function tattle_flags_14_jr_troppa_6() => bit5(0x0DBEED)

// $0DBEEF: Tattle Flags 15
//          Bit2=The Master1
//          Bit3=The Master2
//          Bit4=The Master3
//          Bit5=Chan
//          Bit6=Lee
function tattle_flags_15() => byte(0x0DBEEF)
function tattle_flags_15_the_master1() => bit2(0x0DBEEF)
function tattle_flags_15_the_master2() => bit3(0x0DBEEF)
function tattle_flags_15_the_master3() => bit4(0x0DBEEF)
function tattle_flags_15_chan() => bit5(0x0DBEEF)
function tattle_flags_15_lee() => bit6(0x0DBEEF)

// $0DBEF0: Tattle Flags 16
//          Bit1=Big Lantern Ghost
//          Bit3=Lava Piranha
//          bit4 - lava piranha
//          Bit5=Lava Bud
//          bit6=Lava bud
//          Bit7=Petit Piranha
function tattle_flags_16() => word(0x0DBEF0)
function tattle_flags_16_big_lantern_ghost() => bit1(0x0DBEF0)
function tattle_flags_16_lava_piranha() => bit3(0x0DBEF0)
function tattle_flags_16_lava_piranha_bit4() => bit4(0x0DBEF0)
function tattle_flags_16_lava_bud() => bit5(0x0DBEF0)
function tattle_flags_16_lava_bud_bit6() => bit6(0x0DBEF0)
function tattle_flags_16_petit_piranha() => bit7(0x0DBEF0)

// $0DBEF1: Tattle Flags 17
//          Bit0=Shy Squad
//          Bit2=General Guy
//          Bit7=Anti Guy (Shy Guy Toy Box)
function tattle_flags_17_shy_squad() => bit0(0x0DBEF1)
function tattle_flags_17_general_guy() => bit2(0x0DBEF1)
function tattle_flags_17_anti_guy_shy_guy_toy_box() => bit7(0x0DBEF1)

// $0DBEF2: Tattle Flags 18
//          Bit0= Buzzar
//          Bit1=Tutankoopa
//          Bit2=Chomp
//          Bit3=Tubba Blubba (Windmill)
//          Bit5=Tubba's Heart
//          Bit6=Stilt Guy
//          Bit7=Shy Stack
function tattle_flags_18() => word(0x0DBEF2)
function tattle_flags_18_buzzar() => bit0(0x0DBEF2)
function tattle_flags_18_tutankoopa() => bit1(0x0DBEF2)
function tattle_flags_18_chomp() => bit2(0x0DBEF2)
function tattle_flags_18_tubba_blubba_windmill() => bit3(0x0DBEF2)
function tattle_flags_18_tubbas_heart() => bit5(0x0DBEF2)
function tattle_flags_18_stilt_guy() => bit6(0x0DBEF2)
function tattle_flags_18_shy_stack() => bit7(0x0DBEF2)

// $0DBEF3: Tattle Flags 19
//          Bit1=Bowser???
//          Bit3=G Ninjakoopa
//          Bit4=R Ninjakoopa
//          Bit5=B Ninjakoopa
//          Bit6=Y Ninjakoopa
function tattle_flags_19_bowser() => bit1(0x0DBEF3)
function tattle_flags_19_g_ninjakoopa() => bit3(0x0DBEF3)
function tattle_flags_19_r_ninjakoopa() => bit4(0x0DBEF3)
function tattle_flags_19_b_ninjakoopa() => bit5(0x0DBEF3)
function tattle_flags_19_y_ninjakoopa() => bit6(0x0DBEF3)

// $0DBEF5: Tattle Flags 20
//          Bit0=Electro Blooper
//          Bit2=Super Blooper
//          Bit4=Blooper Baby
function tattle_flags_20() => byte(0x0DBEF5)
function tattle_flags_20_electro_blooper() => bit0(0x0DBEF5)
function tattle_flags_20_super_blooper() => bit2(0x0DBEF5)
function tattle_flags_20_blooper_baby() => bit4(0x0DBEF5)

// $0DBEF6: Tattle Flags 21
//          Bit1=Bowser2
//          Bit3=Bowser3
//          Bit7=Blooper
function tattle_flags_21() => word(0x0DBEF6)
function tattle_flags_21_bowser2() => bit1(0x0DBEF6)
function tattle_flags_21_bowser3() => bit3(0x0DBEF6)
function tattle_flags_21_blooper() => bit7(0x0DBEF6)

// $0DBEF7: Tattle Flags 22
//          Bit1=Kent C. Koopa
//          Bit2=Huff N. Puff.
//          Bit3=Tuff Puff
//          Bit4=Monstar
//          Bit5=Crystal King
//          Bit7=Crystal Bit
function tattle_flags_22_kent_c_koopa() => bit1(0x0DBEF7)
function tattle_flags_22_huff_n_puff() => bit2(0x0DBEF7)
function tattle_flags_22_tuff_puff() => bit3(0x0DBEF7)
function tattle_flags_22_monstar() => bit4(0x0DBEF7)
function tattle_flags_22_crystal_king() => bit5(0x0DBEF7)
function tattle_flags_22_crystal_bit() => bit7(0x0DBEF7)

// $0DBF71: Area Flag 1 (this one is used per world)
//          (Koopa Bros Fortress)
//          Bit3= 2nd Flame Destroyed
//          Bit4= 1st Flame Destroyed
function area_flag_1() => byte(0x0DBF71)

// $0DBF72: Area Flag 2 (this one is used per world)
//          (Mt Lavalava)
//          Bit2= Flame 1 Destroyed
//          Bit3= Flame 2 Destroyed
//          Bit4= Flame 3 Destroyed
//          Bit5= Flame 4 Destroyed
//          Bit6= Flame 5 Destroyed
//          Bit7= Flame 6 Destroyed
function area_flag_2_flame_1_destroyed() => bit2(0x0DBF72)
function area_flag_2_flame_2_destroyed() => bit3(0x0DBF72)
function area_flag_2_flame_3_destroyed() => bit4(0x0DBF72)
function area_flag_2_flame_4_destroyed() => bit5(0x0DBF72)
function area_flag_2_flame_5_destroyed() => bit6(0x0DBF72)
function area_flag_2_flame_6_destroyed() => bit7(0x0DBF72)

// $0DBF76: [8bit] chet rippo flag
//          bit2 - When on, he has been activated
function chet_rippo_flag_when_on_he_has_been_activated() => bit2(0x0DBF76)

// $0DBF9A: [8bit]
//          Quiz Show answers - correct answer count for Peach
function quiz_show_answers_correct_answer_count_for_peach() => byte(0x0DBF9A)

// $0DC074: Remaining Turns (Battle)
//          Bit0=Mario won the battle!
//          Bit1=Turn used - Mario
//          Bit2=Turn used - Partner
//          Bit3=Using his turn - Mario
//          Bit4=Using his turn - Partner
function remaining_turns_mario_won_the_battle() => bit0(0x0DC074)
function remaining_turns_using_his_turn_mario() => bit3(0x0DC074)

// $0DC0E2: Battle Commands Enabled
//          bit0= Jump
//          bit1= Hammer
//          bit2= Items
//          bit6= Partner Attack
//          bit7= Strategies
function battle_commands_enabled() => byte(0x0DC0E2)

// $0DC0E3: Battle Commands Enabled
//          bit0= Star Spirits
function battle_commands_enabled_2() => byte(0x0DC0E3)

// $0DC0E8: Mario's received damage in battle
function marios_received_damage_in_battle() => byte(0x0DC0E8)

// $0DC0EB: Star Points gained in current Battle
function star_points_gained_in_current_battle() => byte(0x0DC0EB)

// $0DC10E: Water Block - Remaining Turns
function water_block_remaining_turns() => byte(0x0DC10E)

// $0DC12C: [Pointer](24-bit)
//          Current Battle Enemie's / Actor's Tabble - Start
function pointer() => tbyte(0x0DC12C)

// $0DC148: Battle - Actor Table - Start
//          Player's Actor Data Pointer
function battle_actor_table_start() => dword(0x0DC148)

// $0DC14C: Battle
//          Partner's Actor Data Pointer
//          [+214][2 Bytes] Actor Status + Status Duration
//          0x0d = Partner hurt
function battle() => dword(0x0DC14C)

// $0DC150: [Pointer](24-bit)
//          (+1BB) Actor/Enemy 1 HP
function pointer_2() => tbyte(0x0DC150)

// $0DC154: [Pointer](24-bit)
//          (+1BB) Actor/Enemy 2 HP
function pointer_3() => tbyte(0x0DC154)

// $0DC158: [Pointer](24-bit)
//          (+1BB) Actor/Enemy 3 HP
function pointer_4() => tbyte(0x0DC158)

// $0DC15C: [Pointer](24-bit)
//          (+1BB) Actor/Enemy 4 HP
//          (+1FE) Damage dealt to actor
function pointer_5() => tbyte(0x0DC15C)

// $0DC1E8: [8bit] Item used ID
//          
//          AC- coconut
//          A3 - maple syrup
//          8A - Mushroom
//          96 - mystery item
function item_used_id() => byte(0x0DC1E8)

// $0DC1EE: [Battle]
//          Last Move ID
//          
//          34 - items
function battle_2() => byte(0x0DC1EE)

// $0DC1F2: Damage Amount from the Damage Indicator shown in Battle (Is used between all Actors)
function damage_amount_from_the_damage_indicator_shown_in_battle() => byte(0x0DC1F2)

// $0DC20B: Multibonk Counter
function multibonk_counter() => byte(0x0DC20B)

// $0DC214: Battle Phase:
//          01=First Strike
//          03=Run Away Start
//          04=Run Away Reset
//          07=Run Away Fail
//          08=Use Life Shroom
//          0A=Player Begin
//          0B=Enemy End
//          0C=Enemy Begin
//          0D=Player End
function battle_phase() => bit3(0x0DC214)

// $0DC4AC: [Pointer][+38] Current Battle Timer
function pointer_current_battle_timer() => dword(0x0DC4AC)

// $0DC4E8: Battle ID (16-bit)
//          XX00=Battle Table ID
//          00XX=Battle ID
//          
//          1000 - two red shy guys (blue station shy guys toybox)
//          1001 - two blue shy guys (blue station shy guys toybox)
//          1002 - two yellow shy guys (blue station shy guys toybox)
//          1003 - three yellow shy guys
//          1004 - two pink shy guys (blue station shy guys toybox right side)
//          1005 - two green shy guys (blue station shy guys toybox)
//          1009 - yellow, green, red, blue shyguy
//          
//          1025 - two Groove guys
function battle_id() => word(0x0DC4E8)

// $0E0EE8: Mario's Flipping Mechanic (Signed Value)
function marios_flipping_mechanic() => byte(0x0E0EE8)

// $10CC5C: Item Description 16bits (from Mario UI)
function item_description_16bits() => word(0x10CC5C)

// $10CD02: This one Handle how the Item and Partners List appear?
function this_one_handle_how_the_item_and_partners_list_appear() => byte(0x10CD02)

// $10CFE8: Partner Dispatcher
//          04 = Despawn Partner
//          06 = Spawn Partner
function partner_dispatcher() => byte(0x10CFE8)

// $10D64C: Cursor Position - Lists (Items/Partners/Mail)
function cursor_position_lists() => byte(0x10D64C)

// $10EBC7: Disable Player Inputs Flag
function disable_player_inputs_flag() => byte(0x10EBC7)

// $10EF91: Stats bar at top of screen - 00 if showing, 01 if not
function stats_bar_at_top_of_screen_00_if_showing_01_if_not() => byte(0x10EF91)

// $10EF92: (idle) timer until stats bar shows
function idle_timer_until_stats_bar_shows() => byte(0x10EF92)

// $10EF98: Current XP, Does not update until you move to next screen
function current_xp_does_not_update_until_you_move_to_next_screen() => byte(0x10EF98)

// $10EF9A: Current Number of coins
function current_number_of_coins() => byte(0x10EF9A)

// $10EF9C: In Attack?
function in_attack() => byte(0x10EF9C)

// $10EFC8: NOTES FOR: 0x10efc9 (because Jr Dev)
//          Player Flags
//          bit4=Disable Player Physics
//          bit5=Disable Player Inputs (Except when using Lakilester)
function notes_for_0x10efc9() => byte(0x10EFC8)

// $10EFC9: bit5=Lock Player Inputs (Except when using Lakilester)
function lock_player_inputs() => byte(0x10EFC9)

// $10EFCC: bit4= ! Symbol Active
//          
//          The game use this bit to know when to run an entity script and other stuff (like Chests, talking to NPCs, etc)
function symbol_active() => byte(0x10EFCC)

// $10EFF0: [32-bit] Player Pos X (Float)
function player_pos_x() => float(0x10EFF0)

// $10EFF2: X Coordinates 16bits
function x_coordinates_16bits() => word(0x10EFF2)

// $10EFF4: [32-bit] Player Pos Y (Float)
function player_pos_y() => float(0x10EFF4)

// $10EFF5: Y Coordinates 16bits 1
function y_coordinates_16bits_1() => word(0x10EFF5)

// $10EFF6: Y Coordinates 16bits 2
function y_coordinates_16bits_2() => word(0x10EFF6)

// $10EFF8: [32-bit] Player Pos Z (Float)
function player_pos_z() => float(0x10EFF8)

// $10EFFA: Z Coordinates 16bits
function z_coordinates_16bits() => word(0x10EFFA)

// $10F07F: Action State
//          00 = Idle
//          01 = Walk
//          02 = Run
//          04 = Bounce
function action_state() => byte(0x10F07F)

// $10F080: Mario's Overworld Animation ID (32-bits)
//          1st Byte = Animation's Bank ID
//          2nd Byte = Animation ID
//          
//          1f - using item
//          32 - thumbs up
function marios_overworld_animation_id() => dword(0x10F080)

// $10F290: Max HP
function max_hp() => byte(0x10F290)

// $10F291: Also Current HP
function also_current_hp() => byte(0x10F291)

// $10F292: ff - No Hammer, 01 - Super Hammer, 02 - Ultra Hammer
function ff_no_hammer_01_super_hammer_02_ultra_hammer() => byte(0x10F292)

// $10F293: 01- Super Boots, 02 - Ultra Boots
function super_boots_02_ultra_boots() => byte(0x10F293)

// $10F294: Max FP (this one is used when the pause menu is closed)
function max_fp_this_one_is_used_when_the_pause_menu_is_closed() => byte(0x10F294)

// $10F295: Max FP
function max_fp() => byte(0x10F295)

// $10F296: Also current FP
function also_current_fp() => byte(0x10F296)

// $10F297: Max HP  (this one is used when the pause menu is closed)
function max_hp_this_one_is_used_when_the_pause_menu_is_closed() => byte(0x10F297)

// $10F299: Action Commands 00/01 8bits
function action_commands_00_01_8bits() => byte(0x10F299)

// $10F29A: Mario's Level
function marios_level() => byte(0x10F29A)

// $10F29B: Total Badge Points
function total_badge_points() => byte(0x10F29B)

// $10F29C: Current Star Pieces
function current_star_pieces() => byte(0x10F29C)

// $10F29E: Mario's Coins (16-bit)
function marios_coins() => word(0x10F29E)

// $10F2A1: Current Partner
//          
//          0x00 - no partner
//          0x01 - Goombario
//          0x02 - Kooper
//          0x03 - Bombette
//          0x04 - Parakarry
//          0x05 - Goompa
//          0x06 - Watt
//          0x07 - Sushie
//          0x08 - Lakilester
//          0x09 - Bow
function current_partner() => byte(0x10F2A1)

// $10F2A3: Current Star Points
function current_star_points() => byte(0x10F2A3)

// $10F2AE: Goombario Upgrade level
function goombario_upgrade_level() => byte(0x10F2AE)
function goombario_upgrade_level_bit1() => bit1(0x10F2AE)

// $10F2AF: Goombario
function goombario() => byte(0x10F2AF)

// $10F2B6: Kooper upgrade level
function kooper_upgrade_level() => byte(0x10F2B6)
function kooper_upgrade_level_bit1() => bit1(0x10F2B6)

// $10F2B7: Kooper
function kooper() => byte(0x10F2B7)

// $10F2BE: Bombette Upgrade level
function bombette_upgrade_level() => byte(0x10F2BE)
function bombette_upgrade_level_bit1() => bit1(0x10F2BE)

// $10F2BF: Bombette
function bombette() => byte(0x10F2BF)

// $10F2C6: Parrakarry upgrade level
function parrakarry_upgrade_level() => byte(0x10F2C6)
function parrakarry_upgrade_level_bit1() => bit1(0x10F2C6)

// $10F2C7: Parakarry
function parakarry() => byte(0x10F2C7)

// $10F2D6: Watt upgrade level
function watt_upgrade_level() => byte(0x10F2D6)
function watt_upgrade_level_bit1() => bit1(0x10F2D6)

// $10F2D7: Watt
function watt() => byte(0x10F2D7)

// $10F2DE: Upgrade level
function upgrade_level() => byte(0x10F2DE)
function upgrade_level_bit1() => bit1(0x10F2DE)

// $10F2DF: Sushie
function sushie() => byte(0x10F2DF)

// $10F2E6: Lakilester Upgrade level
function lakilester_upgrade_level() => byte(0x10F2E6)
function lakilester_upgrade_level_bit1() => bit1(0x10F2E6)

// $10F2E7: Lakilester
function lakilester() => byte(0x10F2E7)

// $10F2EE: Bow Upgrade level
function bow_upgrade_level() => byte(0x10F2EE)
function bow_upgrade_level_bit1() => bit1(0x10F2EE)

// $10F2EF: Bow
function bow() => byte(0x10F2EF)

// $10F304: Key item slots start
function key_item_slots_start() => byte(0x10F304)

// $10F344: Badges Start here (16bit)? They are messed up....
//          - This is the 16-bit address for the 2nd badge
//          - The badge order for this series of 16-bit addresses is: 2nd, 1st, 4th, 3rd ... 78th, 77th, 80th, 79th
function badges_start_here_they_are_messed_up() => word(0x10F344)

// $10F346: ID for First Badge Found (16-bit)
function id_for_first_badge_found() => word(0x10F346)

// $10F350: Something here screws with Badges (or badge menu).....
function something_here_screws_with_badges_or_badge_menu() => byte(0x10F350)

// $10F351: HP Plus Badge?
function hp_plus_badge() => byte(0x10F351)

// $10F354: 10th Badge Slot
function _10th_badge_slot() => byte(0x10F354)

// $10F368: 20th Badge Slot
function _20th_badge_slot() => word(0x10F368)

// $10F37C: 30th Badge Slot
function _30th_badge_slot() => byte(0x10F37C)

// $10F390: 40th Badge Slot
function _40th_badge_slot() => word(0x10F390)

// $10F3A4: 50th Badge Slot
function _50th_badge_slot() => byte(0x10F3A4)

// $10F3B8: 60th Badge Slot
function _60th_badge_slot() => word(0x10F3B8)

// $10F3CC: 70th Badge Slot
function _70th_badge_slot() => byte(0x10F3CC)

// $10F3E0: 80th Badge Slot
function _80th_badge_slot() => word(0x10F3E0)

// $10F444: Item slots [most recently gotten item]
function item_slots() => byte(0x10F444)
function item_slots_word() => word(0x10F444)

// $10F446: 16bit
//          item slot 2
function _16bit() => word(0x10F446)
function _16bit_byte() => byte(0x10F446)

// $10F448: 16bit
//          item slot 3
function _16bit_2() => word(0x10F448)
function _16bit_2_byte() => byte(0x10F448)

// $10F44A: 16bit
//          item slot 4
function _16bit_3() => word(0x10F44A)
function _16bit_3_byte() => byte(0x10F44A)

// $10F44C: 16bit
//          item slot 5
function _16bit_4() => word(0x10F44C)
function _16bit_4_byte() => byte(0x10F44C)

// $10F44E: 16bit
//          item slot 6
function _16bit_5() => word(0x10F44E)
function _16bit_5_byte() => byte(0x10F44E)

// $10F450: 16bit
//          item slot 7
function _16bit_6() => word(0x10F450)
function _16bit_6_byte() => byte(0x10F450)

// $10F452: 16bit
//          item slot 8
function _16bit_7() => word(0x10F452)
function _16bit_7_byte() => byte(0x10F452)

// $10F454: 16bit
//          item slot 9
function _16bit_8() => word(0x10F454)
function _16bit_8_byte() => byte(0x10F454)

// $10F456: 16bit
//          item slot 10
function _16bit_9() => word(0x10F456)
function _16bit_9_byte() => byte(0x10F456)

// $10F45A: Items Checked Slot 1
function items_checked_slot_1() => byte(0x10F45A)

// $10F494: Items Checked Slot 32
function items_checked_slot_32() => byte(0x10F494)

// $10F498: Activated Badge ID 2 (16-bit)
function activated_badge_id_2() => word(0x10F498)

// $10F49A: Activated Badge ID 1 (16-bit)
function activated_badge_id_1() => word(0x10F49A)

// $10F514: Activated Badge ID 64 (16-bit)
function activated_badge_id_64() => word(0x10F514)

// $10F519: Current Merlee Spell 8bit
//          14 = Special
//          0a = Ordinary
//          05 = Petit
function current_merlee_spell_8bit() => byte(0x10F519)

// $10F51A: Merlee spells remaining
function merlee_spells_remaining() => byte(0x10F51A)

// $10F51D: Star Spirits
function star_spirits() => byte(0x10F51D)
function star_spirits_low4() => low4(0x10F51D)

SpiritLookup = {
    0: "No",
    1: "1",
    2: "2",
    3: "3",
    4: "4",
    5: "5",
    6: "6",
    7: "7",
}

// $10F51E: Merlee turn counter for next spell
function merlee_turn_counter_for_next_spell() => byte(0x10F51E)

// $10F522: Star Power Meter (Goes up by 20 each turn)
function star_power_meter_goes_up_by_20_each_turn() => byte(0x10F522)

// $10F523: Star Power Meter
function star_power_meter() => byte(0x10F523)

// $10F526: Related to Multibonks?
function related_to_multibonks() => byte(0x10F526)

// $10F52C: Number of Enemies' First Strikes
function number_of_enemies_first_strikes() => byte(0x10F52C)

// $10F52E: Number of First Strikes
function number_of_first_strikes() => byte(0x10F52E)

// $10F530: Number of Battles
function number_of_battles() => byte(0x10F530)
function number_of_battles_word() => word(0x10F530)

// $10F532: Total Power Bounces
function total_power_bounces() => byte(0x10F532)

// $10F544: Total Coins Earned through the course of the game
function total_coins_earned_through_the_course_of_the_game() => word(0x10F544)

// $10F54C: Play Time / Game Timer (32-bit)
function play_time_game_timer() => dword(0x10F54C)

// $10F550: Chuck Quizmo completion addresses [40]
function chuck_quizmo_completion_addresses() => byte(0x10F550)

// $10F552: Chuck Quizmo Quiz attempts
function chuck_quizmo_quiz_attempts() => byte(0x10F552)

// $10F5BE: Total Star Pieces collected
function total_star_pieces_collected() => byte(0x10F5BE)

// $10F5C0: Jump Attack Total Coins Won 16bits
function jump_attack_total_coins_won_16bits() => byte(0x10F5C0)

// $10F5C6: Jump Attack Highest amount won in a single game 16bits
function jump_attack_highest_amount_won_in_a_single_game_16bits() => byte(0x10F5C6)

// $10F5C8: Smash Attack Total Coins Won 16bits
function smash_attack_total_coins_won_16bits() => word(0x10F5C8)
function smash_attack_total_coins_won_16bits_byte() => byte(0x10F5C8)

// $10F5CE: Smash Attack Highest amount won in a single game 16bits
function smash_attack_highest_amount_won_in_a_single_game_16bits() => byte(0x10F5CE)

// $1105E8: Entities Related?
function entities_related() => byte(0x1105E8)

// $151380: Entities' pointers list for current Map
function entities_pointers_list_for_current_map() => byte(0x151380)

// $151568: Mirror Pointer from 0xdc154 - 1 (+2CB Offset)
function mirror_pointer_from_0xdc154_1() => dword(0x151568)

// $153F70: Mirror Pointer from 0xdc154 - 2 (+23B Offset)
function mirror_pointer_from_0xdc154_2() => dword(0x153F70)

// $154C36: Dialogue?
function dialogue() => byte(0x154C36)

// $154C38: NPC Dialogue ID (you can't freeze this value)
function npc_dialogue_id() => byte(0x154C38)
function npc_dialogue_id_word() => word(0x154C38)

// $154C3A: NPC Group ID (you can't freeze this value)
function npc_group_id() => byte(0x154C3A)

// $154C3E: Also Dialogue?
function also_dialogue() => byte(0x154C3E)

// $155144: [32-bits] Dialog's Box Size
//          [1][16-bit] XSize
//          [2][16-bit] YSize
function dialogs_box_size() => dword(0x155144)

// $155677: Cursor Position (Only from Dialog Options)
function cursor_position() => byte(0x155677)

// $156900: [Signed byte] Screen Brightness Lock
//          False (0xFF) = Brightness can't be modified
//          True  (0x00) = Brightness can be modified
function signed_byte_screen_brightness_lock() => byte(0x156900)

// $156904: [32-bit Float] Screen Brightness
//          Equal or below to 5 = Max brightness
//          255 = Lowest brightness
//          (remember the values need to be as float)
function screen_brightness() => float(0x156904)

// $159B00: Music ID
//          00 - toad town
//          02 - battle theme
//          41 - chapter select / 8bit mario theme
function music_id() => byte(0x159B00)
function music_id_word() => word(0x159B00)

// $1757F8: hearts out to be able to be picked up?
function hearts_out_to_be_able_to_be_picked_up() => word(0x1757F8)

// $1C8C91: Use for Gooma King without using Goomnut
function use_for_gooma_king_without_using_goomnut() => byte(0x1C8C91)

// $1D6AAF: Sound (Stereo/Mono)
function sound() => byte(0x1D6AAF)

// $1D7188: Music Address?
function music_address() => byte(0x1D7188)

// $1D9610: Sound ID 4
function sound_id_4() => byte(0x1D9610)

// $1D96BC: Sound ID 2 (this is mostly used when ID 1 is busy)
function sound_id_2() => word(0x1D96BC)

// $1D9768: Sound ID 3 (This is used in very strange cases)
function sound_id_3() => word(0x1D9768)

// $1D9814: Sound ID 16bits (you can't freeze this value)
//          d3= New Badge
//          1c2= Door closing
//          200e= Bow disappearing
//          295= Lakilester Cloud
function sound_id_16bits() => word(0x1D9814)

// $1DA0E8: 01 when "Greenblue Candy Cane" guy is spinning and music plays?
function when_greenblue_candy_cane_guy_is_spinning_and_music_plays() => byte(0x1DA0E8)

// $24A098: [Main Menu]
//          Save File to Load
function main_menu() => byte(0x24A098)

// $24F316: Pause Menu - Current Tab
function pause_menu_current_tab() => byte(0x24F316)

// $2700C8: Pause Menu - Cursor Position ID
function pause_menu_cursor_position_id() => byte(0x2700C8)

// $2700D7: Pause Menu - Current Tab Opened
//          00=The cursor is currently in the tabs row
function pause_menu_current_tab_opened() => byte(0x2700D7)

// $270398: Pause Menu - Badges Tab - Current List
//          00=Outside the Badges List
//          01=Inside the Badges List
function pause_menu_badges_tab_current_list() => byte(0x270398)

// $27039C: Pause Menu - Badges Tab - Current List
//          00=All Badges
//          01=Active Badges
function pause_menu_badges_tab_current_list_2() => byte(0x27039C)

// $29FC27: Attack Gauge in Battle
//          29= Full
function attack_gauge_in_battle() => byte(0x29FC27)

// $2A4020: Current Power Bounce Streak?
function current_power_bounce_streak() => byte(0x2A4020)

// $2AD068: Current Char?
function current_char() => byte(0x2AD068)

// $2AD0AC: Battle Menu Number of Slots availables
//          02= Partner
//          05= Mario
function battle_menu_number_of_slots_availables() => byte(0x2AD0AC)

// $2AD10A: Hand Horizontal Cursor at Battle
//          00= Option 1
//          01= Option 2
function hand_horizontal_cursor_at_battle() => byte(0x2AD10A)

// $2AD10B: Battle Hand/Cursor Vertical
//          0b= Cursor in battle
function battle_hand_cursor_vertical() => byte(0x2AD10B)

// $2BFF14: Lakilester state ID
//          01 = Ridding Cloud
//          03 = Unmount Cloud
function lakilester_state_id() => byte(0x2BFF14)

// $2DA898: what
function what() => byte(0x2DA898)

// $2DB298: Of note:  Troyce T. Item "Offer" state?
function of_note_troyce_t_item_offer_state() => byte(0x2DB298)

// $2DB29A: Of note:  Goes to one when recieving Koopa Tea from Troyce T.
function of_note_goes_to_one_when_recieving_koopa_tea_from_troyce_t() => byte(0x2DB29A)

// $2DBC70: what 2
function what_2() => byte(0x2DBC70)

// $2DF588: [Pointer]
//          [+28] Mario's Sprite - Component 1 - Palette (Overworld)
//          [+2C] Mario's Sprite Palette (Battle)
//          [+78] Mario's Sprite - Component 2 - Palette (Overworld)
function pointer_6() => dword(0x2DF588)

// $2DF58C: Mario's Battle Animation ID (32-bits)
function marios_battle_animation_id() => dword(0x2DF58C)
function marios_battle_animation_id_byte() => byte(0x2DF58C)

// $2DFA48: Partner Currently out
function partner_currently_out() => word(0x2DFA48)

PartnerLookup = {
    0x00: "no partner",
    0x01: "Goombario",
    0x02: "Kooper",
    0x03: "Bombette",
    0x04: "Parakarry",
    0x05: "Goompa",
    0x06: "Watt",
    0x07: "Sushie",
    0x08: "Lakilester",
    0x09: "Bow",
}

// $30E8D9: pointer enemy status thingy
function pointer_enemy_status_thingy() => byte(0x30E8D9)

// $315604: "The End" Address
function the_end_address() => byte(0x315604)

// $316F5C: potential status nonsense
function potential_status_nonsense() => byte(0x316F5C)

// $324BB8: Shop Current Item Description and Name 16bits
function shop_current_item_description_and_name_16bits() => word(0x324BB8)

// $3E744E: Hand Cursor Battle 2 enemies cc= left f6= right
function hand_cursor_battle_2_enemies_cc_left_f6_right() => byte(0x3E744E)

achievement(
    title = "Capped Companion", points = 5, type="progression",
    description = "Have Goombario join your party",
    id = 49518, badge = "86074", published = "2017-06-11 1:28:32 AM", modified = "2025-05-13 1:56:14 PM",
    trigger = goombario() == 1 && bombette() != 1 && sushie() != 1 && bow() != 1 && kooper() != 1 && parakarry() != 1 &&
              watt() != 1 && lakilester() != 1 && once(music_id_word() == 130)
)

achievement(
    title = "Turtle Torpedo", points = 5, type="progression",
    description = "Have Kooper join your party",
    id = 49519, badge = "86075", published = "2017-06-11 1:28:36 AM", modified = "2025-05-13 1:56:14 PM",
    trigger = kooper() == 1 && goombario() == 1 && bombette() != 1 && sushie() != 1 && bow() != 1 && parakarry() != 1 &&
              watt() != 1 && lakilester() != 1 && music_id_word() == 130
)

achievement(
    title = "A Blast With My Gal", points = 5, type="progression",
    description = "Have Bombette join the party",
    id = 49520, badge = "86076", published = "2017-06-11 1:28:38 AM", modified = "2025-11-27 2:48:12 AM",
    trigger = area_world_id() == 7 && byte(0x0A094A) == 1 && prev(bombette()) == 0 && bombette() == 1
)

achievement(
    title = "Turtle Mail", points = 5, type="progression",
    description = "Have Parakarry join the party",
    id = 49521, badge = "86077", published = "2017-06-11 1:28:40 AM", modified = "2019-08-07 6:46:13 AM",
    trigger = parakarry() == 1 && goombario() == 1 && bombette() == 1 && kooper() == 1 && watt() != 1 &&
              lakilester() != 1 && bow() != 1 && sushie() != 1 && music_id_word() == 130
)

achievement(
    title = "Her Royal Frightfulness", points = 5, type="progression",
    description = "Have Bow join the party",
    id = 49522, badge = "86078", published = "2017-06-11 1:28:43 AM", modified = "2025-05-13 1:56:15 PM",
    trigger = bow() == 1 && goombario() == 1 && bombette() == 1 && kooper() == 1 && parakarry() == 1 && watt() != 1 &&
              lakilester() != 1 && sushie() != 1 && music_id_word() == 130
)

achievement(
    title = "My Sweet Little Night Light", points = 5, type="progression",
    description = "Have Watt join the party",
    id = 49523, badge = "86079", published = "2017-06-11 1:28:45 AM", modified = "2025-05-13 1:56:15 PM",
    trigger = watt() == 1 && goombario() == 1 && kooper() == 1 && bombette() == 1 && parakarry() == 1 && bow() == 1 &&
              sushie() != 1 && lakilester() != 1 && music_id_word() == 130
)

achievement(
    title = "Fishie Friend", points = 5, type="progression",
    description = "Have Sushie join the party",
    id = 49524, badge = "86080", published = "2017-06-11 1:28:47 AM", modified = "2025-05-13 1:56:15 PM",
    trigger = sushie() == 1 && goombario() == 1 && bombette() == 1 && bow() == 1 && kooper() == 1 && parakarry() == 1 &&
              watt() == 1 && lakilester() != 1 && music_id_word() == 130
)

achievement(
    title = "Lakitu With a 'Tude", points = 5, type="progression",
    description = "Have Lakilester join the party",
    id = 49525, badge = "86081", published = "2017-06-11 1:28:49 AM", modified = "2025-05-13 1:56:15 PM",
    trigger = lakilester() == 1 && goombario() == 1 && bombette() == 1 && sushie() == 1 && bow() == 1 && kooper() == 1 &&
              parakarry() == 1 && watt() == 1 && music_id_word() == 130
)

achievement(
    title = "Goomtastic", points = 5,
    description = "Fully upgrade Goombario",
    id = 49526, badge = "86082", published = "2017-06-11 1:28:51 AM", modified = "2025-05-13 1:56:16 PM",
    trigger = goombario_upgrade_level() == 2 && prev(goombario_upgrade_level()) == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "Shell Yeah!", points = 5,
    description = "Fully upgrade Kooper",
    id = 49527, badge = "86083", published = "2017-06-11 1:28:53 AM", modified = "2025-05-13 1:56:16 PM",
    trigger = kooper_upgrade_level() == 2 && prev(kooper_upgrade_level()) == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "Explosive Personality", points = 5,
    description = "Fully upgrade Bombette",
    id = 49528, badge = "86084", published = "2017-06-11 1:28:55 AM", modified = "2025-05-13 1:56:16 PM",
    trigger = bombette_upgrade_level() == 2 && prev(bombette_upgrade_level()) == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "First-Class", points = 5,
    description = "Fully upgrade Parakarry",
    id = 49529, badge = "86085", published = "2017-06-11 1:28:56 AM", modified = "2025-05-13 1:56:16 PM",
    trigger = parrakarry_upgrade_level() == 2 && prev(parrakarry_upgrade_level()) == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "Mistress of the Night", points = 5,
    description = "Fully upgrade Bow",
    id = 49530, badge = "86086", published = "2017-06-11 1:28:59 AM", modified = "2025-05-13 1:56:17 PM",
    trigger = bow_upgrade_level() == 2 && prev(bow_upgrade_level()) == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "Power Surge", points = 5,
    description = "Fully upgrade Watt",
    id = 49531, badge = "86087", published = "2017-06-11 1:29:01 AM", modified = "2025-05-13 1:56:17 PM",
    trigger = watt_upgrade_level() == 2 && prev(watt_upgrade_level()) == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "Hooked on Sushie", points = 5,
    description = "Fully upgrade Sushie",
    id = 49532, badge = "86088", published = "2017-06-11 1:29:02 AM", modified = "2025-05-13 1:56:17 PM",
    trigger = upgrade_level() == 2 && prev(upgrade_level()) == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "You're Cool in My Book", points = 5,
    description = "Fully upgrade Lakilester",
    id = 49533, badge = "86089", published = "2017-06-11 1:29:05 AM", modified = "2025-05-13 1:56:17 PM",
    trigger = lakilester_upgrade_level() == 2 && prev(lakilester_upgrade_level()) == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "To The Max!", points = 25,
    description = "Power up all of your party members to their max level",
    id = 49534, badge = "86090", published = "2017-06-11 1:29:08 AM", modified = "2025-05-13 1:56:18 PM",
    trigger = byte(0x0A094A) == 1 &&
              (prev(kooper_upgrade_level_bit1()) + prev(parrakarry_upgrade_level_bit1()) +
              prev(watt_upgrade_level_bit1()) + prev(lakilester_upgrade_level_bit1()) +
              prev(goombario_upgrade_level_bit1()) + prev(bombette_upgrade_level_bit1()) + prev(upgrade_level_bit1()) +
              prev(bow_upgrade_level_bit1())) == 7 &&
              measured((kooper_upgrade_level_bit1() + parrakarry_upgrade_level_bit1() + watt_upgrade_level_bit1() +
                  lakilester_upgrade_level_bit1() + goombario_upgrade_level_bit1() + bombette_upgrade_level_bit1() +
                  upgrade_level_bit1() + bow_upgrade_level_bit1()) == 8
              )
)

achievement(
    title = "Flower Power", points = 10,
    description = "Max out your FP (Including Badges)",
    id = 49535, badge = "86094", published = "2017-06-11 1:29:30 AM", modified = "2025-05-13 1:56:18 PM",
    trigger = byte(0x0A094A) == 1 && prev(max_fp()) < 65 && max_fp() == 65 && music_id() != 105
)

achievement(
    title = "Heartful", points = 10,
    description = "Max out your HP (Including Badges)",
    id = 49536, badge = "86092", published = "2017-06-11 1:29:32 AM", modified = "2025-05-13 1:56:18 PM",
    trigger = byte(0x0A094A) == 1 && prev(max_hp()) < 65 && max_hp() == 65 && music_id() != 105
)

achievement(
    title = "Badges of Honor", points = 10,
    description = "Max out your Badge Points",
    id = 49537, badge = "86093", published = "2017-06-11 1:30:28 AM", modified = "2025-05-13 1:56:19 PM",
    trigger = byte(0x0A094A) != 0 && music_id() != 105 &&
              ((total_badge_points() == 30 && prev(total_badge_points()) == 27) ||
               (total_badge_points() == 30 && prev(total_badge_points()) == 24))
)

achievement(
    title = "Maxxed Out Mario", points = 25,
    description = "Level Mario to his max level",
    id = 49538, badge = "86095", published = "2017-06-11 1:30:38 AM", modified = "2025-05-13 1:56:19 PM",
    trigger = marios_level() == 27 && prev(marios_level()) == 26 && byte(0x0A094A) != 0 && music_id() != 105
)

achievement(
    title = "Age Old Wisdom", points = 5, type="progression",
    description = "Free Eldstar from the captivity of the Koopa Bros. and gain his power",
    id = 49539, badge = "86096", published = "2017-06-11 1:30:44 AM", modified = "2025-05-13 1:56:20 PM",
    trigger = star_spirits() == 1 && prev(star_spirits()) == 0 && byte(0x0A094A) == 1
)

achievement(
    title = "Motherly Instincts", points = 5, type="progression",
    description = "Free Mamar from the captivity of Tutankoopa and gain her power",
    id = 49540, badge = "86097", published = "2017-06-11 1:30:46 AM", modified = "2025-05-13 1:56:20 PM",
    trigger = star_spirits() == 2 && prev(star_spirits()) == 1 && byte(0x0A094A) == 1
)

achievement(
    title = "The Life of a Scholar", points = 5, type="progression",
    description = "Free Skolar from the captivity of Tubba Blubba and his Boos and gain his power",
    id = 49541, badge = "86098", published = "2017-06-11 1:30:48 AM", modified = "2024-06-26 5:55:11 PM",
    trigger = star_spirits() == 3 && prev(star_spirits()) == 2 && byte(0x0A094A) == 1
)

achievement(
    title = "Time to Chill", points = 5, type="progression",
    description = "Free Muskular from the captivity of General Guy and gain his power",
    id = 49542, badge = "86099", published = "2017-06-11 1:30:50 AM", modified = "2024-06-26 5:55:11 PM",
    trigger = star_spirits() == 4 && prev(star_spirits()) == 3 && byte(0x0A094A) == 1
)

achievement(
    title = "Little Miss Star", points = 5, type="progression",
    description = "Free Misstar from the captivity of the Lava Piranha and gain her power",
    id = 49543, badge = "86100", published = "2017-06-11 1:30:53 AM", modified = "2024-06-26 5:55:12 PM",
    trigger = star_spirits() == 5 && prev(star_spirits()) == 4 && byte(0x0A094A) == 1
)

achievement(
    title = "The Book Worm", points = 5, type="progression",
    description = "Free Klevar from the captivity of Huff N. Puff and gain his power",
    id = 49544, badge = "86101", published = "2017-06-11 1:30:55 AM", modified = "2024-06-26 5:55:12 PM",
    trigger = star_spirits() == 6 && prev(star_spirits()) == 5 && byte(0x0A094A) == 1
)

achievement(
    title = "Stay Calm", points = 5, type="progression",
    description = "Free Kalmar from the captivity of the Crystal King and gain his power",
    id = 49545, badge = "86102", published = "2017-06-11 1:31:00 AM", modified = "2024-06-26 5:55:12 PM",
    trigger = star_spirits() == 7 && prev(star_spirits()) == 6 && byte(0x0A094A) == 1
)

achievement(
    title = "Hammer Bro", points = 5,
    description = "Get the Hammer",
    id = 49548, badge = "86105", published = "2017-06-11 1:48:02 AM", modified = "2019-08-07 6:47:16 AM",
    trigger = ff_no_hammer_01_super_hammer_02_ultra_hammer() == 0 &&
              prev(ff_no_hammer_01_super_hammer_02_ultra_hammer()) == 255 && music_id_word() != 106 &&
              byte(0x0A094A) != 0
)

achievement(
    title = "Super Hammer Bro ", points = 5,
    description = "Get the Super Hammer",
    id = 49549, badge = "86106", published = "2017-06-11 1:48:08 AM", modified = "2019-08-07 6:47:19 AM",
    trigger = ff_no_hammer_01_super_hammer_02_ultra_hammer() == 1 &&
              prev(ff_no_hammer_01_super_hammer_02_ultra_hammer()) == 0 && byte(0x0A094A) != 0
)

achievement(
    title = "Ultra Hammer Bro", points = 5,
    description = "Get the Ultra Hammer",
    id = 49550, badge = "86107", published = "2017-06-11 1:48:11 AM", modified = "2019-10-22 4:37:02 PM",
    trigger = ff_no_hammer_01_super_hammer_02_ultra_hammer() == 2 &&
              prev(ff_no_hammer_01_super_hammer_02_ultra_hammer()) == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "Super Jumpman Mario", points = 5,
    description = "Get the Super Boots",
    id = 49551, badge = "86108", published = "2017-06-11 1:48:13 AM", modified = "2025-05-13 1:56:20 PM",
    trigger = super_boots_02_ultra_boots() == 1 && prev(super_boots_02_ultra_boots()) == 0 && byte(0x0A094A) != 0
)

achievement(
    title = "Ultra Jumpman Mario", points = 5,
    description = "Get the Ultra Boots",
    id = 49552, badge = "86109", published = "2017-06-11 1:48:15 AM", modified = "2025-05-13 1:56:20 PM",
    trigger = super_boots_02_ultra_boots() == 2 && prev(super_boots_02_ultra_boots()) == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "Pop Quiz", points = 1,
    description = "Answer your first Chuck Quizmo question",
    id = 49578, badge = "86112", published = "2017-06-12 4:46:23 AM", modified = "2024-12-26 6:54:22 PM",
    trigger = chuck_quizmo_quiz_attempts() >= 1 && chuck_quizmo_completion_addresses() == 1 &&
              prev(chuck_quizmo_completion_addresses()) == 0 && byte(0x0A094A) != 0 &&
              (music_id() != 105 && music_id() != 106)
)

achievement(
    title = "Quiz Master", points = 25,
    description = "Answer all 64 of Chuck Quizmo questions",
    id = 49579, badge = "86114", published = "2017-06-12 4:46:25 AM", modified = "2019-10-22 4:37:02 PM",
    trigger = chuck_quizmo_completion_addresses() == 64 && prev(chuck_quizmo_completion_addresses()) == 63 &&
              byte(0x0A094A) != 0
)

achievement(
    title = "Star Piece Finder", points = 25,
    description = "Collect 80 star pieces",
    id = 49580, badge = "86115", published = "2017-06-12 4:46:27 AM", modified = "2025-05-13 1:56:21 PM",
    trigger = prev(total_star_pieces_collected()) < 80 && total_star_pieces_collected() >= 80 && byte(0x0A094A) == 1 &&
              music_id() != 105
)

achievement(
    title = "Star Man", points = 50,
    description = "Collect all 160 Star Pieces",
    id = 49581, badge = "86116", published = "2017-06-12 4:46:28 AM", modified = "2024-07-01 12:56:01 PM",
    trigger = byte(0x0A094A) == 1 && prev(total_star_pieces_collected()) < 160 && total_star_pieces_collected() >= 160 &&
              music_id() != 105
)

achievement(
    title = "Boy Scout", points = 1,
    description = "Get your first badge",
    id = 49609, badge = "86120", published = "2017-06-15 2:07:52 AM", modified = "2023-03-14 3:28:09 AM",
    trigger = area_world_id_word() == 0 && map_id() == 1 && byte(0x0A094A) == 1 && prev(id_for_first_badge_found()) == 0 &&
              id_for_first_badge_found() == 289
)

achievement(
    title = "First Class Scout", points = 5,
    description = "Obtain 20 Badges",
    id = 49610, badge = "86121", published = "2017-06-15 2:08:03 AM", modified = "2024-07-01 12:56:02 PM",
    trigger = byte(0x0A094A) == 1 && prev(_20th_badge_slot()) == 0 && _20th_badge_slot() != 0 && music_id() != 105
)

achievement(
    title = "Star Scout", points = 10,
    description = "Obtain 40 Badges",
    id = 49611, badge = "86122", published = "2017-06-15 2:08:09 AM", modified = "2024-07-01 12:56:02 PM",
    trigger = byte(0x0A094A) == 1 && prev(_40th_badge_slot()) == 0 && _40th_badge_slot() != 0 && music_id() != 105
)

achievement(
    title = "Life Scout", points = 10,
    description = "Obtain 60 Badges",
    id = 49612, badge = "86123", published = "2017-06-15 2:08:12 AM", modified = "2024-07-01 12:56:02 PM",
    trigger = byte(0x0A094A) == 1 && prev(_60th_badge_slot()) == 0 && _60th_badge_slot() != 0 && music_id() != 105
)

achievement(
    title = "Eagle Scout", points = 25, type="missable",
    description = "Obtain all 80 badges in the game",
    id = 49613, badge = "86124", published = "2017-06-15 2:08:14 AM", modified = "2024-07-01 12:56:03 PM",
    trigger = byte(0x0A094A) == 1 && prev(_80th_badge_slot()) == 0 && _80th_badge_slot() != 0 && music_id() != 105
)

achievement(
    title = "Goomnutless", points = 10, type="missable",
    description = "Defeat the Goomba King without the use of the Goomnut",
    id = 49617, badge = "513627", published = "2017-06-15 6:21:11 AM", modified = "2021-02-05 1:55:20 AM",
    trigger = once(npc_dialogue_id_word() == 203) && once(npc_dialogue_id_word() == 204) &&
              once(npc_dialogue_id_word() == 205) && once(npc_dialogue_id_word() == 206) && once(music_id_word() == 7) &&
              never(music_id_word() == 2) && byte(0x3E20DD) == 110 && once(music_id() == 126) &&
              ((music_id_word() == 142) ||
               (music_id_word() == 139))
)

achievement(
    title = "Buzz Off!", points = 10,
    description = "Defeat Buzzar",
    id = 49615, badge = "513628", published = "2017-06-15 3:04:32 AM", modified = "2025-05-02 2:19:25 PM",
    trigger = event_id() == 1 && prev(remaining_turns_mario_won_the_battle()) == 0 &&
              remaining_turns_mario_won_the_battle() == 1 && battle_id() == 2316
)

achievement(
    title = "P.O.W-erless", points = 10, type="missable",
    description = "Defeat the Koopa Bros. without using any items",
    id = 321735, badge = "513629", published = "2023-05-26 6:12:20 PM", modified = "2023-05-28 5:34:24 PM",
    trigger = area_world_id_word() == 7 && unless(battle_id() != 1792) &&
              disable_when(item_slots_word() != prev(item_slots_word())) && disable_when(_16bit() != prev(_16bit())) &&
              disable_when(_16bit_2() != prev(_16bit_2())) && disable_when(_16bit_3() != prev(_16bit_3())) &&
              disable_when(_16bit_4() != prev(_16bit_4())) && disable_when(_16bit_5() != prev(_16bit_5())) &&
              disable_when(_16bit_6() != prev(_16bit_6())) && disable_when(_16bit_7() != prev(_16bit_7())) &&
              disable_when(_16bit_8() != prev(_16bit_8())) && disable_when(_16bit_9() != prev(_16bit_9())) &&
              trigger_when(prev(remaining_turns_mario_won_the_battle()) == 0) &&
              trigger_when(remaining_turns_mario_won_the_battle() == 1) &&
              (always_false() || (never(music_id() == 255)))
)

achievement(
    title = "Bury the Dead", points = 5, type="missable",
    description = "Defeat Tutankoopa by harming him only with items",
    id = 321736, badge = "513630", published = "2023-05-26 6:12:21 PM", modified = "2025-05-13 1:56:21 PM",
    trigger = area_world_id_word() == 11 && unless(battle_id() != 3072) &&
              unless(marios_battle_animation_id() == 4294967295) &&
              disable_when(battle_2() != 52 && byte(pointer_2() + 0x1BB) < prev(byte(pointer_2() + 0x1BB))) &&
              trigger_when(prev(remaining_turns_mario_won_the_battle()) == 0) &&
              trigger_when(remaining_turns_mario_won_the_battle() == 1) &&
              (always_false() || (never(music_id() == 255)))
)

achievement(
    title = "Sheer Heart Attack", points = 10, type="missable",
    description = "Defeat Tubba Blubba's Heart in 4 turns or less",
    id = 321762, badge = "513631", published = "2023-05-26 7:41:11 PM", modified = "2023-05-31 9:32:02 PM",
    trigger = area_world_id() == 14 && unless(battle_id() != 3599) &&
              disable_when(repeated(10, prev(battle_phase()) == 0 && battle_phase() == 1)) &&
              trigger_when(byte(pointer_2() + 0x1BB) <= 5) &&
              (always_false() || (never(music_id() == 255)))
)

achievement(
    title = "General Guy's Bright Idea", points = 10, type="missable",
    description = "Defeat General Guy without damaging his Light Bulb",
    id = 321755, badge = "513632", published = "2023-05-26 6:44:17 PM", modified = "2024-12-14 3:24:10 PM",
    trigger = unless(battle_id() != 4352) && disable_when(byte(pointer_4() + 0x1BB) < 8) &&
              trigger_when(prev(remaining_turns_mario_won_the_battle()) == 0) &&
              trigger_when(remaining_turns_mario_won_the_battle() == 1) &&
              (always_false() || (never(area_world_id() != 16) && never(music_id() == 255)))
)

achievement(
    title = "Hot Footed Hero", points = 10, type="missable",
    description = "Defeat Lava Piranha without using Sushie, the Snowman Doll, or the Fire Shield Badge",
    id = 321763, badge = "513633", published = "2023-05-26 7:49:25 PM", modified = "2023-06-30 1:09:52 PM",
    trigger = area_world_id() == 18 && unless(battle_id() != 5888) && unless(activated_badge_id_2() == 236) &&
              unless(activated_badge_id_1() == 236) && unless(word(0x10F49C) == 236) && unless(word(0x10F49E) == 236) &&
              unless(word(0x10F4A0) == 236) && unless(word(0x10F4A2) == 236) && unless(word(0x10F4A4) == 236) &&
              unless(word(0x10F4A6) == 236) && unless(word(0x10F4A8) == 236) && unless(word(0x10F4AA) == 236) &&
              unless(word(0x10F4AC) == 236) && unless(word(0x10F4AE) == 236) && unless(word(0x10F4B0) == 236) &&
              unless(word(0x10F4B2) == 236) && unless(word(0x10F4B4) == 236) && unless(word(0x10F4B6) == 236) &&
              unless(word(0x10F4B8) == 236) && unless(word(0x10F4BA) == 236) && unless(word(0x10F4BC) == 236) &&
              unless(word(0x10F4BE) == 236) && unless(word(0x10F4C0) == 236) && unless(word(0x10F4C2) == 236) &&
              unless(word(0x10F4C4) == 236) && unless(word(0x10F4C6) == 236) && unless(word(0x10F4C8) == 236) &&
              unless(word(0x10F4CA) == 236) && unless(word(0x10F4CC) == 236) && unless(word(0x10F4CE) == 236) &&
              unless(word(0x10F4D0) == 236) && unless(word(0x10F4D2) == 236) && unless(word(0x10F4D4) == 236) &&
              unless(word(0x10F4D6) == 236) && unless(word(0x10F4D8) == 236) && unless(word(0x10F4DA) == 236) &&
              unless(word(0x10F4DC) == 236) && unless(word(0x10F4DE) == 236) && unless(word(0x10F4E0) == 236) &&
              unless(word(0x10F4E2) == 236) && unless(word(0x10F4E4) == 236) && unless(word(0x10F4E6) == 236) &&
              unless(word(0x10F4E8) == 236) && unless(word(0x10F4EA) == 236) && unless(word(0x10F4EC) == 236) &&
              unless(word(0x10F4EE) == 236) && unless(word(0x10F4F0) == 236) && unless(word(0x10F4F2) == 236) &&
              unless(word(0x10F4F4) == 236) && unless(word(0x10F4F6) == 236) && unless(word(0x10F4F8) == 236) &&
              unless(word(0x10F4FA) == 236) && unless(word(0x10F4FC) == 236) && unless(word(0x10F4FE) == 236) &&
              unless(word(0x10F500) == 236) && unless(word(0x10F502) == 236) && unless(word(0x10F504) == 236) &&
              unless(word(0x10F506) == 236) && unless(word(0x10F508) == 236) && unless(word(0x10F50A) == 236) &&
              unless(word(0x10F50C) == 236) && unless(word(0x10F50E) == 236) && unless(word(0x10F510) == 236) &&
              unless(word(0x10F512) == 236) && unless(activated_badge_id_64() == 236) &&
              disable_when(current_partner() == 7) &&
              disable_when(item_used_id() == 129 && byte(pointer_2() + 0x1BB) < prev(byte(pointer_2() + 0x1BB))) &&
              trigger_when(prev(remaining_turns_mario_won_the_battle()) == 0) &&
              trigger_when(remaining_turns_mario_won_the_battle() == 1) &&
              (always_false() || (never(music_id() == 255)))
)

achievement(
    title = "That Guy Got Hit in the Head With a Coconut!", points = 10, type="missable",
    description = "Defeat Jr. Troopa after returning to Toad Town from Yoshi's Village with only coconuts",
    id = 321739, badge = "513634", published = "2023-05-26 6:12:22 PM", modified = "2025-05-13 1:56:21 PM",
    trigger = area_world_id() == 1 && unless(battle_id() != 517) &&
              disable_when(battle_2() != 52 && item_used_id() != 172 && byte(pointer_2() + 0x1BB) < prev(byte(pointer_2() + 0x1BB))) &&
              trigger_when(prev(remaining_turns_mario_won_the_battle()) == 0) &&
              trigger_when(remaining_turns_mario_won_the_battle() == 1) &&
              (always_false() || (never(music_id() == 255) && never(byte(pointer_2() + 0x1BB) >= 20)))
)

achievement(
    title = "Off Cloud Nine", points = 10, type="missable",
    description = "Defeat Huff N. Puff without the use of Bow or Lakilester",
    id = 321770, badge = "513635", published = "2023-05-26 9:27:14 PM", modified = "2023-05-29 8:57:59 PM",
    trigger = area_world_id() == 19 && unless(battle_id() != 6400) && disable_when(current_partner() == 8) &&
              disable_when(current_partner() == 9) && trigger_when(prev(remaining_turns_mario_won_the_battle()) == 0) &&
              trigger_when(remaining_turns_mario_won_the_battle() == 1) &&
              (always_false() || (never(music_id() == 255)))
)

achievement(
    title = "Let's Kick Some Ice", points = 5, type="missable",
    description = "Stop time on Crystal King, then deal 7 or more damage in a single attack while he is frozen (Indicator must say 7 or more specifically, cannot be total)",
    id = 321948, badge = "513636", published = "2023-05-27 4:23:18 AM", modified = "2024-07-03 3:12:47 PM",
    trigger = area_world_id() == 21 && byte(0x30E8DB) == 8 && trigger_when(pointer_enemy_status_thingy() == 2) &&
              remaining_turns_using_his_turn_mario() == 1 && byte(pointer_2() + 0x1BB) < prev(byte(pointer_2() + 0x1BB)) &&
              damage_amount_from_the_damage_indicator_shown_in_battle() >= 7 && battle_id() == 8192
)

achievement(
    title = "Who's the Bully Now?", points = 10,
    description = "Defeat Kent C. Koopa",
    id = 49614, badge = "513637", published = "2017-06-15 2:54:23 AM", modified = "2025-05-13 1:56:21 PM",
    trigger = once(npc_dialogue_id_word() == 301) && once(music_id_word() == 3) && never(music_id_word() == 2) &&
              once(music_id_word() == 91) && never(music_id_word() == 0) && once(music_id_word() == 17) &&
              never(music_id_word() == 19) && never(music_id_word() == 132) &&
              ((music_id_word() == 139) ||
               (music_id_word() == 142))
)

achievement(
    title = "No Sleep For Ol' Four Eyes", points = 10, type="missable",
    description = "Defeat Kent C. Koopa without putting him to sleep or any other status effect",
    id = 321854, badge = "513638", published = "2023-05-26 11:02:12 PM", modified = "2023-07-06 9:45:22 PM",
    trigger = area_world_id() == 6 && unless(battle_id() != 1304) &&
              trigger_when(prev(remaining_turns_mario_won_the_battle()) == 0) &&
              trigger_when(remaining_turns_mario_won_the_battle() == 1) &&
              disable_when(pointer_enemy_status_thingy() == 2) &&
              (always_false() || (never(music_id() == 255)))
)

achievement(
    title = "Anti-Antiguy", points = 25, type="missable",
    description = "Defeat Antiguy",
    id = 49616, badge = "513639", published = "2017-06-15 5:06:34 AM", modified = "2025-11-07 2:22:06 PM",
    trigger = event_id() == 1 && prev(remaining_turns_mario_won_the_battle()) == 0 &&
              remaining_turns_mario_won_the_battle() == 1 && battle_id() == 4140
)

achievement(
    title = "Graduate", points = 25,
    description = "Prove yourself worthy to have your Diploma",
    id = 49582, badge = "513640", published = "2017-06-12 4:46:30 AM", modified = "2019-10-22 4:37:02 PM",
    trigger = degree_cards() == 5 && prev(degree_cards()) == 4 && byte(0x0A094A) != 0
)

achievement(
    title = "The True King of the Koopas", points = 25,
    description = "Defeat Bowser without using your Star Energy (Final part of the battle)",
    id = 49687, badge = "513641", published = "2017-06-18 3:10:28 AM", modified = "2025-05-13 1:56:22 PM",
    trigger = star_power_meter() == 7 && never(star_power_meter() < 7) && once(music_id_word() == 104) &&
              music_id_word() == 111
)

achievement(
    title = "First Strike!", points = 1,
    description = "Get a first strike",
    id = 49546, badge = "513642", published = "2017-06-11 1:39:51 AM", modified = "2025-05-13 1:56:22 PM",
    trigger = number_of_first_strikes() == 1 && byte(0x0A094A) != 0
)

achievement(
    title = "Preemptive Striker", points = 10,
    description = "Perform 100 or more 'First Strikes'",
    id = 49547, badge = "513643", published = "2017-06-11 1:40:20 AM", modified = "2025-05-13 1:56:22 PM",
    trigger = number_of_first_strikes() == 100 && prev(number_of_first_strikes()) == 99 && byte(0x0A094A) != 0
)

achievement(
    title = "Battle Hardened", points = 25,
    description = "Fight your way through 250 battles throughout your adventure",
    id = 49576, badge = "513645", published = "2017-06-12 4:45:59 AM", modified = "2019-10-22 4:37:02 PM",
    trigger = number_of_battles() == 250 && prev(number_of_battles()) == 249 && byte(0x0A094A) != 0
)

achievement(
    title = "Power Bouncer", points = 25,
    description = "Use the Power Bounce badge to bounce 25 times consecutively on an enemy",
    id = 49577, badge = "86111", published = "2017-06-12 4:46:21 AM", modified = "2025-05-13 1:56:23 PM",
    trigger = never(marios_battle_animation_id() == 65540) &&
              ((byte(0x0A094A) == 1 && total_power_bounces() >= 25 &&
                measured(repeated(25, prev(marios_battle_animation_id()) == 65543 && marios_battle_animation_id() == 65548))) ||
               (byte(0x0A094A) == 1 && total_power_bounces() >= 25 &&
                measured(repeated(25, prev(marios_battle_animation_id()) == 65547 && marios_battle_animation_id() == 65548))) ||
               (byte(0x0A094A) == 1 && total_power_bounces() >= 25 &&
                measured(repeated(25, prev(marios_battle_animation_id()) == 65544 && marios_battle_animation_id() == 65548))))
)

achievement(
    title = "Coin Collector", points = 5,
    description = "Collect 1,000 or more coins throughout your adventure",
    id = 49583, badge = "86118", published = "2017-06-12 4:46:36 AM", modified = "2025-05-13 1:56:23 PM",
    trigger = byte(0x0A094A) == 1 && prev(total_coins_earned_through_the_course_of_the_game()) < 1000 &&
              total_coins_earned_through_the_course_of_the_game() >= 1000 && music_id() != 105
)

achievement(
    title = "Closing the Book", points = 25, type="win_condition",
    description = "Rescue the Princess and sit back and watch the fireworks",
    id = 49608, badge = "86119", published = "2017-06-15 2:05:18 AM", modified = "2025-05-13 1:56:24 PM",
    trigger = byte(0x315600) == 92 && byte(0x315601) == 4 && byte(0x315602) == 36 && byte(0x315603) == 128 &&
              the_end_address() == 255
)

achievement(
    title = "Ring Around the Rosie", points = 2,
    description = "Play 'Ring Around the Rosie' with a Candycane to get some life",
    id = 49618, badge = "86129", published = "2017-06-15 1:58:38 PM", modified = "2025-05-13 1:56:24 PM",
    trigger = music_id_word() == 132 && hearts_out_to_be_able_to_be_picked_up() == 1
)

achievement(
    title = "Encyclopedia", points = 50, type="missable",
    description = "Have Goombario use 'Tattle' on every enemy",
    id = 79592, badge = "85928", published = "2019-08-05 8:01:58 AM", modified = "2025-05-13 1:56:24 PM",
    trigger = byte(0x0A094A) == 1 && event_id() == 1 &&
              ((measured((tattle_flags_1_bill_blaster() + tattle_flags_1_cleft() + tattle_flags_1_monty_mole() +
                    tattle_flags_1_bandit() + tattle_flags_1_pokey() + tattle_flags_1_pokey_mummy() +
                    tattle_flags_1_swooper() + tattle_flags_1_buzzy_beetle() + tattle_flags_2_paragoomba() +
                    tattle_flags_2_spiked_goomba() + tattle_flags_2_fuzzy() + tattle_flags_2_koopa_troopa() +
                    tattle_flags_2_paratroopa() + tattle_flags_2_bobomb() + tattle_flags_2_bullet_bill() +
                    tattle_flags_3_gloomba() + tattle_flags_3_paragloomba() + tattle_flags_3_spiked_gloomba() +
                    tattle_flags_3_dark_koopa() + tattle_flags_3_goomba() + tattle_flags_4_monty_mole_green() +
                    tattle_flags_4_bzzap() + tattle_flags_4_crazee_dayzee() + tattle_flags_4_amazy_dayzee() +
                    tattle_flags_4_ruff_puff() + tattle_flags_4_spike() + tattle_flags_4_gulpit() +
                    tattle_flags_5_jungle_fuzzy() + tattle_flags_5_spear_guy() + tattle_flags_5_lava_bubble() +
                    tattle_flags_5_spike_top() + tattle_flags_5_putrid_piranha() + tattle_flags_5_lakitu() +
                    tattle_flags_5_spiny() + tattle_flags_6_groove_guy() + tattle_flags_6_sky_guy() +
                    tattle_flags_6_medi_guy() + tattle_flags_6_pyro_guy() + tattle_flags_6_spy_guy() +
                    tattle_flags_6_hurt_plant() + tattle_flags_6_m_bush() + tattle_flags_7_stone_chomp() +
                    tattle_flags_7_piranha_plant() + tattle_flags_7_forest_fuzzy() + tattle_flags_7_hyper_goomba() +
                    tattle_flags_7_hyper_paragoomba() + tattle_flags_7_hyper_cleft() + tattle_flags_7_clubba() +
                    tattle_flags_7_shy_guy() + tattle_flags_8_magikoopa_bowser_castle() + tattle_flags_8_red_magikoopa() +
                    tattle_flags_8_green_magikoopa() + tattle_flags_8_yellow_magikoopa() + tattle_flags_8_gray_magikoopa() +
                    tattle_flags_9_bombshell_bill_blaster() + tattle_flags_9_bombshell_bill() + tattle_flags_9_hammer_bros()
                    + tattle_flags_9_koopatrol() + tattle_flags_10_ember() + tattle_flags_10_bony_beetle() +
                    tattle_flags_10_dry_bones() + tattle_flags_11_white_clubba() + tattle_flags_11_frost_piranha() +
                    tattle_flags_11_swoopula() + tattle_flags_11_duplighost() + tattle_flags_12_white_magikoopa() +
                    tattle_flags_13_blue_goomba() + tattle_flags_13_red_goomba() + tattle_flags_13_goomba_king() +
                    tattle_flags_14_jr_troopa_2() + tattle_flags_14_jr_troopa_3() + tattle_flags_14_jr_troopa_4() +
                    tattle_flags_14_jr_troopa_5() + tattle_flags_14_jr_troppa_6() + tattle_flags_15_the_master1() +
                    tattle_flags_15_the_master2() + tattle_flags_15_the_master3() + tattle_flags_15_chan() +
                    tattle_flags_15_lee() + tattle_flags_16_big_lantern_ghost() + tattle_flags_16_lava_piranha() +
                    tattle_flags_16_lava_bud() + tattle_flags_16_petit_piranha() + tattle_flags_17_shy_squad() +
                    tattle_flags_17_general_guy() + tattle_flags_17_anti_guy_shy_guy_toy_box() + tattle_flags_18_buzzar() +
                    tattle_flags_18_tutankoopa() + tattle_flags_18_chomp() + tattle_flags_18_tubba_blubba_windmill() +
                    tattle_flags_18_tubbas_heart() + tattle_flags_18_stilt_guy() + tattle_flags_18_shy_stack() +
                    tattle_flags_19_bowser() + tattle_flags_19_g_ninjakoopa() + tattle_flags_19_r_ninjakoopa() +
                    tattle_flags_19_b_ninjakoopa() + tattle_flags_19_y_ninjakoopa() + tattle_flags_20_electro_blooper() +
                    tattle_flags_20_super_blooper() + tattle_flags_20_blooper_baby() + tattle_flags_21_bowser2() +
                    tattle_flags_21_bowser3() + tattle_flags_21_blooper() + tattle_flags_22_kent_c_koopa() +
                    tattle_flags_22_huff_n_puff() + tattle_flags_22_tuff_puff() + tattle_flags_22_monstar() +
                    tattle_flags_22_crystal_king() + tattle_flags_22_crystal_bit()) == 110
                ) &&
                (prev(tattle_flags_1_bill_blaster()) + prev(tattle_flags_1_cleft()) + prev(tattle_flags_1_monty_mole())
                + prev(tattle_flags_1_bandit()) + prev(tattle_flags_1_pokey()) + prev(tattle_flags_1_pokey_mummy()) +
                prev(tattle_flags_1_swooper()) + prev(tattle_flags_1_buzzy_beetle()) + prev(tattle_flags_2_paragoomba())
                + prev(tattle_flags_2_spiked_goomba()) + prev(tattle_flags_2_fuzzy()) +
                prev(tattle_flags_2_koopa_troopa()) + prev(tattle_flags_2_paratroopa()) + prev(tattle_flags_2_bobomb())
                + prev(tattle_flags_2_bullet_bill()) + prev(tattle_flags_3_gloomba()) +
                prev(tattle_flags_3_paragloomba()) + prev(tattle_flags_3_spiked_gloomba()) +
                prev(tattle_flags_3_dark_koopa()) + prev(tattle_flags_3_goomba()) +
                prev(tattle_flags_4_monty_mole_green()) + prev(tattle_flags_4_bzzap()) +
                prev(tattle_flags_4_crazee_dayzee()) + prev(tattle_flags_4_amazy_dayzee()) +
                prev(tattle_flags_4_ruff_puff()) + prev(tattle_flags_4_spike()) + prev(tattle_flags_4_gulpit()) +
                prev(tattle_flags_5_jungle_fuzzy()) + prev(tattle_flags_5_spear_guy()) +
                prev(tattle_flags_5_lava_bubble()) + prev(tattle_flags_5_spike_top()) +
                prev(tattle_flags_5_putrid_piranha()) + prev(tattle_flags_5_lakitu()) + prev(tattle_flags_5_spiny()) +
                prev(tattle_flags_6_groove_guy()) + prev(tattle_flags_6_sky_guy()) + prev(tattle_flags_6_medi_guy()) +
                prev(tattle_flags_6_pyro_guy()) + prev(tattle_flags_6_spy_guy()) + prev(tattle_flags_6_hurt_plant()) +
                prev(tattle_flags_6_m_bush()) + prev(tattle_flags_7_stone_chomp()) +
                prev(tattle_flags_7_piranha_plant()) + prev(tattle_flags_7_forest_fuzzy()) +
                prev(tattle_flags_7_hyper_goomba()) + prev(tattle_flags_7_hyper_paragoomba()) +
                prev(tattle_flags_7_hyper_cleft()) + prev(tattle_flags_7_clubba()) + prev(tattle_flags_7_shy_guy()) +
                prev(tattle_flags_8_magikoopa_bowser_castle()) + prev(tattle_flags_8_red_magikoopa()) +
                prev(tattle_flags_8_green_magikoopa()) + prev(tattle_flags_8_yellow_magikoopa()) +
                prev(tattle_flags_8_gray_magikoopa()) + prev(tattle_flags_9_bombshell_bill_blaster()) +
                prev(tattle_flags_9_bombshell_bill()) + prev(tattle_flags_9_hammer_bros()) +
                prev(tattle_flags_9_koopatrol()) + prev(tattle_flags_10_ember()) + prev(tattle_flags_10_bony_beetle()) +
                prev(tattle_flags_10_dry_bones()) + prev(tattle_flags_11_white_clubba()) +
                prev(tattle_flags_11_frost_piranha()) + prev(tattle_flags_11_swoopula()) +
                prev(tattle_flags_11_duplighost()) + prev(tattle_flags_12_white_magikoopa()) +
                prev(tattle_flags_13_blue_goomba()) + prev(tattle_flags_13_red_goomba()) +
                prev(tattle_flags_13_goomba_king()) + prev(tattle_flags_14_jr_troopa_2()) +
                prev(tattle_flags_14_jr_troopa_3()) + prev(tattle_flags_14_jr_troopa_4()) +
                prev(tattle_flags_14_jr_troopa_5()) + prev(tattle_flags_14_jr_troppa_6()) +
                prev(tattle_flags_15_the_master1()) + prev(tattle_flags_15_the_master2()) +
                prev(tattle_flags_15_the_master3()) + prev(tattle_flags_15_chan()) + prev(tattle_flags_15_lee()) +
                prev(tattle_flags_16_big_lantern_ghost()) + prev(tattle_flags_16_lava_piranha()) +
                prev(tattle_flags_16_lava_bud()) + prev(tattle_flags_16_petit_piranha()) +
                prev(tattle_flags_17_shy_squad()) + prev(tattle_flags_17_general_guy()) +
                prev(tattle_flags_17_anti_guy_shy_guy_toy_box()) + prev(tattle_flags_18_buzzar()) +
                prev(tattle_flags_18_tutankoopa()) + prev(tattle_flags_18_chomp()) +
                prev(tattle_flags_18_tubba_blubba_windmill()) + prev(tattle_flags_18_tubbas_heart()) +
                prev(tattle_flags_18_stilt_guy()) + prev(tattle_flags_18_shy_stack()) + prev(tattle_flags_19_bowser()) +
                prev(tattle_flags_19_g_ninjakoopa()) + prev(tattle_flags_19_r_ninjakoopa()) +
                prev(tattle_flags_19_b_ninjakoopa()) + prev(tattle_flags_19_y_ninjakoopa()) +
                prev(tattle_flags_20_electro_blooper()) + prev(tattle_flags_20_super_blooper()) +
                prev(tattle_flags_20_blooper_baby()) + prev(tattle_flags_21_bowser2()) + prev(tattle_flags_21_bowser3())
                + prev(tattle_flags_21_blooper()) + prev(tattle_flags_22_kent_c_koopa()) +
                prev(tattle_flags_22_huff_n_puff()) + prev(tattle_flags_22_tuff_puff()) +
                prev(tattle_flags_22_monstar()) + prev(tattle_flags_22_crystal_king()) +
                prev(tattle_flags_22_crystal_bit())) == 109) ||
               (measured((tattle_flags_1_bill_blaster() + tattle_flags_1_cleft() + tattle_flags_1_monty_mole() +
                    tattle_flags_1_bandit() + tattle_flags_1_pokey() + tattle_flags_1_pokey_mummy() +
                    tattle_flags_1_swooper() + tattle_flags_1_buzzy_beetle() + tattle_flags_2_paragoomba() +
                    tattle_flags_2_spiked_goomba() + tattle_flags_2_fuzzy() + tattle_flags_2_koopa_troopa() +
                    tattle_flags_2_paratroopa() + tattle_flags_2_bobomb() + tattle_flags_2_bullet_bill() +
                    tattle_flags_3_gloomba() + tattle_flags_3_paragloomba() + tattle_flags_3_spiked_gloomba() +
                    tattle_flags_3_dark_koopa() + tattle_flags_3_goomba() + tattle_flags_4_monty_mole_green() +
                    tattle_flags_4_bzzap() + tattle_flags_4_crazee_dayzee() + tattle_flags_4_amazy_dayzee() +
                    tattle_flags_4_ruff_puff() + tattle_flags_4_spike() + tattle_flags_4_gulpit() +
                    tattle_flags_5_jungle_fuzzy() + tattle_flags_5_spear_guy() + tattle_flags_5_lava_bubble() +
                    tattle_flags_5_spike_top() + tattle_flags_5_putrid_piranha() + tattle_flags_5_lakitu() +
                    tattle_flags_5_spiny() + tattle_flags_6_groove_guy() + tattle_flags_6_sky_guy() +
                    tattle_flags_6_medi_guy() + tattle_flags_6_pyro_guy() + tattle_flags_6_spy_guy() +
                    tattle_flags_6_hurt_plant() + tattle_flags_6_m_bush() + tattle_flags_7_stone_chomp() +
                    tattle_flags_7_piranha_plant() + tattle_flags_7_forest_fuzzy() + tattle_flags_7_hyper_goomba() +
                    tattle_flags_7_hyper_paragoomba() + tattle_flags_7_hyper_cleft() + tattle_flags_7_clubba() +
                    tattle_flags_7_shy_guy() + tattle_flags_8_magikoopa_bowser_castle() + tattle_flags_8_red_magikoopa() +
                    tattle_flags_8_green_magikoopa() + tattle_flags_8_yellow_magikoopa() + tattle_flags_8_gray_magikoopa() +
                    tattle_flags_9_bombshell_bill_blaster() + tattle_flags_9_bombshell_bill() + tattle_flags_9_hammer_bros()
                    + tattle_flags_9_koopatrol() + tattle_flags_10_ember() + tattle_flags_10_bony_beetle() +
                    tattle_flags_10_dry_bones() + tattle_flags_11_white_clubba() + tattle_flags_11_frost_piranha() +
                    tattle_flags_11_swoopula() + tattle_flags_11_duplighost() + tattle_flags_12_white_magikoopa() +
                    tattle_flags_13_blue_goomba() + tattle_flags_13_red_goomba() + tattle_flags_13_goomba_king() +
                    tattle_flags_14_jr_troopa_2() + tattle_flags_14_jr_troopa_3() + tattle_flags_14_jr_troopa_4() +
                    tattle_flags_14_jr_troopa_5() + tattle_flags_14_jr_troppa_6() + tattle_flags_15_the_master1() +
                    tattle_flags_15_the_master2() + tattle_flags_15_the_master3() + tattle_flags_15_chan() +
                    tattle_flags_15_lee() + tattle_flags_16_big_lantern_ghost() + tattle_flags_16_lava_piranha_bit4() +
                    tattle_flags_16_lava_bud_bit6() + tattle_flags_16_petit_piranha() + tattle_flags_17_shy_squad() +
                    tattle_flags_17_general_guy() + tattle_flags_17_anti_guy_shy_guy_toy_box() + tattle_flags_18_buzzar() +
                    tattle_flags_18_tutankoopa() + tattle_flags_18_chomp() + tattle_flags_18_tubba_blubba_windmill() +
                    tattle_flags_18_tubbas_heart() + tattle_flags_18_stilt_guy() + tattle_flags_18_shy_stack() +
                    tattle_flags_19_bowser() + tattle_flags_19_g_ninjakoopa() + tattle_flags_19_r_ninjakoopa() +
                    tattle_flags_19_b_ninjakoopa() + tattle_flags_19_y_ninjakoopa() + tattle_flags_20_electro_blooper() +
                    tattle_flags_20_super_blooper() + tattle_flags_20_blooper_baby() + tattle_flags_21_bowser2() +
                    tattle_flags_21_bowser3() + tattle_flags_21_blooper() + tattle_flags_22_kent_c_koopa() +
                    tattle_flags_22_huff_n_puff() + tattle_flags_22_tuff_puff() + tattle_flags_22_monstar() +
                    tattle_flags_22_crystal_king() + tattle_flags_22_crystal_bit()) == 110
                ) &&
                (prev(tattle_flags_1_bill_blaster()) + prev(tattle_flags_1_cleft()) + prev(tattle_flags_1_monty_mole())
                + prev(tattle_flags_1_bandit()) + prev(tattle_flags_1_pokey()) + prev(tattle_flags_1_pokey_mummy()) +
                prev(tattle_flags_1_swooper()) + prev(tattle_flags_1_buzzy_beetle()) + prev(tattle_flags_2_paragoomba())
                + prev(tattle_flags_2_spiked_goomba()) + prev(tattle_flags_2_fuzzy()) +
                prev(tattle_flags_2_koopa_troopa()) + prev(tattle_flags_2_paratroopa()) + prev(tattle_flags_2_bobomb())
                + prev(tattle_flags_2_bullet_bill()) + prev(tattle_flags_3_gloomba()) +
                prev(tattle_flags_3_paragloomba()) + prev(tattle_flags_3_spiked_gloomba()) +
                prev(tattle_flags_3_dark_koopa()) + prev(tattle_flags_3_goomba()) +
                prev(tattle_flags_4_monty_mole_green()) + prev(tattle_flags_4_bzzap()) +
                prev(tattle_flags_4_crazee_dayzee()) + prev(tattle_flags_4_amazy_dayzee()) +
                prev(tattle_flags_4_ruff_puff()) + prev(tattle_flags_4_spike()) + prev(tattle_flags_4_gulpit()) +
                prev(tattle_flags_5_jungle_fuzzy()) + prev(tattle_flags_5_spear_guy()) +
                prev(tattle_flags_5_lava_bubble()) + prev(tattle_flags_5_spike_top()) +
                prev(tattle_flags_5_putrid_piranha()) + prev(tattle_flags_5_lakitu()) + prev(tattle_flags_5_spiny()) +
                prev(tattle_flags_6_groove_guy()) + prev(tattle_flags_6_sky_guy()) + prev(tattle_flags_6_medi_guy()) +
                prev(tattle_flags_6_pyro_guy()) + prev(tattle_flags_6_spy_guy()) + prev(tattle_flags_6_hurt_plant()) +
                prev(tattle_flags_6_m_bush()) + prev(tattle_flags_7_stone_chomp()) +
                prev(tattle_flags_7_piranha_plant()) + prev(tattle_flags_7_forest_fuzzy()) +
                prev(tattle_flags_7_hyper_goomba()) + prev(tattle_flags_7_hyper_paragoomba()) +
                prev(tattle_flags_7_hyper_cleft()) + prev(tattle_flags_7_clubba()) + prev(tattle_flags_7_shy_guy()) +
                prev(tattle_flags_8_magikoopa_bowser_castle()) + prev(tattle_flags_8_red_magikoopa()) +
                prev(tattle_flags_8_green_magikoopa()) + prev(tattle_flags_8_yellow_magikoopa()) +
                prev(tattle_flags_8_gray_magikoopa()) + prev(tattle_flags_9_bombshell_bill_blaster()) +
                prev(tattle_flags_9_bombshell_bill()) + prev(tattle_flags_9_hammer_bros()) +
                prev(tattle_flags_9_koopatrol()) + prev(tattle_flags_10_ember()) + prev(tattle_flags_10_bony_beetle()) +
                prev(tattle_flags_10_dry_bones()) + prev(tattle_flags_11_white_clubba()) +
                prev(tattle_flags_11_frost_piranha()) + prev(tattle_flags_11_swoopula()) +
                prev(tattle_flags_11_duplighost()) + prev(tattle_flags_12_white_magikoopa()) +
                prev(tattle_flags_13_blue_goomba()) + prev(tattle_flags_13_red_goomba()) +
                prev(tattle_flags_13_goomba_king()) + prev(tattle_flags_14_jr_troopa_2()) +
                prev(tattle_flags_14_jr_troopa_3()) + prev(tattle_flags_14_jr_troopa_4()) +
                prev(tattle_flags_14_jr_troopa_5()) + prev(tattle_flags_14_jr_troppa_6()) +
                prev(tattle_flags_15_the_master1()) + prev(tattle_flags_15_the_master2()) +
                prev(tattle_flags_15_the_master3()) + prev(tattle_flags_15_chan()) + prev(tattle_flags_15_lee()) +
                prev(tattle_flags_16_big_lantern_ghost()) + prev(tattle_flags_16_lava_piranha_bit4()) +
                prev(tattle_flags_16_lava_bud_bit6()) + prev(tattle_flags_16_petit_piranha()) +
                prev(tattle_flags_17_shy_squad()) + prev(tattle_flags_17_general_guy()) +
                prev(tattle_flags_17_anti_guy_shy_guy_toy_box()) + prev(tattle_flags_18_buzzar()) +
                prev(tattle_flags_18_tutankoopa()) + prev(tattle_flags_18_chomp()) +
                prev(tattle_flags_18_tubba_blubba_windmill()) + prev(tattle_flags_18_tubbas_heart()) +
                prev(tattle_flags_18_stilt_guy()) + prev(tattle_flags_18_shy_stack()) + prev(tattle_flags_19_bowser()) +
                prev(tattle_flags_19_g_ninjakoopa()) + prev(tattle_flags_19_r_ninjakoopa()) +
                prev(tattle_flags_19_b_ninjakoopa()) + prev(tattle_flags_19_y_ninjakoopa()) +
                prev(tattle_flags_20_electro_blooper()) + prev(tattle_flags_20_super_blooper()) +
                prev(tattle_flags_20_blooper_baby()) + prev(tattle_flags_21_bowser2()) + prev(tattle_flags_21_bowser3())
                + prev(tattle_flags_21_blooper()) + prev(tattle_flags_22_kent_c_koopa()) +
                prev(tattle_flags_22_huff_n_puff()) + prev(tattle_flags_22_tuff_puff()) +
                prev(tattle_flags_22_monstar()) + prev(tattle_flags_22_crystal_king()) +
                prev(tattle_flags_22_crystal_bit())) == 109) ||
               (measured((tattle_flags_1_bill_blaster() + tattle_flags_1_cleft() + tattle_flags_1_monty_mole() +
                    tattle_flags_1_bandit() + tattle_flags_1_pokey() + tattle_flags_1_pokey_mummy() +
                    tattle_flags_1_swooper() + tattle_flags_1_buzzy_beetle() + tattle_flags_2_paragoomba() +
                    tattle_flags_2_spiked_goomba() + tattle_flags_2_fuzzy() + tattle_flags_2_koopa_troopa() +
                    tattle_flags_2_paratroopa() + tattle_flags_2_bobomb() + tattle_flags_2_bullet_bill() +
                    tattle_flags_3_gloomba() + tattle_flags_3_paragloomba() + tattle_flags_3_spiked_gloomba() +
                    tattle_flags_3_dark_koopa() + tattle_flags_3_goomba() + tattle_flags_4_monty_mole_green() +
                    tattle_flags_4_bzzap() + tattle_flags_4_crazee_dayzee() + tattle_flags_4_amazy_dayzee() +
                    tattle_flags_4_ruff_puff() + tattle_flags_4_spike() + tattle_flags_4_gulpit() +
                    tattle_flags_5_jungle_fuzzy() + tattle_flags_5_spear_guy() + tattle_flags_5_lava_bubble() +
                    tattle_flags_5_spike_top() + tattle_flags_5_putrid_piranha() + tattle_flags_5_lakitu() +
                    tattle_flags_5_spiny() + tattle_flags_6_groove_guy() + tattle_flags_6_sky_guy() +
                    tattle_flags_6_medi_guy() + tattle_flags_6_pyro_guy() + tattle_flags_6_spy_guy() +
                    tattle_flags_6_hurt_plant() + tattle_flags_6_m_bush() + tattle_flags_7_stone_chomp() +
                    tattle_flags_7_piranha_plant() + tattle_flags_7_forest_fuzzy() + tattle_flags_7_hyper_goomba() +
                    tattle_flags_7_hyper_paragoomba() + tattle_flags_7_hyper_cleft() + tattle_flags_7_clubba() +
                    tattle_flags_7_shy_guy() + tattle_flags_8_magikoopa_bowser_castle() + tattle_flags_8_red_magikoopa() +
                    tattle_flags_8_green_magikoopa() + tattle_flags_8_yellow_magikoopa() + tattle_flags_8_gray_magikoopa() +
                    tattle_flags_9_bombshell_bill_blaster() + tattle_flags_9_bombshell_bill() + tattle_flags_9_hammer_bros()
                    + tattle_flags_9_koopatrol() + tattle_flags_10_ember() + tattle_flags_10_bony_beetle() +
                    tattle_flags_10_dry_bones() + tattle_flags_11_white_clubba() + tattle_flags_11_frost_piranha() +
                    tattle_flags_11_swoopula() + tattle_flags_11_duplighost() + tattle_flags_12_white_magikoopa() +
                    tattle_flags_13_blue_goomba() + tattle_flags_13_red_goomba() + tattle_flags_13_goomba_king() +
                    tattle_flags_14_jr_troopa_2() + tattle_flags_14_jr_troopa_3() + tattle_flags_14_jr_troopa_4() +
                    tattle_flags_14_jr_troopa_5() + tattle_flags_14_jr_troppa_6() + tattle_flags_15_the_master1() +
                    tattle_flags_15_the_master2() + tattle_flags_15_the_master3() + tattle_flags_15_chan() +
                    tattle_flags_15_lee() + tattle_flags_16_big_lantern_ghost() + tattle_flags_16_lava_piranha_bit4() +
                    tattle_flags_16_lava_bud() + tattle_flags_16_petit_piranha() + tattle_flags_17_shy_squad() +
                    tattle_flags_17_general_guy() + tattle_flags_17_anti_guy_shy_guy_toy_box() + tattle_flags_18_buzzar() +
                    tattle_flags_18_tutankoopa() + tattle_flags_18_chomp() + tattle_flags_18_tubba_blubba_windmill() +
                    tattle_flags_18_tubbas_heart() + tattle_flags_18_stilt_guy() + tattle_flags_18_shy_stack() +
                    tattle_flags_19_bowser() + tattle_flags_19_g_ninjakoopa() + tattle_flags_19_r_ninjakoopa() +
                    tattle_flags_19_b_ninjakoopa() + tattle_flags_19_y_ninjakoopa() + tattle_flags_20_electro_blooper() +
                    tattle_flags_20_super_blooper() + tattle_flags_20_blooper_baby() + tattle_flags_21_bowser2() +
                    tattle_flags_21_bowser3() + tattle_flags_21_blooper() + tattle_flags_22_kent_c_koopa() +
                    tattle_flags_22_huff_n_puff() + tattle_flags_22_tuff_puff() + tattle_flags_22_monstar() +
                    tattle_flags_22_crystal_king() + tattle_flags_22_crystal_bit()) == 110
                ) &&
                (prev(tattle_flags_1_bill_blaster()) + prev(tattle_flags_1_cleft()) + prev(tattle_flags_1_monty_mole())
                + prev(tattle_flags_1_bandit()) + prev(tattle_flags_1_pokey()) + prev(tattle_flags_1_pokey_mummy()) +
                prev(tattle_flags_1_swooper()) + prev(tattle_flags_1_buzzy_beetle()) + prev(tattle_flags_2_paragoomba())
                + prev(tattle_flags_2_spiked_goomba()) + prev(tattle_flags_2_fuzzy()) +
                prev(tattle_flags_2_koopa_troopa()) + prev(tattle_flags_2_paratroopa()) + prev(tattle_flags_2_bobomb())
                + prev(tattle_flags_2_bullet_bill()) + prev(tattle_flags_3_gloomba()) +
                prev(tattle_flags_3_paragloomba()) + prev(tattle_flags_3_spiked_gloomba()) +
                prev(tattle_flags_3_dark_koopa()) + prev(tattle_flags_3_goomba()) +
                prev(tattle_flags_4_monty_mole_green()) + prev(tattle_flags_4_bzzap()) +
                prev(tattle_flags_4_crazee_dayzee()) + prev(tattle_flags_4_amazy_dayzee()) +
                prev(tattle_flags_4_ruff_puff()) + prev(tattle_flags_4_spike()) + prev(tattle_flags_4_gulpit()) +
                prev(tattle_flags_5_jungle_fuzzy()) + prev(tattle_flags_5_spear_guy()) +
                prev(tattle_flags_5_lava_bubble()) + prev(tattle_flags_5_spike_top()) +
                prev(tattle_flags_5_putrid_piranha()) + prev(tattle_flags_5_lakitu()) + prev(tattle_flags_5_spiny()) +
                prev(tattle_flags_6_groove_guy()) + prev(tattle_flags_6_sky_guy()) + prev(tattle_flags_6_medi_guy()) +
                prev(tattle_flags_6_pyro_guy()) + prev(tattle_flags_6_spy_guy()) + prev(tattle_flags_6_hurt_plant()) +
                prev(tattle_flags_6_m_bush()) + prev(tattle_flags_7_stone_chomp()) +
                prev(tattle_flags_7_piranha_plant()) + prev(tattle_flags_7_forest_fuzzy()) +
                prev(tattle_flags_7_hyper_goomba()) + prev(tattle_flags_7_hyper_paragoomba()) +
                prev(tattle_flags_7_hyper_cleft()) + prev(tattle_flags_7_clubba()) + prev(tattle_flags_7_shy_guy()) +
                prev(tattle_flags_8_magikoopa_bowser_castle()) + prev(tattle_flags_8_red_magikoopa()) +
                prev(tattle_flags_8_green_magikoopa()) + prev(tattle_flags_8_yellow_magikoopa()) +
                prev(tattle_flags_8_gray_magikoopa()) + prev(tattle_flags_9_bombshell_bill_blaster()) +
                prev(tattle_flags_9_bombshell_bill()) + prev(tattle_flags_9_hammer_bros()) +
                prev(tattle_flags_9_koopatrol()) + prev(tattle_flags_10_ember()) + prev(tattle_flags_10_bony_beetle()) +
                prev(tattle_flags_10_dry_bones()) + prev(tattle_flags_11_white_clubba()) +
                prev(tattle_flags_11_frost_piranha()) + prev(tattle_flags_11_swoopula()) +
                prev(tattle_flags_11_duplighost()) + prev(tattle_flags_12_white_magikoopa()) +
                prev(tattle_flags_13_blue_goomba()) + prev(tattle_flags_13_red_goomba()) +
                prev(tattle_flags_13_goomba_king()) + prev(tattle_flags_14_jr_troopa_2()) +
                prev(tattle_flags_14_jr_troopa_3()) + prev(tattle_flags_14_jr_troopa_4()) +
                prev(tattle_flags_14_jr_troopa_5()) + prev(tattle_flags_14_jr_troppa_6()) +
                prev(tattle_flags_15_the_master1()) + prev(tattle_flags_15_the_master2()) +
                prev(tattle_flags_15_the_master3()) + prev(tattle_flags_15_chan()) + prev(tattle_flags_15_lee()) +
                prev(tattle_flags_16_big_lantern_ghost()) + prev(tattle_flags_16_lava_piranha_bit4()) +
                prev(tattle_flags_16_lava_bud()) + prev(tattle_flags_16_petit_piranha()) +
                prev(tattle_flags_17_shy_squad()) + prev(tattle_flags_17_general_guy()) +
                prev(tattle_flags_17_anti_guy_shy_guy_toy_box()) + prev(tattle_flags_18_buzzar()) +
                prev(tattle_flags_18_tutankoopa()) + prev(tattle_flags_18_chomp()) +
                prev(tattle_flags_18_tubba_blubba_windmill()) + prev(tattle_flags_18_tubbas_heart()) +
                prev(tattle_flags_18_stilt_guy()) + prev(tattle_flags_18_shy_stack()) + prev(tattle_flags_19_bowser()) +
                prev(tattle_flags_19_g_ninjakoopa()) + prev(tattle_flags_19_r_ninjakoopa()) +
                prev(tattle_flags_19_b_ninjakoopa()) + prev(tattle_flags_19_y_ninjakoopa()) +
                prev(tattle_flags_20_electro_blooper()) + prev(tattle_flags_20_super_blooper()) +
                prev(tattle_flags_20_blooper_baby()) + prev(tattle_flags_21_bowser2()) + prev(tattle_flags_21_bowser3())
                + prev(tattle_flags_21_blooper()) + prev(tattle_flags_22_kent_c_koopa()) +
                prev(tattle_flags_22_huff_n_puff()) + prev(tattle_flags_22_tuff_puff()) +
                prev(tattle_flags_22_monstar()) + prev(tattle_flags_22_crystal_king()) +
                prev(tattle_flags_22_crystal_bit())) == 109) ||
               (measured((tattle_flags_1_bill_blaster() + tattle_flags_1_cleft() + tattle_flags_1_monty_mole() +
                    tattle_flags_1_bandit() + tattle_flags_1_pokey() + tattle_flags_1_pokey_mummy() +
                    tattle_flags_1_swooper() + tattle_flags_1_buzzy_beetle() + tattle_flags_2_paragoomba() +
                    tattle_flags_2_spiked_goomba() + tattle_flags_2_fuzzy() + tattle_flags_2_koopa_troopa() +
                    tattle_flags_2_paratroopa() + tattle_flags_2_bobomb() + tattle_flags_2_bullet_bill() +
                    tattle_flags_3_gloomba() + tattle_flags_3_paragloomba() + tattle_flags_3_spiked_gloomba() +
                    tattle_flags_3_dark_koopa() + tattle_flags_3_goomba() + tattle_flags_4_monty_mole_green() +
                    tattle_flags_4_bzzap() + tattle_flags_4_crazee_dayzee() + tattle_flags_4_amazy_dayzee() +
                    tattle_flags_4_ruff_puff() + tattle_flags_4_spike() + tattle_flags_4_gulpit() +
                    tattle_flags_5_jungle_fuzzy() + tattle_flags_5_spear_guy() + tattle_flags_5_lava_bubble() +
                    tattle_flags_5_spike_top() + tattle_flags_5_putrid_piranha() + tattle_flags_5_lakitu() +
                    tattle_flags_5_spiny() + tattle_flags_6_groove_guy() + tattle_flags_6_sky_guy() +
                    tattle_flags_6_medi_guy() + tattle_flags_6_pyro_guy() + tattle_flags_6_spy_guy() +
                    tattle_flags_6_hurt_plant() + tattle_flags_6_m_bush() + tattle_flags_7_stone_chomp() +
                    tattle_flags_7_piranha_plant() + tattle_flags_7_forest_fuzzy() + tattle_flags_7_hyper_goomba() +
                    tattle_flags_7_hyper_paragoomba() + tattle_flags_7_hyper_cleft() + tattle_flags_7_clubba() +
                    tattle_flags_7_shy_guy() + tattle_flags_8_magikoopa_bowser_castle() + tattle_flags_8_red_magikoopa() +
                    tattle_flags_8_green_magikoopa() + tattle_flags_8_yellow_magikoopa() + tattle_flags_8_gray_magikoopa() +
                    tattle_flags_9_bombshell_bill_blaster() + tattle_flags_9_bombshell_bill() + tattle_flags_9_hammer_bros()
                    + tattle_flags_9_koopatrol() + tattle_flags_10_ember() + tattle_flags_10_bony_beetle() +
                    tattle_flags_10_dry_bones() + tattle_flags_11_white_clubba() + tattle_flags_11_frost_piranha() +
                    tattle_flags_11_swoopula() + tattle_flags_11_duplighost() + tattle_flags_12_white_magikoopa() +
                    tattle_flags_13_blue_goomba() + tattle_flags_13_red_goomba() + tattle_flags_13_goomba_king() +
                    tattle_flags_14_jr_troopa_2() + tattle_flags_14_jr_troopa_3() + tattle_flags_14_jr_troopa_4() +
                    tattle_flags_14_jr_troopa_5() + tattle_flags_14_jr_troppa_6() + tattle_flags_15_the_master1() +
                    tattle_flags_15_the_master2() + tattle_flags_15_the_master3() + tattle_flags_15_chan() +
                    tattle_flags_15_lee() + tattle_flags_16_big_lantern_ghost() + tattle_flags_16_lava_piranha() +
                    tattle_flags_16_lava_bud_bit6() + tattle_flags_16_petit_piranha() + tattle_flags_17_shy_squad() +
                    tattle_flags_17_general_guy() + tattle_flags_17_anti_guy_shy_guy_toy_box() + tattle_flags_18_buzzar() +
                    tattle_flags_18_tutankoopa() + tattle_flags_18_chomp() + tattle_flags_18_tubba_blubba_windmill() +
                    tattle_flags_18_tubbas_heart() + tattle_flags_18_stilt_guy() + tattle_flags_18_shy_stack() +
                    tattle_flags_19_bowser() + tattle_flags_19_g_ninjakoopa() + tattle_flags_19_r_ninjakoopa() +
                    tattle_flags_19_b_ninjakoopa() + tattle_flags_19_y_ninjakoopa() + tattle_flags_20_electro_blooper() +
                    tattle_flags_20_super_blooper() + tattle_flags_20_blooper_baby() + tattle_flags_21_bowser2() +
                    tattle_flags_21_bowser3() + tattle_flags_21_blooper() + tattle_flags_22_kent_c_koopa() +
                    tattle_flags_22_huff_n_puff() + tattle_flags_22_tuff_puff() + tattle_flags_22_monstar() +
                    tattle_flags_22_crystal_king() + tattle_flags_22_crystal_bit()) == 110
                ) &&
                (prev(tattle_flags_1_bill_blaster()) + prev(tattle_flags_1_cleft()) + prev(tattle_flags_1_monty_mole())
                + prev(tattle_flags_1_bandit()) + prev(tattle_flags_1_pokey()) + prev(tattle_flags_1_pokey_mummy()) +
                prev(tattle_flags_1_swooper()) + prev(tattle_flags_1_buzzy_beetle()) + prev(tattle_flags_2_paragoomba())
                + prev(tattle_flags_2_spiked_goomba()) + prev(tattle_flags_2_fuzzy()) +
                prev(tattle_flags_2_koopa_troopa()) + prev(tattle_flags_2_paratroopa()) + prev(tattle_flags_2_bobomb())
                + prev(tattle_flags_2_bullet_bill()) + prev(tattle_flags_3_gloomba()) +
                prev(tattle_flags_3_paragloomba()) + prev(tattle_flags_3_spiked_gloomba()) +
                prev(tattle_flags_3_dark_koopa()) + prev(tattle_flags_3_goomba()) +
                prev(tattle_flags_4_monty_mole_green()) + prev(tattle_flags_4_bzzap()) +
                prev(tattle_flags_4_crazee_dayzee()) + prev(tattle_flags_4_amazy_dayzee()) +
                prev(tattle_flags_4_ruff_puff()) + prev(tattle_flags_4_spike()) + prev(tattle_flags_4_gulpit()) +
                prev(tattle_flags_5_jungle_fuzzy()) + prev(tattle_flags_5_spear_guy()) +
                prev(tattle_flags_5_lava_bubble()) + prev(tattle_flags_5_spike_top()) +
                prev(tattle_flags_5_putrid_piranha()) + prev(tattle_flags_5_lakitu()) + prev(tattle_flags_5_spiny()) +
                prev(tattle_flags_6_groove_guy()) + prev(tattle_flags_6_sky_guy()) + prev(tattle_flags_6_medi_guy()) +
                prev(tattle_flags_6_pyro_guy()) + prev(tattle_flags_6_spy_guy()) + prev(tattle_flags_6_hurt_plant()) +
                prev(tattle_flags_6_m_bush()) + prev(tattle_flags_7_stone_chomp()) +
                prev(tattle_flags_7_piranha_plant()) + prev(tattle_flags_7_forest_fuzzy()) +
                prev(tattle_flags_7_hyper_goomba()) + prev(tattle_flags_7_hyper_paragoomba()) +
                prev(tattle_flags_7_hyper_cleft()) + prev(tattle_flags_7_clubba()) + prev(tattle_flags_7_shy_guy()) +
                prev(tattle_flags_8_magikoopa_bowser_castle()) + prev(tattle_flags_8_red_magikoopa()) +
                prev(tattle_flags_8_green_magikoopa()) + prev(tattle_flags_8_yellow_magikoopa()) +
                prev(tattle_flags_8_gray_magikoopa()) + prev(tattle_flags_9_bombshell_bill_blaster()) +
                prev(tattle_flags_9_bombshell_bill()) + prev(tattle_flags_9_hammer_bros()) +
                prev(tattle_flags_9_koopatrol()) + prev(tattle_flags_10_ember()) + prev(tattle_flags_10_bony_beetle()) +
                prev(tattle_flags_10_dry_bones()) + prev(tattle_flags_11_white_clubba()) +
                prev(tattle_flags_11_frost_piranha()) + prev(tattle_flags_11_swoopula()) +
                prev(tattle_flags_11_duplighost()) + prev(tattle_flags_12_white_magikoopa()) +
                prev(tattle_flags_13_blue_goomba()) + prev(tattle_flags_13_red_goomba()) +
                prev(tattle_flags_13_goomba_king()) + prev(tattle_flags_14_jr_troopa_2()) +
                prev(tattle_flags_14_jr_troopa_3()) + prev(tattle_flags_14_jr_troopa_4()) +
                prev(tattle_flags_14_jr_troopa_5()) + prev(tattle_flags_14_jr_troppa_6()) +
                prev(tattle_flags_15_the_master1()) + prev(tattle_flags_15_the_master2()) +
                prev(tattle_flags_15_the_master3()) + prev(tattle_flags_15_chan()) + prev(tattle_flags_15_lee()) +
                prev(tattle_flags_16_big_lantern_ghost()) + prev(tattle_flags_16_lava_piranha()) +
                prev(tattle_flags_16_lava_bud_bit6()) + prev(tattle_flags_16_petit_piranha()) +
                prev(tattle_flags_17_shy_squad()) + prev(tattle_flags_17_general_guy()) +
                prev(tattle_flags_17_anti_guy_shy_guy_toy_box()) + prev(tattle_flags_18_buzzar()) +
                prev(tattle_flags_18_tutankoopa()) + prev(tattle_flags_18_chomp()) +
                prev(tattle_flags_18_tubba_blubba_windmill()) + prev(tattle_flags_18_tubbas_heart()) +
                prev(tattle_flags_18_stilt_guy()) + prev(tattle_flags_18_shy_stack()) + prev(tattle_flags_19_bowser()) +
                prev(tattle_flags_19_g_ninjakoopa()) + prev(tattle_flags_19_r_ninjakoopa()) +
                prev(tattle_flags_19_b_ninjakoopa()) + prev(tattle_flags_19_y_ninjakoopa()) +
                prev(tattle_flags_20_electro_blooper()) + prev(tattle_flags_20_super_blooper()) +
                prev(tattle_flags_20_blooper_baby()) + prev(tattle_flags_21_bowser2()) + prev(tattle_flags_21_bowser3())
                + prev(tattle_flags_21_blooper()) + prev(tattle_flags_22_kent_c_koopa()) +
                prev(tattle_flags_22_huff_n_puff()) + prev(tattle_flags_22_tuff_puff()) +
                prev(tattle_flags_22_monstar()) + prev(tattle_flags_22_crystal_king()) +
                prev(tattle_flags_22_crystal_bit())) == 109))
)

achievement(
    title = "Kitchen Nightmare", points = 50,
    description = "Cook every recipe",
    id = 79593, badge = "85929", published = "2019-08-05 8:02:00 AM", modified = "2025-05-13 1:56:25 PM",
    trigger = event_id() == 0 && byte(0x0A094A) == 1 &&
              measured((recipes_flag_1_16bits_bit6() + recipes_flag_1_16bits_bit7() + bit0(0x0DBC97) + bit1(0x0DBC97) +
                  bit2(0x0DBC97) + bit3(0x0DBC97) + bit4(0x0DBC97) + bit5(0x0DBC97) + bit6(0x0DBC97) + bit7(0x0DBC97) +
                  recipes_flag_2_16bits_bit0() + recipes_flag_2_16bits_bit1() + recipes_flag_2_16bits_bit2() +
                  recipes_flag_2_16bits_bit3() + recipes_flag_2_16bits_bit4() + recipes_flag_2_16bits_bit5() +
                  recipes_flag_2_16bits_bit6() + recipes_flag_2_16bits_bit7() + bit1(0x0DBC99) + bit2(0x0DBC99) +
                  bit3(0x0DBC99) + bit4(0x0DBC99) + bit5(0x0DBC99) + bit6(0x0DBC99) + bit7(0x0DBC99) +
                  recipes_flag_3_16bits_bit0() + recipes_flag_3_16bits_bit1() + recipes_flag_3_16bits_bit2() +
                  recipes_flag_3_16bits_bit3() + recipes_flag_3_16bits_bit4() + recipes_flag_3_16bits_bit5() +
                  recipes_flag_3_16bits_bit6() + recipes_flag_3_16bits_bit7() + bit0(0x0DBC9B) + bit1(0x0DBC9B) +
                  bit2(0x0DBC9B) + bit3(0x0DBC9B) + bit4(0x0DBC9B) + bit5(0x0DBC9B) + bit6(0x0DBC9B) + bit7(0x0DBC9B) +
                  recipes_flag_4_16bits_bit0() + recipes_flag_4_16bits_bit1() + recipes_flag_4_16bits_bit2() +
                  recipes_flag_4_16bits_bit3() + recipes_flag_4_16bits_bit5() + recipes_flag_4_16bits_bit6() +
                  recipes_flag_4_16bits_bit7() + bit0(0x0DBC9D) + bit1(0x0DBC9D)) == 50
              ) &&
              (prev(recipes_flag_1_16bits_bit6()) + prev(recipes_flag_1_16bits_bit7()) + prev(bit0(0x0DBC97)) +
              prev(bit1(0x0DBC97)) + prev(bit2(0x0DBC97)) + prev(bit3(0x0DBC97)) + prev(bit4(0x0DBC97)) +
              prev(bit5(0x0DBC97)) + prev(bit6(0x0DBC97)) + prev(bit7(0x0DBC97)) + prev(recipes_flag_2_16bits_bit0()) +
              prev(recipes_flag_2_16bits_bit1()) + prev(recipes_flag_2_16bits_bit2()) +
              prev(recipes_flag_2_16bits_bit3()) + prev(recipes_flag_2_16bits_bit4()) +
              prev(recipes_flag_2_16bits_bit5()) + prev(recipes_flag_2_16bits_bit6()) +
              prev(recipes_flag_2_16bits_bit7()) + prev(bit1(0x0DBC99)) + prev(bit2(0x0DBC99)) + prev(bit3(0x0DBC99)) +
              prev(bit4(0x0DBC99)) + prev(bit5(0x0DBC99)) + prev(bit6(0x0DBC99)) + prev(bit7(0x0DBC99)) +
              prev(recipes_flag_3_16bits_bit0()) + prev(recipes_flag_3_16bits_bit1()) +
              prev(recipes_flag_3_16bits_bit2()) + prev(recipes_flag_3_16bits_bit3()) +
              prev(recipes_flag_3_16bits_bit4()) + prev(recipes_flag_3_16bits_bit5()) +
              prev(recipes_flag_3_16bits_bit6()) + prev(recipes_flag_3_16bits_bit7()) + prev(bit0(0x0DBC9B)) +
              prev(bit1(0x0DBC9B)) + prev(bit2(0x0DBC9B)) + prev(bit3(0x0DBC9B)) + prev(bit4(0x0DBC9B)) +
              prev(bit5(0x0DBC9B)) + prev(bit6(0x0DBC9B)) + prev(bit7(0x0DBC9B)) + prev(recipes_flag_4_16bits_bit0()) +
              prev(recipes_flag_4_16bits_bit1()) + prev(recipes_flag_4_16bits_bit2()) +
              prev(recipes_flag_4_16bits_bit3()) + prev(recipes_flag_4_16bits_bit5()) +
              prev(recipes_flag_4_16bits_bit6()) + prev(recipes_flag_4_16bits_bit7()) + prev(bit0(0x0DBC9D)) +
              prev(bit1(0x0DBC9D))) == 49
)

achievement(
    title = "Rolling in the Deep", points = 3,
    description = "Destroy each of the spinning flames in Mt. Lavalava",
    id = 79594, badge = "85930", published = "2019-08-05 8:02:02 AM", modified = "2025-05-13 1:56:25 PM",
    trigger = (prev(area_flag_2_flame_1_destroyed()) + prev(area_flag_2_flame_2_destroyed()) +
              prev(area_flag_2_flame_3_destroyed()) + prev(area_flag_2_flame_4_destroyed()) +
              prev(area_flag_2_flame_5_destroyed()) + prev(area_flag_2_flame_6_destroyed())) == 5 &&
              measured((area_flag_2_flame_1_destroyed() + area_flag_2_flame_2_destroyed() +
                  area_flag_2_flame_3_destroyed() + area_flag_2_flame_4_destroyed() + area_flag_2_flame_5_destroyed() +
                  area_flag_2_flame_6_destroyed()) == 6, when=area_world_id() == 18
              )
)

achievement(
    title = "Brotherly Secrets", points = 5,
    description = "Read all of Luigi's Diary",
    id = 79595, badge = "85931", published = "2019-08-05 8:02:04 AM", modified = "2025-05-13 1:56:25 PM",
    trigger = area_world_id() == 0 && map_id() == 11 &&
              (prev(luigis_diary_1_page_9()) + prev(luigis_diary_1_page_10()) + prev(luigis_diary_1_page_11()) +
              prev(luigis_diary_1_page_12()) + prev(luigis_diary_2_bit0()) + prev(luigis_diary_2_bit1()) +
              prev(luigis_diary_2_bit2()) + prev(luigis_diary_2_bit3()) + prev(luigis_diary_2_bit4()) +
              prev(luigis_diary_2_bit5()) + prev(luigis_diary_2_bit6()) + prev(luigis_diary_2_bit7())) == 11 &&
              measured((luigis_diary_1_page_9() + luigis_diary_1_page_10() + luigis_diary_1_page_11() +
                  luigis_diary_1_page_12() + luigis_diary_2_bit0() + luigis_diary_2_bit1() + luigis_diary_2_bit2() +
                  luigis_diary_2_bit3() + luigis_diary_2_bit4() + luigis_diary_2_bit5() + luigis_diary_2_bit6() +
                  luigis_diary_2_bit7()) == 12
              )
)

achievement(
    title = "Unwanted Mail", points = 5,
    description = "Read all of Mario's letters",
    id = 79596, badge = "85932", published = "2019-08-05 8:02:05 AM", modified = "2025-09-14 4:30:39 AM",
    trigger = area_world_id() == 0 && map_id() == 11 &&
              (prev(bitfield_marios_letters_kolorado_2()) + prev(bitfield_marios_letters_yoshi_kids()) +
              prev(bitfield_marios_letters_rowf()) + prev(bitfield_marios_letters_wise_wisterwood()) +
              prev(bitfield_marios_letters_2_little_t()) + prev(bitfield_marios_letters_2_vanna_t()) +
              prev(bitfield_marios_letters_2_koopa_bros()) + prev(bitfield_marios_letters_2_koopa_troopas()) +
              prev(bitfield_marios_letters_2_moustafa()) + prev(bitfield_marios_letters_2_kolorado()) +
              prev(bitfield_marios_letters_2_goombaria()) + prev(bitfield_marios_letters_2_tayce_t())) == 11 &&
              measured((bitfield_marios_letters_kolorado_2() + bitfield_marios_letters_yoshi_kids() +
                  bitfield_marios_letters_rowf() + bitfield_marios_letters_wise_wisterwood() +
                  bitfield_marios_letters_2_little_t() + bitfield_marios_letters_2_vanna_t() +
                  bitfield_marios_letters_2_koopa_bros() + bitfield_marios_letters_2_koopa_troopas() +
                  bitfield_marios_letters_2_moustafa() + bitfield_marios_letters_2_kolorado() +
                  bitfield_marios_letters_2_goombaria() + bitfield_marios_letters_2_tayce_t()) == 12
              )
)

achievement(
    title = "Here's the Mail that Never Fails", points = 5, type="missable",
    description = "Read every letter dedicated to your partners",
    id = 79597, badge = "85933", published = "2019-08-05 8:02:07 AM", modified = "2023-03-14 3:28:13 AM",
    trigger = area_world_id() == 1 && map_id() == 2 &&
              (prev(partners_letters_flag_1_8bits_letters_1_4_readed()) +
              prev(partners_letters_flag_1_8bits_letters_1_4_readed_bit5()) +
              prev(partners_letters_flag_1_8bits_letters_1_4_readed_bit6()) +
              prev(partners_letters_flag_1_8bits_letters_1_4_readed_bit7()) + prev(partners_letters_flag_2_bit0()) +
              prev(partners_letters_flag_2_bit1()) + prev(partners_letters_flag_2_bit2()) +
              prev(partners_letters_flag_2_bit3()) + prev(partners_letters_flag_2_bit4()) +
              prev(partners_letters_flag_2_bit5()) + prev(partners_letters_flag_2_bit6()) +
              prev(partners_letters_flag_2_bit7()) + prev(partners_letters_flag_3_letters_14_20_readed()) +
              prev(partners_letters_flag_3_letters_14_20_readed_bit1()) +
              prev(partners_letters_flag_3_letters_14_20_readed_bit2()) +
              prev(partners_letters_flag_3_letters_14_20_readed_bit3()) +
              prev(partners_letters_flag_3_letters_14_20_readed_bit4()) +
              prev(partners_letters_flag_3_letters_14_20_readed_bit5()) +
              prev(partners_letters_flag_3_letters_14_20_readed_bit6())) == 18 &&
              measured((partners_letters_flag_1_8bits_letters_1_4_readed() +
                  partners_letters_flag_1_8bits_letters_1_4_readed_bit5() +
                  partners_letters_flag_1_8bits_letters_1_4_readed_bit6() +
                  partners_letters_flag_1_8bits_letters_1_4_readed_bit7() + partners_letters_flag_2_bit0() +
                  partners_letters_flag_2_bit1() + partners_letters_flag_2_bit2() + partners_letters_flag_2_bit3() +
                  partners_letters_flag_2_bit4() + partners_letters_flag_2_bit5() + partners_letters_flag_2_bit6() +
                  partners_letters_flag_2_bit7() + partners_letters_flag_3_letters_14_20_readed() +
                  partners_letters_flag_3_letters_14_20_readed_bit1() + partners_letters_flag_3_letters_14_20_readed_bit2()
                  + partners_letters_flag_3_letters_14_20_readed_bit3() +
                  partners_letters_flag_3_letters_14_20_readed_bit4() + partners_letters_flag_3_letters_14_20_readed_bit5()
                  + partners_letters_flag_3_letters_14_20_readed_bit6()) == 19
              )
)

achievement(
    title = "Oink!", points = 5,
    description = "Win an item from a Lil' Oink",
    id = 79598, badge = "85934", published = "2019-08-05 8:02:09 AM", modified = "2025-05-13 1:56:25 PM",
    trigger = area_world_id() == 1 && map_id() == 4 && player_pos_x() >= 271.0 && player_pos_x() <= 588.0 &&
              player_pos_z() <= -107.0 && player_pos_z() >= -252.0 &&
              ((prev(item_slots()) == 0 && item_slots() > 0) ||
               (prev(_16bit_byte()) == 0 && _16bit_byte() > 0) ||
               (prev(_16bit_3_byte()) == 0 && _16bit_3_byte() > 0) ||
               (prev(_16bit_2_byte()) == 0 && _16bit_2_byte() > 0) ||
               (prev(_16bit_5_byte()) == 0 && _16bit_5_byte() > 0) ||
               (prev(_16bit_4_byte()) == 0 && _16bit_4_byte() > 0) ||
               (prev(_16bit_7_byte()) == 0 && _16bit_7_byte() > 0) ||
               (prev(_16bit_6_byte()) == 0 && _16bit_6_byte() > 0) ||
               (prev(_16bit_9_byte()) == 0 && _16bit_9_byte() > 0) ||
               (prev(_16bit_8_byte()) == 0 && _16bit_8_byte() > 0) ||
               (prev(items_checked_slot_1()) == 0 && items_checked_slot_1() > 0) ||
               (prev(byte(0x10F458)) == 0 && byte(0x10F458) > 0))
)

achievement(
    title = "99.7 FM", points = 5,
    description = "Get the last reward from the Trading Event Toad",
    id = 79599, badge = "85935", published = "2019-08-05 8:02:11 AM", modified = "2024-04-05 3:22:20 PM",
    trigger = byte(0x0A094A) == 1 && area_world_id() == 1 && map_id() == 6 &&
              ((prev(item_slots()) == 0 && item_slots() == 187) ||
               (prev(_16bit_byte()) == 0 && _16bit_byte() == 187) ||
               (prev(_16bit_3_byte()) == 0 && _16bit_3_byte() == 187) ||
               (prev(_16bit_2_byte()) == 0 && _16bit_2_byte() == 187) ||
               (prev(_16bit_5_byte()) == 0 && _16bit_5_byte() == 187) ||
               (prev(_16bit_4_byte()) == 0 && _16bit_4_byte() == 187) ||
               (prev(_16bit_7_byte()) == 0 && _16bit_7_byte() == 187) ||
               (prev(_16bit_6_byte()) == 0 && _16bit_6_byte() == 187) ||
               (prev(_16bit_9_byte()) == 0 && _16bit_9_byte() == 187) ||
               (prev(_16bit_8_byte()) == 0 && _16bit_8_byte() == 187) ||
               (prev(items_checked_slot_1()) == 0 && items_checked_slot_1() == 187) ||
               (prev(byte(0x10F458)) == 0 && byte(0x10F458) == 187))
)

achievement(
    title = "Jackpot", points = 10,
    description = "Win a total of 250 or more coins in the 'Smash Attack' Minigame",
    id = 79600, badge = "85936", published = "2019-08-05 8:02:13 AM", modified = "2025-05-13 1:56:26 PM",
    trigger = area_world_id() == 25 && map_id() == 2 && smash_attack_total_coins_won_16bits() != 250 &&
              smash_attack_total_coins_won_16bits() >= 250
)

achievement(
    title = "Why, Spike?", points = 1, type="missable",
    description = "Don't forgive Lakilester",
    id = 79707, badge = "86072", published = "2019-08-07 3:10:48 AM", modified = "2025-05-13 1:56:26 PM",
    trigger = area_world_id() == 19 && map_id() == 8 && prev(marios_battle_animation_id_byte()) == 43 &&
              marios_battle_animation_id_byte() == 23
)

achievement(
    title = "Afraid of Ghosts", points = 4,
    description = "Make it to the chest at the end of the Spike Room in Tubba Blubba's Castle without using Bow",
    id = 84288, badge = "91675", published = "2019-09-28 7:30:40 PM", modified = "2025-05-13 1:56:26 PM",
    trigger = never(area_world_id() != 15) && never(map_id() != 12) && never(sound_id_16bits() == 8206) &&
              never(sound_id_2() == 8206) && never(sound_id_3() == 8206) && never(sound_id_16bits() == 661) &&
              never(sound_id_2() == 661) && never(sound_id_3() == 661) && once(sound_id_16bits() == 450) &&
              x_coordinates_16bits() <= 50050 && z_coordinates_16bits() >= 49988
)

achievement(
    title = "Hidden Goodies", points = 10,
    description = "Find every hidden block (Must grab item from each box at least once)",
    id = 321728, badge = "359762", published = "2023-05-26 6:12:17 PM", modified = "2023-06-08 11:12:59 PM",
    trigger = byte(0x0A094A) != 0 && event_id() == 0 &&
              measured((hidden_block_in_00_02() + hidden_block_1_in_02_09() + hidden_block_2_in_02_09() +
                  hidden_block_3_in_02_09() + hidden_block_in_02_0e() + hidden_block_1_in_02_11() +
                  hidden_block_2_in_02_11() + hidden_block_3_in_02_11() + hidden_block_4_in_02_11() +
                  hidden_block_1_in_02_13() + hidden_block_2_in_02_13() + hidden_block_3_in_02_13() +
                  hidden_block_in_02_14() + hidden_block_in_06_07() + hidden_block_in_0a07() + hidden_block_in_0a12() +
                  hidden_block_in_0a22() + hidden_block_in_0a2b() + hidden_block_1_in_10_00() + hidden_block_2_in_10_00() +
                  hidden_block_in_10_01() + hidden_block_in_10_02() + hidden_block_1_in_10_04() + hidden_block_2_in_10_04()
                  + hidden_block_in_10_05() + hidden_block_in_10_07() + hidden_block_in_10_09() +
                  red_hidden_block_in_10_0a() + hidden_block_1_in_10_0a() + hidden_block_2_in_10_0a() +
                  hidden_block_in_10_0c() + hidden_block_1_in_11_01() + hidden_block_2_in_11_01() + hidden_block_in_11_08()
                  + hidden_block_in_11_0c() + hidden_block_in_11_0d() + hidden_block_in_12_05() + hidden_block_in_13_0c() +
                  hidden_block_in_13_12() + hidden_block_1_in_13_11() + hidden_block_2_in_13_11() + hidden_block_in_14_04()
                  + hidden_block_in_14_06() + hidden_block_in_15_12() + hidden_block_in_16_25() + hidden_block_in_16_31() +
                  hidden_block_in_17_02()) == 47
              ) &&
              (prev(hidden_block_in_00_02()) + prev(hidden_block_1_in_02_09()) + prev(hidden_block_2_in_02_09()) +
              prev(hidden_block_3_in_02_09()) + prev(hidden_block_in_02_0e()) + prev(hidden_block_1_in_02_11()) +
              prev(hidden_block_2_in_02_11()) + prev(hidden_block_3_in_02_11()) + prev(hidden_block_4_in_02_11()) +
              prev(hidden_block_1_in_02_13()) + prev(hidden_block_2_in_02_13()) + prev(hidden_block_3_in_02_13()) +
              prev(hidden_block_in_02_14()) + prev(hidden_block_in_06_07()) + prev(hidden_block_in_0a07()) +
              prev(hidden_block_in_0a12()) + prev(hidden_block_in_0a22()) + prev(hidden_block_in_0a2b()) +
              prev(hidden_block_1_in_10_00()) + prev(hidden_block_2_in_10_00()) + prev(hidden_block_in_10_01()) +
              prev(hidden_block_in_10_02()) + prev(hidden_block_1_in_10_04()) + prev(hidden_block_2_in_10_04()) +
              prev(hidden_block_in_10_05()) + prev(hidden_block_in_10_07()) + prev(hidden_block_in_10_09()) +
              prev(red_hidden_block_in_10_0a()) + prev(hidden_block_1_in_10_0a()) + prev(hidden_block_2_in_10_0a()) +
              prev(hidden_block_in_10_0c()) + prev(hidden_block_1_in_11_01()) + prev(hidden_block_2_in_11_01()) +
              prev(hidden_block_in_11_08()) + prev(hidden_block_in_11_0c()) + prev(hidden_block_in_11_0d()) +
              prev(hidden_block_in_12_05()) + prev(hidden_block_in_13_0c()) + prev(hidden_block_in_13_12()) +
              prev(hidden_block_1_in_13_11()) + prev(hidden_block_2_in_13_11()) + prev(hidden_block_in_14_04()) +
              prev(hidden_block_in_14_06()) + prev(hidden_block_in_15_12()) + prev(hidden_block_in_16_25()) +
              prev(hidden_block_in_16_31()) + prev(hidden_block_in_17_02())) == 47
)

achievement(
    title = "I Feel Like I've Been Scammed", points = 3, type="missable",
    description = "Get an 'Upgrade' from Chet Rippo in Toad Town",
    id = 321729, badge = "359763", published = "2023-05-26 6:12:18 PM", modified = "2023-06-13 9:41:29 PM",
    trigger = area_world_id() == 1 && prev(chet_rippo_flag_when_on_he_has_been_activated()) == 0 && map_id() == 5 &&
              chet_rippo_flag_when_on_he_has_been_activated() == 1
)

achievement(
    title = "She Does Spells, but Not for Free", points = 3,
    description = "Purchase a 'Special Course' Spell from Merlee in Dry Dry Outpost",
    id = 321730, badge = "359764", published = "2023-05-26 6:12:18 PM", modified = "2023-05-28 5:28:13 PM",
    trigger = area_world_id() == 9 && prev(current_merlee_spell_8bit()) != 20 && current_merlee_spell_8bit() == 20
)

achievement(
    title = "Old School House Party", points = 1,
    description = "Become 8-Bit Mario in Boo's Mansion",
    id = 321731, badge = "359765", published = "2023-05-26 6:12:18 PM", modified = "2023-05-29 7:41:23 PM",
    trigger = area_world_id() == 13 && prev(music_id()) != 65 && music_id() == 65
)

achievement(
    title = "You're A Monster", points = 0,
    description = "Deal enough damage to Whacka and cause him to disappear",
    id = 321732, badge = "359766", published = "2023-05-26 6:12:19 PM", modified = "2023-05-28 5:28:14 PM",
    trigger = area_world_id() == 8 && prev(times_you_have_whacked_whacka()) != 8 && times_you_have_whacked_whacka() >= 8
)

achievement(
    title = "Dayzee'd and Confused", points = 5,
    description = "Defeat an Amazy Dayzee",
    id = 321733, badge = "359767", published = "2023-05-26 6:12:19 PM", modified = "2023-05-28 5:28:14 PM",
    trigger = area_world_id_word() == 19 && battle_id() == 6172 && event_id() == 1 && byte(pointer_2() + 0x1BB) == 0
)

achievement(
    title = "Loading Screen Aficionado", points = 1, type="missable",
    description = "Wait on any Chapter introduction and hear the classic Mario Bros. theme",
    id = 321734, badge = "359768", published = "2023-05-26 6:12:20 PM", modified = "2023-05-29 4:36:29 PM",
    trigger = repeated(900, area_world_id() == 0 && music_id() == 65) && never(area_world_id() != 0)
)

achievement(
    title = "Sorry, Bro!", points = 5, type="missable",
    description = "After getting the Super Boots, go and find Luigi's secret diary BEFORE meeting Lady Bow",
    id = 321737, badge = "359771", published = "2023-05-26 6:12:21 PM", modified = "2023-05-29 8:25:04 PM",
    trigger = area_world_id() == 0 && map_id() == 11 && player_pos_y() <= -70.0 &&
              prev(luigi_state_luigi_is_outside_of_his_room()) == 0 && luigi_state_luigi_is_outside_of_his_room() == 1
)

achievement(
    title = "Survey Says...!", points = 3, type="missable",
    description = "Answer all of the questions correctly in the 64th Trivia Quiz-Off",
    id = 321738, badge = "359772", published = "2023-05-26 6:12:21 PM", modified = "2023-05-28 5:28:16 PM",
    trigger = area_world_id() == 4 && prev(quiz_show_answers_correct_answer_count_for_peach()) == 9 &&
              quiz_show_answers_correct_answer_count_for_peach() == 10
)

achievement(
    title = "Mild Shock", points = 5,
    description = "Use a Thunder Rage from a 'Mystery?' item (Cannot use Double or Triple dip)",
    id = 321863, badge = "359779", published = "2023-05-27 2:01:14 AM", modified = "2023-06-15 12:24:10 AM",
    trigger = once(battle_2() == 52 && prev(item_used_id()) == 150 && item_used_id() == 130) &&
              (always_false() || (never(event_id() == 0) && never(remaining_turns_using_his_turn_mario() == 0)))
)

achievement(
    title = "Quite the New Look", points = 1, type="missable",
    description = "As Peach, disguise yourself as an enemy and look at the mirror in her room",
    id = 321950, badge = "359781", published = "2023-05-27 4:40:53 AM", modified = "2023-06-12 4:05:53 AM",
    trigger = area_world_id() == 4 && map_id() == 8 && npc_dialogue_id() == 69 && npc_group_id() == 20 &&
              prev(also_dialogue()) == 88 && also_dialogue() == 89 && prev(dialogue()) == 82 && dialogue() == 83
)

achievement(
    title = "Shroomy Slots", points = 10,
    description = "Earn a Mushroom from the Slot Machine in Shy Guy's Toybox",
    id = 322960, badge = "360326", published = "2023-05-29 3:20:59 PM", modified = "2023-10-16 3:15:40 PM",
    trigger = area_world_id() == 16 && map_id() == 8 && byte(0x0DBF90) == 1 && (what_2() == 143 || what_2() == 14) &&
              ((prev(item_slots_word()) != 138 && item_slots_word() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit()) != 138 && _16bit() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_2()) != 138 && _16bit_2() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_3()) != 138 && _16bit_3() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_4()) != 138 && _16bit_4() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_5()) != 138 && _16bit_5() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_6()) != 138 && _16bit_6() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_7()) != 138 && _16bit_7() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_8()) != 138 && _16bit_8() == 138 && disable_player_inputs_flag() == 1) ||
               (prev(_16bit_9()) != 138 && _16bit_9() == 138 && disable_player_inputs_flag() == 1))
)

achievement(
    title = "Encyclopedia* (AddSourceless)", points = 25,
    description = "If you want to check what tattles you have missing",
    id = 101551, badge = "85928", published = "2020-03-03 11:49:58 PM", modified = "2020-03-22 3:43:22 AM",
    trigger = tattle_flags_1_bill_blaster() == 1 && tattle_flags_1_cleft() == 1 && tattle_flags_1_monty_mole() == 1 &&
              tattle_flags_1_bandit() == 1 && tattle_flags_1_pokey() == 1 && tattle_flags_1_pokey_mummy() == 1 &&
              tattle_flags_1_swooper() == 1 && tattle_flags_1_buzzy_beetle() == 1 && tattle_flags_2_paragoomba() == 1 &&
              tattle_flags_2_spiked_goomba() == 1 && tattle_flags_2_fuzzy() == 1 && tattle_flags_2_koopa_troopa() == 1 &&
              tattle_flags_2_paratroopa() == 1 && tattle_flags_2_bobomb() == 1 && tattle_flags_2_bullet_bill() == 1 &&
              tattle_flags_3_gloomba() == 1 && tattle_flags_3_paragloomba() == 1 && tattle_flags_3_spiked_gloomba() == 1 &&
              tattle_flags_3_dark_koopa() == 1 && tattle_flags_3_goomba() == 1 && tattle_flags_4_monty_mole_green() == 1 &&
              tattle_flags_4_bzzap() == 1 && tattle_flags_4_crazee_dayzee() == 1 && tattle_flags_4_amazy_dayzee() == 1 &&
              tattle_flags_4_ruff_puff() == 1 && tattle_flags_4_spike() == 1 && tattle_flags_4_gulpit() == 1 &&
              tattle_flags_5_jungle_fuzzy() == 1 && tattle_flags_5_spear_guy() == 1 && tattle_flags_5_lava_bubble() == 1 &&
              tattle_flags_5_spike_top() == 1 && tattle_flags_5_putrid_piranha() == 1 && tattle_flags_5_lakitu() == 1 &&
              tattle_flags_5_spiny() == 1 && tattle_flags_6_groove_guy() == 1 && tattle_flags_6_sky_guy() == 1 &&
              tattle_flags_6_medi_guy() == 1 && tattle_flags_6_pyro_guy() == 1 && tattle_flags_6_spy_guy() == 1 &&
              tattle_flags_6_hurt_plant() == 1 && tattle_flags_6_m_bush() == 1 && tattle_flags_7_stone_chomp() == 1 &&
              tattle_flags_7_piranha_plant() == 1 && tattle_flags_7_forest_fuzzy() == 1 &&
              tattle_flags_7_hyper_goomba() == 1 && tattle_flags_7_hyper_paragoomba() == 1 &&
              tattle_flags_7_hyper_cleft() == 1 && tattle_flags_7_clubba() == 1 && tattle_flags_7_shy_guy() == 1 &&
              tattle_flags_8_magikoopa_bowser_castle() == 1 && tattle_flags_8_red_magikoopa() == 1 &&
              tattle_flags_8_green_magikoopa() == 1 && tattle_flags_8_yellow_magikoopa() == 1 &&
              tattle_flags_8_gray_magikoopa() == 1 && tattle_flags_9_bombshell_bill_blaster() == 1 &&
              tattle_flags_9_bombshell_bill() == 1 && tattle_flags_9_hammer_bros() == 1 &&
              tattle_flags_9_koopatrol() == 1 && tattle_flags_10_ember() == 1 && tattle_flags_10_bony_beetle() == 1 &&
              tattle_flags_10_dry_bones() == 1 && tattle_flags_11_white_clubba() == 1 &&
              tattle_flags_11_frost_piranha() == 1 && tattle_flags_11_swoopula() == 1 &&
              tattle_flags_11_duplighost() == 1 && tattle_flags_12_white_magikoopa() == 1 &&
              tattle_flags_13_blue_goomba() == 1 && tattle_flags_13_red_goomba() == 1 &&
              tattle_flags_13_goomba_king() == 1 && tattle_flags_14_jr_troopa_2() == 1 &&
              tattle_flags_14_jr_troopa_3() == 1 && tattle_flags_14_jr_troopa_4() == 1 &&
              tattle_flags_14_jr_troopa_5() == 1 && tattle_flags_14_jr_troppa_6() == 1 &&
              tattle_flags_15_the_master1() == 1 && tattle_flags_15_the_master2() == 1 &&
              tattle_flags_15_the_master3() == 1 && tattle_flags_15_chan() == 1 && tattle_flags_15_lee() == 1 &&
              tattle_flags_16_big_lantern_ghost() == 1 && tattle_flags_16_lava_piranha() == 1 &&
              tattle_flags_16_lava_bud() == 1 && tattle_flags_16_petit_piranha() == 1 &&
              tattle_flags_17_shy_squad() == 1 && tattle_flags_17_general_guy() == 1 &&
              tattle_flags_17_anti_guy_shy_guy_toy_box() == 1 && tattle_flags_18_buzzar() == 1 &&
              tattle_flags_18_tutankoopa() == 1 && tattle_flags_18_chomp() == 1 &&
              tattle_flags_18_tubba_blubba_windmill() == 1 && tattle_flags_18_tubbas_heart() == 1 &&
              tattle_flags_18_stilt_guy() == 1 && tattle_flags_18_shy_stack() == 1 && tattle_flags_19_bowser() == 1 &&
              tattle_flags_19_g_ninjakoopa() == 1 && tattle_flags_19_r_ninjakoopa() == 1 &&
              tattle_flags_19_b_ninjakoopa() == 1 && tattle_flags_19_y_ninjakoopa() == 1 &&
              tattle_flags_20_electro_blooper() == 1 && tattle_flags_20_super_blooper() == 1 &&
              tattle_flags_20_blooper_baby() == 1 && tattle_flags_21_bowser2() == 1 && tattle_flags_21_bowser3() == 1 &&
              tattle_flags_21_blooper() == 1 && tattle_flags_22_kent_c_koopa() == 1 &&
              tattle_flags_22_huff_n_puff() == 1 && tattle_flags_22_tuff_puff() == 1 && tattle_flags_22_monstar() == 1 &&
              tattle_flags_22_crystal_king() == 1 && tattle_flags_22_crystal_bit() == 1 &&
              ((tattle_flags_1() > prev(tattle_flags_1())) ||
               (tattle_flags_3() > prev(tattle_flags_3())) ||
               (tattle_flags_4() > prev(tattle_flags_4())) ||
               (tattle_flags_6() > prev(tattle_flags_6())) ||
               (tattle_flags_8() > prev(tattle_flags_8())) ||
               (tattle_flags_10() > prev(tattle_flags_10())) ||
               (tattle_flags_12() > prev(tattle_flags_12())) ||
               (tattle_flags_13() > prev(tattle_flags_13())) ||
               (tattle_flags_15() > prev(tattle_flags_15())) ||
               (tattle_flags_16() > prev(tattle_flags_16())) ||
               (tattle_flags_18() > prev(tattle_flags_18())) ||
               (tattle_flags_20() > prev(tattle_flags_20())) ||
               (tattle_flags_21() > prev(tattle_flags_21())))
)

achievement(
    title = "Mighty Morphin' Shy Guys", points = 5,
    description = "Defeat the groups of two Red, Pink, Yellow, Green, and Blue Shy Guys IN ORDER in the Blue Zone of Shy Guys Toybox (Must not use First Strike Badge!)",
    id = 322736, badge = "359998", published = "2023-05-28 8:28:53 PM", modified = "2024-06-03 1:28:20 AM",
    trigger = map_id() == 3 &&
              once(once(once(once(once(once(once(once(once(once(battle_id() == 4096) &&
                  remaining_turns_mario_won_the_battle() > prev(remaining_turns_mario_won_the_battle())) &&
                  battle_id() == 4100) &&
                  remaining_turns_mario_won_the_battle() > prev(remaining_turns_mario_won_the_battle())) &&
                  battle_id() == 4098) &&
                  remaining_turns_mario_won_the_battle() > prev(remaining_turns_mario_won_the_battle())) &&
                  battle_id() == 4101) &&
                  remaining_turns_mario_won_the_battle() > prev(remaining_turns_mario_won_the_battle())) &&
                  battle_id() == 4097) &&
                  remaining_turns_mario_won_the_battle() > prev(remaining_turns_mario_won_the_battle())
              ) &&
              (always_false() || (never(area_world_id() != 16)))
)

leaderboard(
    id = 5385, title = "Jump Attack Highscore",
    description = "Highscore in a single Jump Attack Minigame",
    start  = area_world_id() == 25 && map_id() == 1 && music_id() == 133,
    cancel = area_world_id() == 0 && map_id() == 0,
    submit = map_id() != 1,
    value  = byte(0x10F5C7) * 256 + jump_attack_highest_amount_won_in_a_single_game_16bits(),
    format = "VALUE"
)

leaderboard(
    id = 5384, title = "Jump Attack Total Coins",
    description = "Total Coins won in the Jump Attack Minigame",
    start  = area_world_id() == 25 && map_id() == 1 && music_id() == 133,
    cancel = area_world_id() == 0 && map_id() == 0,
    submit = map_id() != 1,
    value  = byte(0x10F5C1) * 256 + jump_attack_total_coins_won_16bits(),
    format = "VALUE"
)

leaderboard(
    id = 5382, title = "Smash Attack Total Coins",
    description = "Total Coins won in the Smash Attack Minigame",
    start  = area_world_id() == 25 && map_id() == 2 && music_id() == 133,
    cancel = area_world_id() == 0 && map_id() == 0,
    submit = map_id() != 2,
    value  = byte(0x10F5C9) * 256 + smash_attack_total_coins_won_16bits_byte(),
    format = "VALUE"
)

leaderboard(
    id = 5383, title = "Smash Attack Highscore",
    description = "Highscore in a single Smash Attack Minigame",
    start  = area_world_id() == 25 && map_id() == 2 && music_id() == 133,
    cancel = area_world_id() == 0 && map_id() == 0,
    submit = map_id() != 2,
    value  = byte(0x10F5CF) * 256 + smash_attack_highest_amount_won_in_a_single_game_16bits(),
    format = "VALUE"
)

rich_presence_conditional_display(byte(0x0A094A) == 0, "On the Main Menu")

rich_presence_conditional_display(byte(0x0A094A) == 1 && event_id() == 2, "In the Pause Menu at {0} | Level: {1} | {2} Star Spirits Rescued | {3} Total Battles and {4} Star Pieces",
    rich_presence_lookup("Map", area_world_id_word(), MapLookup),
    rich_presence_value("Level", marios_level()),
    rich_presence_lookup("Spirit", star_spirits_low4(), SpiritLookup),
    rich_presence_value("TotalBattles", number_of_battles_word()),
    rich_presence_value("StarPieces", total_star_pieces_collected())
)

rich_presence_conditional_display(byte(0x0A094A) == 1, "Traveling with {0} at {1} | Level: {2} | {3} Star Spirits Rescued | {4} Total Battles and {5} Star Pieces",
    rich_presence_lookup("Partner", partner_currently_out(), PartnerLookup),
    rich_presence_lookup("Map", area_world_id_word(), MapLookup),
    rich_presence_value("Level", marios_level()),
    rich_presence_lookup("Spirit", star_spirits_low4(), SpiritLookup),
    rich_presence_value("TotalBattles", number_of_battles_word()),
    rich_presence_value("StarPieces", total_star_pieces_collected())
)

rich_presence_display("Preparing to play Paper Mario")
