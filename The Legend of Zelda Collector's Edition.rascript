// The Legend of Zelda: Collector's Edition
// #ID = 2198
// #MinimumVersion = 1.3

// $029B45: [8-bit] Game ID? (Probably not, but it might be good enough)
//          
//          0x21=Game Select
//          0x81=Wind Waker Special Movie/Retrospective
//          0x01=Legend of Zelda
//          0x02=Adventure of Link
//          0x03=Ocarina of Time
//          0x83=Majora's Mask
//          0x08=Wind Waker Demo
function game_id_probably_not_but_it_might_be_good_enough() => byte(0x029B45)

// $3C1558: [32-bit BE] -Wind Waker demo- Pointer to dialogue index, NULL when not in dialogue
//          +0x40 = [16-bit BE] Dialogue index
function wind_waker_demo_pointer_to_dialogue_index_null_when_not_in_dialogue() => word_be(0x3C1558)

// $3CB8D2: [16-bit BE] -Wind Waker Demo- Remaining Hearts
function wind_waker_demo_remaining_hearts() => word_be(0x3CB8D2)

// $3CB8D4: [16-bit BE] -Wind Waker Demo- Rupees
function wind_waker_demo_rupees() => word_be(0x3CB8D4)

// $3CB98D: [8-bit] -Wind Waker Demo-
//          
//          bit0=Wind's Requiem Learned
function wind_waker_demo() => byte(0x3CB98D)

// $3CBF07: [8-bit] -Wind Waker Demo-
//          
//          bit6=Killer Bees Quest Completed
//          bit7=Killer Bees Quest Started
function wind_waker_demo() => byte(0x3CBF07)

// $3CBF13: [8-bit] -Wind Waker Demo-
//          
//          bit7=Reward from Ms. Marie
function wind_waker_demo() => byte(0x3CBF13)

// $3CC048: [Bitfield] Pawprint Isle bitflags (1=collected)
//          Bit2 = Piece of Heart
function pawprint_isle_bitflags_1_collected() => byte(0x3CC048)

// $3CCB60: [8-bit] -Wind Waker Demo- Selected Save Slot
//          
//          0x00=Dungeon/None
//          0x01=Stealth
//          0x02=Island
function wind_waker_demo_selected_save_slot() => byte(0x3CCB60)

// $3D4CD0: [8-bit] -Wind Waker demo- Ground state
//          0x00 = In air
//          0xBA = On ground
function wind_waker_demo_ground_state() => byte(0x3D4CD0)

// $3EB0D4: [Float BE] -Wind Waker demo- Link X position (neg-pos = west-east)
function wind_waker_demo_link_x_position_neg_pos_west_east() => float_be(0x3EB0D4)

// $3EB0D8: [Float BE] -Wind Waker demo- Link Y position (up = higher)
function wind_waker_demo_link_y_position_up_higher() => float_be(0x3EB0D8)

// $3EB0DC: [Float BE] -Wind Waker demo- Link Z position (neg-pos = south-north)
function wind_waker_demo_link_z_position_neg_pos_south_north() => float_be(0x3EB0DC)

// $3FDFCC: [32-bit BE] -Wind Waker Demo- Frame Timer
//          
//          Demo ends at 0x10c8c (68748 frames)
function wind_waker_demo_frame_timer() => dword_be(0x3FDFCC)
