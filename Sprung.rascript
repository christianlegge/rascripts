// Sprung: A Game Where Everyone Scores | Sprung: The Dating Game
// #ID = 20416
// #MinimumVersion = 1.3

function us() => word(0xE) == 0xCA65
function eu() => word(0xE) == 0x814B

function in_game() => byte(0x0017f1fc) == 0x20
function in_game_eu() => byte(0x17f57c) == 0x20

function scene_delta() => bit3(0x15a43c) == 1 && prev(bit3(0x15a43c)) != 1
function scene_delta_eu() => bit3(0x15a7bc) == 1 && prev(bit3(0x15a7bc)) != 1

function timer() => byte(0x58 + tbyte(0x158d70))
function timer_eu() => byte(0x58 + tbyte(0x1590f0))

// $1DAC00: [Bitfield] Art Gallery unlocks (0=locked, 1=unlocked)
function ___becky_with_the_boys() => bit0(0x1DAC00)
function ___hopeless_romantic() => bit1(0x1DAC00)
function ___conor_gets_lucky() => bit2(0x1DAC00)
function ___just_friends() => bit3(0x1DAC00)
function ___kiki_and_conor() => bit4(0x1DAC00)
function ___true_love() => bit5(0x1DAC00)
function ___mountain_girl_becky() => bit6(0x1DAC00)
function ___born_to_model() => bit7(0x1DAC00)
function eu___becky_with_the_boys() => bit0(0x1dafe0)
function eu___hopeless_romantic() => bit1(0x1dafe0)
function eu___conor_gets_lucky() => bit2(0x1dafe0)
function eu___just_friends() => bit3(0x1dafe0)
function eu___kiki_and_conor() => bit4(0x1dafe0)
function eu___true_love() => bit5(0x1dafe0)
function eu___mountain_girl_becky() => bit6(0x1dafe0)
function eu___born_to_model() => bit7(0x1dafe0)
function art_gallery_unlocks_0_locked_1_unlocked() => byte(0x1DAC00)

// $1DAC01: [Bitfield] Art Gallery unlocks (0=locked, 1=unlocked)
function ___born_to_waitress() => bit0(0x1DAC01)
function ___soulmates() => bit1(0x1DAC01)
function ___blind_date_fantasy() => bit2(0x1DAC01)
function ___day_at_the_spa() => bit3(0x1DAC01)
function ___pulling_the_strings() => bit4(0x1DAC01)
function ___strike_a_pose() => bit5(0x1DAC01)
function ___poor_poor_danny() => bit6(0x1DAC01)
function ___lick_my_boot() => bit7(0x1DAC01)
function eu___born_to_waitress() => bit0(0x1dafe1)
function eu___soulmates() => bit1(0x1dafe1)
function eu___blind_date_fantasy() => bit2(0x1dafe1)
function eu___day_at_the_spa() => bit3(0x1dafe1)
function eu___pulling_the_strings() => bit4(0x1dafe1)
function eu___strike_a_pose() => bit5(0x1dafe1)
function eu___poor_poor_danny() => bit6(0x1dafe1)
function eu___lick_my_boot() => bit7(0x1dafe1)
function art_gallery_unlocks_0_locked_1_unlocked() => byte(0x1DAC01)

// $1DAC02: [Bitfield] Art Gallery unlocks (0=locked, 1=unlocked)
function ___capture_the_heart() => bit0(0x1DAC02)
function ___charge_it() => bit1(0x1DAC02)
function ___hello_ladies() => bit2(0x1DAC02)
function ___big_decision() => bit3(0x1DAC02)
function ___revealing_conor() => bit4(0x1DAC02)
function ___breaking_free() => bit5(0x1DAC02)
function ___becky_and_brett() => bit6(0x1DAC02)
function ___elliot_watch_out() => bit7(0x1DAC02)
function eu___capture_the_heart() => bit0(0x1dafe2)
function eu___charge_it() => bit1(0x1dafe2)
function eu___hello_ladies() => bit2(0x1dafe2)
function eu___big_decision() => bit3(0x1dafe2)
function eu___revealing_conor() => bit4(0x1dafe2)
function eu___breaking_free() => bit5(0x1dafe2)
function eu___becky_and_brett() => bit6(0x1dafe2)
function eu___elliot_watch_out() => bit7(0x1dafe2)
function art_gallery_unlocks_0_locked_1_unlocked() => byte(0x1DAC02)

// $1DAC03: [Bitfield] Art Gallery unlocks (0=locked, 1=unlocked)
function ___find_me_at_the_club() => bit0(0x1DAC03)
function ___make_peace() => bit1(0x1DAC03)
function ___three_of_a_kind() => bit2(0x1DAC03)
function ___erica_and_danny() => bit3(0x1DAC03)
function ___hard_day_at_work() => bit4(0x1DAC03)
function ___sprung() => bit5(0x1DAC03)
function ___dan_the_ladies_man() => bit6(0x1DAC03)
function ___rub_a_dub_dub() => bit7(0x1DAC03)
function eu___find_me_at_the_club() => bit0(0x1dafe3)
function eu___make_peace() => bit1(0x1dafe3)
function eu___three_of_a_kind() => bit2(0x1dafe3)
function eu___erica_and_danny() => bit3(0x1dafe3)
function eu___hard_day_at_work() => bit4(0x1dafe3)
function eu___sprung() => bit5(0x1dafe3)
function eu___dan_the_ladies_man() => bit6(0x1dafe3)
function eu___rub_a_dub_dub() => bit7(0x1dafe3)
function art_gallery_unlocks_0_locked_1_unlocked() => byte(0x1DAC03)

// $1DAC04: [Bitfield] Art Gallery unlocks (0=locked, 1=unlocked)
function ___double_date_dance() => bit0(0x1DAC04)
function ___erica_on_the_deck() => bit1(0x1DAC04)
function ___alex_and_shana() => bit2(0x1DAC04)
function ___game_on() => bit3(0x1DAC04)
function ___do_not_disturb() => bit4(0x1DAC04)
function ___sanctuary() => bit5(0x1DAC04)
function ___im_too_sexy() => bit6(0x1DAC04)
function ___downhill_daredevils() => bit7(0x1DAC04)
function eu___double_date_dance() => bit0(0x1dafe4)
function eu___erica_on_the_deck() => bit1(0x1dafe4)
function eu___alex_and_shana() => bit2(0x1dafe4)
function eu___game_on() => bit3(0x1dafe4)
function eu___do_not_disturb() => bit4(0x1dafe4)
function eu___sanctuary() => bit5(0x1dafe4)
function eu___im_too_sexy() => bit6(0x1dafe4)
function eu___downhill_daredevils() => bit7(0x1dafe4)
function art_gallery_unlocks_0_locked_1_unlocked() => byte(0x1DAC04)

// $1DAC05: [Bitfield] Art Gallery unlocks (0=locked, 1=unlocked)
function ___leanne_and_lucas() => bit0(0x1DAC05)
function ___rematchmaker() => bit1(0x1DAC05)
function ___reservoir_pups() => bit2(0x1DAC05)
function ___brett_the_funghi() => bit3(0x1DAC05)
function ___becky_in_pencil() => bit4(0x1DAC05)
function ___who_the_man() => bit5(0x1DAC05)
function ___scaredy_cat() => bit6(0x1DAC05)
function ___stud() => bit7(0x1DAC05)
function eu___leanne_and_lucas() => bit0(0x1dafe5)
function eu___rematchmaker() => bit1(0x1dafe5)
function eu___reservoir_pups() => bit2(0x1dafe5)
function eu___brett_the_funghi() => bit3(0x1dafe5)
function eu___becky_in_pencil() => bit4(0x1dafe5)
function eu___who_the_man() => bit5(0x1dafe5)
function eu___scaredy_cat() => bit6(0x1dafe5)
function eu___stud() => bit7(0x1dafe5)
function art_gallery_unlocks_0_locked_1_unlocked() => byte(0x1DAC05)

// $1DAC06: [Bitfield] Art Gallery unlocks (0=locked, 1=unlocked)
function ___smile_for_the_camera() => bit0(0x1DAC06)
function ___conor_is_sprung() => bit1(0x1DAC06)
function ___hooked_up() => bit2(0x1DAC06)
function ___sprung_gang() => bit3(0x1DAC06)
function eu___smile_for_the_camera() => bit0(0x1dafe6)
function eu___conor_is_sprung() => bit1(0x1dafe6)
function eu___hooked_up() => bit2(0x1dafe6)
function eu___sprung_gang() => bit3(0x1dafe6)
function art_gallery_unlocks_0_locked_1_unlocked() => byte(0x1DAC06)

// $1E10A0: [8-bit] Current character
//          0x00 = Brett
//          0x01 = Becky
function current_character() => byte(0x1E10A0)
function current_character_eu() => byte(0x1E2200)

// $1E10E0: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___nail_file() => bit0(0x1E10E0)
function ___bar_towel() => bit1(0x1E10E0)
function ___cell_phone() => bit2(0x1E10E0)
function ___beckys__cell_phone() => bit3(0x1E10E0)
function ___bretts__cell_phone() => bit4(0x1E10E0)
function ___ericas__cell_phone() => bit5(0x1E10E0)
function ___kikis__cell_phone() => bit6(0x1E10E0)
function ___dannys__cell_phone() => bit7(0x1E10E0)
function eu___nail_file() => bit0(0x1e14c0)
function eu___bar_towel() => bit1(0x1e14c0)
function eu___cell_phone() => bit2(0x1e14c0)
function eu___beckys__cell_phone() => bit3(0x1e14c0)
function eu___bretts__cell_phone() => bit4(0x1e14c0)
function eu___ericas__cell_phone() => bit5(0x1e14c0)
function eu___kikis__cell_phone() => bit6(0x1e14c0)
function eu___dannys__cell_phone() => bit7(0x1e14c0)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10E0)

// $1E10E1: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___lucas__cell_phone() => bit0(0x1E10E1)
function ___alexs__cell_phone() => bit1(0x1E10E1)
function ___seans__cell_phone() => bit2(0x1E10E1)
function ___leannes__cell_phone() => bit3(0x1E10E1)
function ___shanas__cell_phone() => bit4(0x1E10E1)
function ___elliots__cell_phone() => bit5(0x1E10E1)
function ___conors__cell_phone() => bit6(0x1E10E1)
function ___conors_fathers__cell_phone() => bit7(0x1E10E1)
function eu___lucas__cell_phone() => bit0(0x1e14c1)
function eu___alexs__cell_phone() => bit1(0x1e14c1)
function eu___seans__cell_phone() => bit2(0x1e14c1)
function eu___leannes__cell_phone() => bit3(0x1e14c1)
function eu___shanas__cell_phone() => bit4(0x1e14c1)
function eu___elliots__cell_phone() => bit5(0x1e14c1)
function eu___conors__cell_phone() => bit6(0x1e14c1)
function eu___conors_fathers__cell_phone() => bit7(0x1e14c1)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10E1)

// $1E10E2: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___makeup_kit() => bit0(0x1E10E2)
function ___blush_makeup_kit() => bit1(0x1E10E2)
function ___eyeliner_makeup_kit() => bit2(0x1E10E2)
function ___eyeshadow_makeup_kit() => bit3(0x1E10E2)
function ___lipstick_makeup_kit() => bit4(0x1E10E2)
function ___coverup_makeup_kit() => bit5(0x1E10E2)
function ___mascara_makeup_kit() => bit6(0x1E10E2)
function ___lipliner_makeup_kit() => bit7(0x1E10E2)
function eu___makeup_kit() => bit0(0x1e14c2)
function eu___blush_makeup_kit() => bit1(0x1e14c2)
function eu___eyeliner_makeup_kit() => bit2(0x1e14c2)
function eu___eyeshadow_makeup_kit() => bit3(0x1e14c2)
function eu___lipstick_makeup_kit() => bit4(0x1e14c2)
function eu___coverup_makeup_kit() => bit5(0x1e14c2)
function eu___mascara_makeup_kit() => bit6(0x1e14c2)
function eu___lipliner_makeup_kit() => bit7(0x1e14c2)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10E2)

// $1E10E3: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___pepper_spray() => bit0(0x1E10E3)
function ___chewing_gum() => bit1(0x1E10E3)
function ___best_friends_forever_necklace() => bit2(0x1E10E3)
function ___microchip() => bit3(0x1E10E3)
function ___laxatives() => bit4(0x1E10E3)
function ___hairbrush() => bit5(0x1E10E3)
function ___texas_flame_hot_sauce() => bit6(0x1E10E3)
function ___sweatshirt() => bit7(0x1E10E3)
function eu___pepper_spray() => bit0(0x1e14c3)
function eu___chewing_gum() => bit1(0x1e14c3)
function eu___best_friends_forever_necklace() => bit2(0x1e14c3)
function eu___microchip() => bit3(0x1e14c3)
function eu___laxatives() => bit4(0x1e14c3)
function eu___hairbrush() => bit5(0x1e14c3)
function eu___texas_flame_hot_sauce() => bit6(0x1e14c3)
function eu___sweatshirt() => bit7(0x1e14c3)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10E3)

// $1E10E4: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___bracelet() => bit0(0x1E10E4)
function ___rose() => bit1(0x1E10E4)
function ___money() => bit2(0x1E10E4)
function ___twenty_bucks_money() => bit3(0x1E10E4)
function ___twentyfive_bucks_money() => bit4(0x1E10E4)
function ___fifty_bucks_money() => bit5(0x1E10E4)
function ___one_hundred_bucks_money() => bit6(0x1E10E4)
function ___five_hundred_bucks_money() => bit7(0x1E10E4)
function eu___bracelet() => bit0(0x1e14c4)
function eu___rose() => bit1(0x1e14c4)
function eu___money() => bit2(0x1e14c4)
function eu___twenty_bucks_money() => bit3(0x1e14c4)
function eu___twentyfive_bucks_money() => bit4(0x1e14c4)
function eu___fifty_bucks_money() => bit5(0x1e14c4)
function eu___one_hundred_bucks_money() => bit6(0x1e14c4)
function eu___five_hundred_bucks_money() => bit7(0x1e14c4)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10E4)

// $1E10E5: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___a_thousand_bucks_money() => bit0(0x1E10E5)
function ___two_thousand_bucks_money() => bit1(0x1E10E5)
function ___five_thousand_bucks_money() => bit2(0x1E10E5)
function ___joke_book() => bit3(0x1E10E5)
function ___the_one_about_the_guy_with_the_5_legs_joke_book() => bit4(0x1E10E5)
function ___the_blonde_joke_joke_book() => bit5(0x1E10E5)
function ___the_hippie_joke_joke_book() => bit6(0x1E10E5)
function ___the_skunk_joke_joke_book() => bit7(0x1E10E5)
function eu___a_thousand_bucks_money() => bit0(0x1e14c5)
function eu___two_thousand_bucks_money() => bit1(0x1e14c5)
function eu___five_thousand_bucks_money() => bit2(0x1e14c5)
function eu___joke_book() => bit3(0x1e14c5)
function eu___the_one_about_the_guy_with_the_5_legs_joke_book() => bit4(0x1e14c5)
function eu___the_blonde_joke_joke_book() => bit5(0x1e14c5)
function eu___the_hippie_joke_joke_book() => bit6(0x1e14c5)
function eu___the_skunk_joke_joke_book() => bit7(0x1e14c5)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10E5)

// $1E10E6: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___yo_mama_joke_joke_book() => bit0(0x1E10E6)
function ___magic_bandana() => bit1(0x1E10E6)
function ___sunglasses() => bit2(0x1E10E6)
function ___vintage_lp() => bit3(0x1E10E6)
function ___pocket_knife() => bit4(0x1E10E6)
function ___love_beads() => bit5(0x1E10E6)
function ___incense() => bit6(0x1E10E6)
function ___sneakers() => bit7(0x1E10E6)
function eu___yo_mama_joke_joke_book() => bit0(0x1e14c6)
function eu___magic_bandana() => bit1(0x1e14c6)
function eu___sunglasses() => bit2(0x1e14c6)
function eu___vintage_lp() => bit3(0x1e14c6)
function eu___pocket_knife() => bit4(0x1e14c6)
function eu___love_beads() => bit5(0x1e14c6)
function eu___incense() => bit6(0x1e14c6)
function eu___sneakers() => bit7(0x1e14c6)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10E6)

// $1E10E7: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___high_heels() => bit0(0x1E10E7)
function ___gogo_boots() => bit1(0x1E10E7)
function ___slippers() => bit2(0x1E10E7)
function ___business_card() => bit3(0x1E10E7)
function ___lint_brush() => bit4(0x1E10E7)
function ___vip_sanctuary_club_pass() => bit5(0x1E10E7)
function ___baby_picture_of_sean() => bit6(0x1E10E7)
function ___peace_sign_button() => bit7(0x1E10E7)
function eu___high_heels() => bit0(0x1e14c7)
function eu___gogo_boots() => bit1(0x1e14c7)
function eu___slippers() => bit2(0x1e14c7)
function eu___business_card() => bit3(0x1e14c7)
function eu___lint_brush() => bit4(0x1e14c7)
function eu___vip_sanctuary_club_pass() => bit5(0x1e14c7)
function eu___baby_picture_of_sean() => bit6(0x1e14c7)
function eu___peace_sign_button() => bit7(0x1e14c7)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10E7)

// $1E10E8: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___perfume_from_kiki() => bit0(0x1E10E8)
function ___perfume_from_erica() => bit1(0x1E10E8)
function ___watch() => bit2(0x1E10E8)
function ___hairpin() => bit3(0x1E10E8)
function ___glass_of_water() => bit4(0x1E10E8)
function ___tray_of_food() => bit5(0x1E10E8)
function ___modeling_portfolio() => bit6(0x1E10E8)
function ___pinecone() => bit7(0x1E10E8)
function eu___perfume_from_kiki() => bit0(0x1e14c8)
function eu___perfume_from_erica() => bit1(0x1e14c8)
function eu___watch() => bit2(0x1e14c8)
function eu___hairpin() => bit3(0x1e14c8)
function eu___glass_of_water() => bit4(0x1e14c8)
function eu___tray_of_food() => bit5(0x1e14c8)
function eu___modeling_portfolio() => bit6(0x1e14c8)
function eu___pinecone() => bit7(0x1e14c8)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10E8)

// $1E10E9: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___raw_dead_fish() => bit0(0x1E10E9)
function ___box_of_chocolates() => bit1(0x1E10E9)
function ___granny_panties() => bit2(0x1E10E9)
function ___photo_evidence() => bit3(0x1E10E9)
function ___rabbits_foot() => bit4(0x1E10E9)
function ___toadstools() => bit5(0x1E10E9)
function ___camera() => bit6(0x1E10E9)
function ___devils_zephyr_cologne() => bit7(0x1E10E9)
function eu___raw_dead_fish() => bit0(0x1e14c9)
function eu___box_of_chocolates() => bit1(0x1e14c9)
function eu___granny_panties() => bit2(0x1e14c9)
function eu___photo_evidence() => bit3(0x1e14c9)
function eu___rabbits_foot() => bit4(0x1e14c9)
function eu___toadstools() => bit5(0x1e14c9)
function eu___camera() => bit6(0x1e14c9)
function eu___devils_zephyr_cologne() => bit7(0x1e14c9)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10E9)

// $1E10EA: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___gold_medal() => bit0(0x1E10EA)
function ___silver_medal() => bit1(0x1E10EA)
function ___bronze_medal() => bit2(0x1E10EA)
function ___unlocking_social_anxiety() => bit3(0x1E10EA)
function ___ear_plugs() => bit4(0x1E10EA)
function ___book_of_horoscopes() => bit5(0x1E10EA)
function ___heimlich_maneuver() => bit6(0x1E10EA)
function ___amorous_action() => bit7(0x1E10EA)
function eu___gold_medal() => bit0(0x1e14cA)
function eu___silver_medal() => bit1(0x1e14cA)
function eu___bronze_medal() => bit2(0x1e14cA)
function eu___unlocking_social_anxiety() => bit3(0x1e14cA)
function eu___ear_plugs() => bit4(0x1e14cA)
function eu___book_of_horoscopes() => bit5(0x1e14cA)
function eu___heimlich_maneuver() => bit6(0x1e14cA)
function eu___amorous_action() => bit7(0x1e14cA)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10EA)

// $1E10EB: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___golden_line_notebook_for_becky() => bit0(0x1E10EB)
function ___what_ho_bird_mountain_golden_line_notebook() => bit1(0x1E10EB)
function ___ive_wanted_to_be_a_model_ever_since_i_was_three_years_old_golden_line_notebook() => bit2(0x1E10EB)
function ___eat_yellow_snow_and_die_golden_line_notebook() => bit3(0x1E10EB)
function ___you_tell_me_buuuddy_golden_line_notebook() => bit4(0x1E10EB)
function ___hey_my_grandma_called_she_wants_her_hat_back_golden_line_notebook() => bit5(0x1E10EB)
function ___do_you_ever_go_skinny_dipping_golden_line_notebook() => bit6(0x1E10EB)
function ___probably_the_same_place_you_left_your_brain_treehugger_golden_line_notebook() => bit7(0x1E10EB)
function eu___golden_line_notebook_for_becky() => bit0(0x1e14cB)
function eu___what_ho_bird_mountain_golden_line_notebook() => bit1(0x1e14cB)
function eu___ive_wanted_to_be_a_model_ever_since_i_was_three_years_old_golden_line_notebook() => bit2(0x1e14cB)
function eu___eat_yellow_snow_and_die_golden_line_notebook() => bit3(0x1e14cB)
function eu___you_tell_me_buuuddy_golden_line_notebook() => bit4(0x1e14cB)
function eu___hey_my_grandma_called_she_wants_her_hat_back_golden_line_notebook() => bit5(0x1e14cB)
function eu___do_you_ever_go_skinny_dipping_golden_line_notebook() => bit6(0x1e14cB)
function eu___probably_the_same_place_you_left_your_brain_treehugger_golden_line_notebook() => bit7(0x1e14cB)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10EB)

// $1E10EC: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___yellow_yoyo_yawning_youre_yuck_golden_line_notebook() => bit0(0x1E10EC)
function ___one_time_my_friend_mixed_ketchup_and_apple_sauce_and_i_ate_it_golden_line_notebook() => bit1(0x1E10EC)
function ___this_book_is_as_inane_as_you_are_golden_line_notebook() => bit2(0x1E10EC)
function ___you_wanna_look_down_girls_shirts_golden_line_notebook() => bit3(0x1E10EC)
function ___keep_him_wondering_if_hes_going_to_get_a_goodnight_kiss_golden_line_notebook() => bit4(0x1E10EC)
function ___she_only_does_it_because_she_lost_her_pet_lizard_in_a_tragic_boating_accident_golden_line_notebook() => bit5(0x1E10EC)
function ___waaaaaaaaaaaaaaaaake_up_golden_line_notebook() => bit6(0x1E10EC)
function ___he_lives_in_a_cave_plotting_evil_against_us_kids_golden_line_notebook() => bit7(0x1E10EC)
function eu___yellow_yoyo_yawning_youre_yuck_golden_line_notebook() => bit0(0x1e14cC)
function eu___one_time_my_friend_mixed_ketchup_and_apple_sauce_and_i_ate_it_golden_line_notebook() => bit1(0x1e14cC)
function eu___this_book_is_as_inane_as_you_are_golden_line_notebook() => bit2(0x1e14cC)
function eu___you_wanna_look_down_girls_shirts_golden_line_notebook() => bit3(0x1e14cC)
function eu___keep_him_wondering_if_hes_going_to_get_a_goodnight_kiss_golden_line_notebook() => bit4(0x1e14cC)
function eu___she_only_does_it_because_she_lost_her_pet_lizard_in_a_tragic_boating_accident_golden_line_notebook() => bit5(0x1e14cC)
function eu___waaaaaaaaaaaaaaaaake_up_golden_line_notebook() => bit6(0x1e14cC)
function eu___he_lives_in_a_cave_plotting_evil_against_us_kids_golden_line_notebook() => bit7(0x1e14cC)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10EC)

// $1E10ED: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___haha_bretts_a_rd_funny_golden_line_notebook() => bit0(0x1E10ED)
function ___shut_up_big_head_golden_line_notebook() => bit1(0x1E10ED)
function ___remember_that_time_you_needed_someone_to_hook_up_with_your_boyfriend_and_i_was_right_there_helping_you_out_golden_line_notebook() => bit2(0x1E10ED)
function ___i_put_sixteen_laxatives_in_your_drink_golden_line_notebook() => bit3(0x1E10ED)
function ___maybe_the_voices_in_my_head_say_a_lot_of_things_golden_line_notebook() => bit4(0x1E10ED)
function ___wisdom_stone() => bit5(0x1E10ED)
function ___candy() => bit6(0x1E10ED)
function ___golden_line_notebook_for_brett() => bit7(0x1E10ED)
function eu___haha_bretts_a_rd_funny_golden_line_notebook() => bit0(0x1e14cD)
function eu___shut_up_big_head_golden_line_notebook() => bit1(0x1e14cD)
function eu___remember_that_time_you_needed_someone_to_hook_up_with_your_boyfriend_and_i_was_right_there_helping_you_out_golden_line_notebook() => bit2(0x1e14cD)
function eu___i_put_sixteen_laxatives_in_your_drink_golden_line_notebook() => bit3(0x1e14cD)
function eu___maybe_the_voices_in_my_head_say_a_lot_of_things_golden_line_notebook() => bit4(0x1e14cD)
function eu___wisdom_stone() => bit5(0x1e14cD)
function eu___candy() => bit6(0x1e14cD)
function eu___golden_line_notebook_for_brett() => bit7(0x1e14cD)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10ED)

// $1E10EE: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___no_you_look_like_an_aerobics_instructor_golden_line_notebook() => bit0(0x1E10EE)
function ___womens_television_has_come_a_long_way_in_terms_of_story_development_and_production_quality_lucas_golden_line_notebook() => bit1(0x1E10EE)
function ___this_purple_one_here_looks_nice_golden_line_notebook() => bit2(0x1E10EE)
function ___none_of_your_beeswax_biznatch_ow_yeah_how_do_you_like_it_huh_golden_line_notebook() => bit3(0x1E10EE)
function ___no_im_not_talking_about_sex_im_talking_about_fungus_golden_line_notebook() => bit4(0x1E10EE)
function ___moo_golden_line_notebook() => bit5(0x1E10EE)
function ___smashing_to_make_your_acquaintance_im_bartholemew_arugula_paisley_golden_line_notebook() => bit6(0x1E10EE)
function ___look_you_sit_under_a_cows_ass_youre_gonna_get_crapped_on_golden_line_notebook() => bit7(0x1E10EE)
function eu___no_you_look_like_an_aerobics_instructor_golden_line_notebook() => bit0(0x1e14cE)
function eu___womens_television_has_come_a_long_way_in_terms_of_story_development_and_production_quality_lucas_golden_line_notebook() => bit1(0x1e14cE)
function eu___this_purple_one_here_looks_nice_golden_line_notebook() => bit2(0x1e14cE)
function eu___none_of_your_beeswax_biznatch_ow_yeah_how_do_you_like_it_huh_golden_line_notebook() => bit3(0x1e14cE)
function eu___no_im_not_talking_about_sex_im_talking_about_fungus_golden_line_notebook() => bit4(0x1e14cE)
function eu___moo_golden_line_notebook() => bit5(0x1e14cE)
function eu___smashing_to_make_your_acquaintance_im_bartholemew_arugula_paisley_golden_line_notebook() => bit6(0x1e14cE)
function eu___look_you_sit_under_a_cows_ass_youre_gonna_get_crapped_on_golden_line_notebook() => bit7(0x1e14cE)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10EE)

// $1E10EF: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___you_couldnt_be_more_deep_if_i_threw_you_down_the_well_myself_golden_line_notebook() => bit0(0x1E10EF)
function ___can_i_have_your_underwear_im_supposed_to_get_womens_but_nobody_would_know_the_difference_if_you_gave_me_yours_golden_line_notebook() => bit1(0x1E10EF)
function ___i_dont_think_his_cousin_counts_dude_golden_line_notebook() => bit2(0x1E10EF)
function ___you_dont_go_to_dippy_donuts_if_youre_looking_for_a_steak_golden_line_notebook() => bit3(0x1E10EF)
function ___yeah_it_is_kind_of_hard_for_me_to_be_as_classy_as_a_guy_who_dresses_like_a_pirate_golden_line_notebook() => bit4(0x1E10EF)
function ___i_hope_you_dont_think_me_forward_but_i_have_an_overwhelming_urge_to_chew_on_you_golden_line_notebook() => bit5(0x1E10EF)
function ___i_dont_know_id_say_youre_about_as_cute_as_a_chickpea_on_some_cornpone_golden_line_notebook() => bit6(0x1E10EF)
function ___im_going_to_a_players_anonymous_meeting_after_this_wanna_come_golden_line_notebook() => bit7(0x1E10EF)
function eu___you_couldnt_be_more_deep_if_i_threw_you_down_the_well_myself_golden_line_notebook() => bit0(0x1e14cF)
function eu___can_i_have_your_underwear_im_supposed_to_get_womens_but_nobody_would_know_the_difference_if_you_gave_me_yours_golden_line_notebook() => bit1(0x1e14cF)
function eu___i_dont_think_his_cousin_counts_dude_golden_line_notebook() => bit2(0x1e14cF)
function eu___you_dont_go_to_dippy_donuts_if_youre_looking_for_a_steak_golden_line_notebook() => bit3(0x1e14cF)
function eu___yeah_it_is_kind_of_hard_for_me_to_be_as_classy_as_a_guy_who_dresses_like_a_pirate_golden_line_notebook() => bit4(0x1e14cF)
function eu___i_hope_you_dont_think_me_forward_but_i_have_an_overwhelming_urge_to_chew_on_you_golden_line_notebook() => bit5(0x1e14cF)
function eu___i_dont_know_id_say_youre_about_as_cute_as_a_chickpea_on_some_cornpone_golden_line_notebook() => bit6(0x1e14cF)
function eu___im_going_to_a_players_anonymous_meeting_after_this_wanna_come_golden_line_notebook() => bit7(0x1e14cF)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10EF)

// $1E10F0: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___chocolate_fudge_actually_golden_line_notebook() => bit0(0x1E10F0)
function ___earrings() => bit1(0x1E10F0)
function ___umbrella() => bit2(0x1E10F0)
function ___mp3_player() => bit3(0x1E10F0)
function ___dragon_tattoo() => bit4(0x1E10F0)
function ___carnation() => bit5(0x1E10F0)
function ___book_of_love_sonnets() => bit6(0x1E10F0)
function ___music_box() => bit7(0x1E10F0)
function eu___chocolate_fudge_actually_golden_line_notebook() => bit0(0x1e14d0)
function eu___earrings() => bit1(0x1e14d0)
function eu___umbrella() => bit2(0x1e14d0)
function eu___mp3_player() => bit3(0x1e14d0)
function eu___dragon_tattoo() => bit4(0x1e14d0)
function eu___carnation() => bit5(0x1e14d0)
function eu___book_of_love_sonnets() => bit6(0x1e14d0)
function eu___music_box() => bit7(0x1e14d0)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10F0)

// $1E10F1: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___red_pendant() => bit0(0x1E10F1)
function ___green_pendant() => bit1(0x1E10F1)
function ___blue_pendant() => bit2(0x1E10F1)
function ___hay() => bit3(0x1E10F1)
function ___bucket() => bit4(0x1E10F1)
function ___candle() => bit5(0x1E10F1)
function ___cards() => bit6(0x1E10F1)
function ___cocoa() => bit7(0x1E10F1)
function eu___red_pendant() => bit0(0x1e14d1)
function eu___green_pendant() => bit1(0x1e14d1)
function eu___blue_pendant() => bit2(0x1e14d1)
function eu___hay() => bit3(0x1e14d1)
function eu___bucket() => bit4(0x1e14d1)
function eu___candle() => bit5(0x1e14d1)
function eu___cards() => bit6(0x1e14d1)
function eu___cocoa() => bit7(0x1e14d1)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10F1)

// $1E10F2: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___finger_printing_kit() => bit0(0x1E10F2)
function ___gasoline() => bit1(0x1E10F2)
function ___gift_card() => bit2(0x1E10F2)
function ___hedgehog() => bit3(0x1E10F2)
function ___id() => bit4(0x1E10F2)
function ___drinks() => bit5(0x1E10F2)
function ___radio() => bit6(0x1E10F2)
function ___keys() => bit7(0x1E10F2)
function eu___finger_printing_kit() => bit0(0x1e14d2)
function eu___gasoline() => bit1(0x1e14d2)
function eu___gift_card() => bit2(0x1e14d2)
function eu___hedgehog() => bit3(0x1e14d2)
function eu___id() => bit4(0x1e14d2)
function eu___drinks() => bit5(0x1e14d2)
function eu___radio() => bit6(0x1e14d2)
function eu___keys() => bit7(0x1e14d2)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10F2)

// $1E10F3: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___lighter() => bit0(0x1E10F3)
function ___magic_dove() => bit1(0x1E10F3)
function ___mittens() => bit2(0x1E10F3)
function ___lock_pick() => bit3(0x1E10F3)
function ___chips() => bit4(0x1E10F3)
function ___racing_poles() => bit5(0x1E10F3)
function ___silver_ring() => bit6(0x1E10F3)
function ___ski_equipment() => bit7(0x1E10F3)
function eu___lighter() => bit0(0x1e14d3)
function eu___magic_dove() => bit1(0x1e14d3)
function eu___mittens() => bit2(0x1e14d3)
function eu___lock_pick() => bit3(0x1e14d3)
function eu___chips() => bit4(0x1e14d3)
function eu___racing_poles() => bit5(0x1e14d3)
function eu___silver_ring() => bit6(0x1e14d3)
function eu___ski_equipment() => bit7(0x1e14d3)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10F3)

// $1E10F4: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___sleeping_bag() => bit0(0x1E10F4)
function ___styrofoam_cup() => bit1(0x1E10F4)
function ___swizzle_stick() => bit2(0x1E10F4)
function ___pink_wallet() => bit3(0x1E10F4)
function ___brown_wallet() => bit4(0x1E10F4)
function ___comb() => bit5(0x1E10F4)
function ___nintendo_ds() => bit6(0x1E10F4)
function ___gloves() => bit7(0x1E10F4)
function eu___sleeping_bag() => bit0(0x1e14d4)
function eu___styrofoam_cup() => bit1(0x1e14d4)
function eu___swizzle_stick() => bit2(0x1e14d4)
function eu___pink_wallet() => bit3(0x1e14d4)
function eu___brown_wallet() => bit4(0x1e14d4)
function eu___comb() => bit5(0x1e14d4)
function eu___nintendo_ds() => bit6(0x1e14d4)
function eu___gloves() => bit7(0x1e14d4)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10F4)

// $1E10F5: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___baseball_hat() => bit0(0x1E10F5)
function ___hand_warmers() => bit1(0x1E10F5)
function eu___baseball_hat() => bit0(0x1e14d5)
function eu___hand_warmers() => bit1(0x1e14d5)
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10F5)

// $1E1FA8: [8-bit] Scene index for Brett
//          0x01 = Lift Off!
//          0x02 = The Locker Room
//          0x03 = Ski Brat
//          0x04 = Big Babe Hunting
//          0x05 = 3's a Crowd
//          0x06 = 3's a Crowd II
//          0x07 = The Crush
//          0x08 = 3s a Crowd ... Thrice
//          0x09 = Indecent Proposal
//          0x0a = Playing Doubles
//          0x0b = Playing Doubles (2)
//          0x0c = Cupid Behind the Scenes
//          0x0d = Bar
//          0x0e = Cupid Behind the Scenes (2)
//          0x0f = Scavenger Hunt
//          0x10 = Nightskiing
//          0x11 = Forlorn Friend
//          0x12 = Stand-in
//          0x13 = The Sting
//          0x14 = The Hot Tub Rub
//          0x15 = The Hot Tub Rub (2)
//          0x16 = Reunite the Lovers
//          0x17 = The Ex File
//          0x18 = Hormone Havoc
//          0x19 = Sprung!
//          0x1a = Sprung: The Final Chapter
//          0x1b = Bonus: Ski Noir
//          0x1c = Bonus: Conor Sez!
//          0x1d = Bonus: Truth or Dare!
//          0x1e = Bonus: Dumped!
//          0x1f = Bonus: 2 Fast 2 Flirtatious
//          0x20 = Bonus: Big Spender
//          0x21 = Bonus: Club Mare
//          0x23 = Golden Bonus: Dan'd Up Stand-up!
function scene_index_for_brett() => byte(0x1E1FA8)
function scene_index_for_brett_eu() => byte(0x1e2388)

brett_scenes = {
    0x01: "Lift Off!",
    0x02: "The Locker Room",
    0x03: "Ski Brat",
    0x04: "Big Babe Hunting",
    0x05: "3's a Crowd",
    0x06: "3's a Crowd II",
    0x07: "The Crush",
    0x08: "3s a Crowd ... Thrice",
    0x09: "Indecent Proposal",
    0x0a: "Playing Doubles",
    0x0b: "Playing Doubles",
    0x0c: "Cupid Behind the Scenes",
    0x0d: "Bar",
    0x0e: "Cupid Behind the Scenes",
    0x0f: "Scavenger Hunt",
    0x10: "Nightskiing",
    0x11: "Forlorn Friend",
    0x12: "Stand-in",
    0x13: "The Sting",
    0x14: "The Hot Tub Rub",
    0x15: "The Hot Tub Rub",
    0x16: "Reunite the Lovers",
    0x17: "The Ex File",
    0x18: "Hormone Havoc",
    0x19: "Sprung!",
    0x1a: "Sprung: The Final Chapter",
    0x1b: "Bonus: Ski Noir",
    0x1c: "Bonus: Conor Sez!",
    0x1d: "Bonus: Truth or Dare!",
    0x1e: "Bonus: Dumped!",
    0x1f: "Bonus: 2 Fast 2 Flirtatious",
    0x20: "Bonus: Big Spender",
    0x21: "Bonus: Club Mare",
    0x23: "Golden Bonus: Dan'd Up Stand-up!",
}

// $1E1FF4: [8-bit] Scene index for Becky
//          0x01 = The Arrival
//          0x02 = The Last Model Scout
//          0x03 = The Sketchy Ex-Boyfriend
//          0x04 = Guess Who?
//          0x05 = Guess Who? (2)
//          0x06 = Guess Who? (3)
//          0x07 = Blind Date
//          0x08 = Blind Date (2)
//          0x09 = Southern Comfort
//          0x0a = Shot by a Hippy
//          0x0b = Ex-Boyfriend Roadblock
//          0x0c = Conquering Conor
//          0x0d = Motivational Speakers
//          0x0e = Ready, Set, Date!
//          0x0f = The Softest Taste
//          0x10 = The Great Mingler
//          0x11 = Clashing Cliques
//          0x12 = Clashing Cliques (2)
//          0x13 = Clashing Cliques (3)
//          0x14 = Clashing Cliques (4)
//          0x15 = Snow Bird's Top Models
//          0x16 = Best Friend Connection
//          0x17 = Bad News for Erica
//          0x18 = Double Date Dysfunction
//          0x19 = Seeking the Truth
//          0x1a = Serving the Freezing Dish
//          0x1b = An Eye for an Eye
//          0x1c = An Eye for an Eye (2)
//          0x1d = Final Level Part I: Finding Friends
//          0x1e = Tap Room
//          0x1f = Ski Lift
//          0x20 = Final Level Part II: Ripping the Jacker
//          0x21 = Final Level Part III: Old Enemies, New Friends
//          0x22 = Lodge
//          0x23 = Final Level Part IV: Blast the Past
//          0x24 = Final Level Part V: Moments of Truth
//          0x25 = Bonus: Snow Bird Shopping Spree
//          0x26 = Bonus: Kiss Face Race
//          0x27 = Bonus: Snow Bird Catfight XXI
//          0x28 = Bonus: Say it in Snowboard!
//          0x29 = Bonus: Gift of Gab
//          0x2a = Bonus: Gift of Gab (2)
//          0x2b = Bonus: Becky's Cine-dream!
//          0x2c = Bonus: Hyp Hyp Hooray!
//          0x2d = Bonus: Hyp Hyp Hooray! (2)
//          0x2e = Golden Bonus: Trading Places
//          0x2f = Bonus: Panic Room
function scene_index_for_becky() => byte(0x1E1FF4)
function scene_index_for_becky_eu() => byte(0x1e23d4)

becky_scenes = {
    0x01: "The Arrival",
    0x02: "The Last Model Scout",
    0x03: "The Sketchy Ex-Boyfriend",
    0x04: "Guess Who?",
    0x05: "Guess Who?",
    0x06: "Guess Who?",
    0x07: "Blind Date",
    0x08: "Blind Date",
    0x09: "Southern Comfort",
    0x0a: "Shot by a Hippy",
    0x0b: "Ex-Boyfriend Roadblock",
    0x0c: "Conquering Conor",
    0x0d: "Motivational Speakers",
    0x0e: "Ready, Set, Date!",
    0x0f: "The Softest Taste",
    0x10: "The Great Mingler",
    0x11: "Clashing Cliques",
    0x12: "Clashing Cliques",
    0x13: "Clashing Cliques",
    0x14: "Clashing Cliques",
    0x15: "Snow Bird's Top Models",
    0x16: "Best Friend Connection",
    0x17: "Bad News for Erica",
    0x18: "Double Date Dysfunction",
    0x19: "Seeking the Truth",
    0x1a: "Serving the Freezing Dish",
    0x1b: "An Eye for an Eye",
    0x1c: "An Eye for an Eye",
    0x1d: "Final Level Part I: Finding Friends",
    0x1e: "Tap Room",
    0x1f: "Ski Lift",
    0x20: "Final Level Part II: Ripping the Jacker",
    0x21: "Final Level Part III: Old Enemies, New Friends",
    0x22: "Lodge",
    0x23: "Final Level Part IV: Blast the Past",
    0x24: "Final Level Part V: Moments of Truth",
    0x25: "Bonus: Snow Bird Shopping Spree",
    0x26: "Bonus: Kiss Face Race",
    0x27: "Bonus: Snow Bird Catfight XXI",
    0x28: "Bonus: Say it in Snowboard!",
    0x29: "Bonus: Gift of Gab",
    0x2a: "Bonus: Gift of Gab",
    0x2b: "Bonus: Becky's Cine-dream!",
    0x2c: "Bonus: Hyp Hyp Hooray!",
    0x2d: "Bonus: Hyp Hyp Hooray!",
    0x2e: "Golden Bonus: Trading Places",
    0x2f: "Bonus: Panic Room",
}

function has_item_func(accessor) => accessor()
function has_item_prev(accessor) => prev(accessor())

museum_items_eu = [
    eu___nail_file,
    eu___bar_towel,
    eu___cell_phone,
    eu___makeup_kit,
    eu___pepper_spray,
    eu___chewing_gum,
    eu___best_friends_forever_necklace,
    eu___microchip,
    eu___laxatives,
    eu___hairbrush,
    eu___texas_flame_hot_sauce,
    eu___sweatshirt,
    eu___bracelet,
    eu___rose,
    eu___money,
    eu___joke_book,
    eu___magic_bandana,
    eu___sunglasses,
    eu___vintage_lp,
    eu___pocket_knife,
    eu___love_beads,
    eu___incense,
    eu___sneakers,
    eu___high_heels,
    eu___gogo_boots,
    eu___slippers,
    eu___business_card,
    eu___lint_brush,
    eu___vip_sanctuary_club_pass,
    eu___baby_picture_of_sean,
    eu___peace_sign_button,
    eu___perfume_from_kiki,
    eu___perfume_from_erica,
    eu___watch,
    eu___hairpin,
    eu___glass_of_water,
    eu___tray_of_food,
    eu___modeling_portfolio,
    eu___pinecone,
    eu___raw_dead_fish,
    eu___box_of_chocolates,
    eu___granny_panties,
    eu___photo_evidence,
    eu___rabbits_foot,
    eu___toadstools,
    eu___camera,
    eu___devils_zephyr_cologne,
    eu___gold_medal,
    eu___silver_medal,
    eu___bronze_medal,
    eu___unlocking_social_anxiety,
    eu___ear_plugs,
    eu___book_of_horoscopes,
    eu___heimlich_maneuver,
    eu___amorous_action,
    eu___golden_line_notebook_for_becky,
    eu___wisdom_stone,
    eu___candy,
    eu___golden_line_notebook_for_brett,
    eu___earrings,
    eu___umbrella,
    eu___mp3_player,
    eu___dragon_tattoo,
    eu___carnation,
    eu___book_of_love_sonnets,
    eu___music_box,
    eu___red_pendant,
    eu___green_pendant,
    eu___blue_pendant,
    eu___hay,
    eu___bucket,
    eu___candle,
    eu___cards,
    eu___cocoa,
    eu___finger_printing_kit,
    eu___gasoline,
    eu___gift_card,
    eu___hedgehog,
    eu___id,
    eu___drinks,
    eu___radio,
    eu___keys,
    eu___lighter,
    eu___magic_dove,
    eu___mittens,
    eu___lock_pick,
    eu___chips,
    eu___racing_poles,
    eu___silver_ring,
    eu___ski_equipment,
    eu___sleeping_bag,
    eu___styrofoam_cup,
    eu___swizzle_stick,
    eu___pink_wallet,
    eu___brown_wallet,
    eu___comb,
    eu___nintendo_ds,
    eu___gloves,
    eu___baseball_hat,
    eu___hand_warmers,
]

museum_items = [
    ___nail_file,
    ___bar_towel,
    ___cell_phone,
    ___makeup_kit,
    ___pepper_spray,
    ___chewing_gum,
    ___best_friends_forever_necklace,
    ___microchip,
    ___laxatives,
    ___hairbrush,
    ___texas_flame_hot_sauce,
    ___sweatshirt,
    ___bracelet,
    ___rose,
    ___money,
    ___joke_book,
    ___magic_bandana,
    ___sunglasses,
    ___vintage_lp,
    ___pocket_knife,
    ___love_beads,
    ___incense,
    ___sneakers,
    ___high_heels,
    ___gogo_boots,
    ___slippers,
    ___business_card,
    ___lint_brush,
    ___vip_sanctuary_club_pass,
    ___baby_picture_of_sean,
    ___peace_sign_button,
    ___perfume_from_kiki,
    ___perfume_from_erica,
    ___watch,
    ___hairpin,
    ___glass_of_water,
    ___tray_of_food,
    ___modeling_portfolio,
    ___pinecone,
    ___raw_dead_fish,
    ___box_of_chocolates,
    ___granny_panties,
    ___photo_evidence,
    ___rabbits_foot,
    ___toadstools,
    ___camera,
    ___devils_zephyr_cologne,
    ___gold_medal,
    ___silver_medal,
    ___bronze_medal,
    ___unlocking_social_anxiety,
    ___ear_plugs,
    ___book_of_horoscopes,
    ___heimlich_maneuver,
    ___amorous_action,
    ___golden_line_notebook_for_becky,
    ___wisdom_stone,
    ___candy,
    ___golden_line_notebook_for_brett,
    ___earrings,
    ___umbrella,
    ___mp3_player,
    ___dragon_tattoo,
    ___carnation,
    ___book_of_love_sonnets,
    ___music_box,
    ___red_pendant,
    ___green_pendant,
    ___blue_pendant,
    ___hay,
    ___bucket,
    ___candle,
    ___cards,
    ___cocoa,
    ___finger_printing_kit,
    ___gasoline,
    ___gift_card,
    ___hedgehog,
    ___id,
    ___drinks,
    ___radio,
    ___keys,
    ___lighter,
    ___magic_dove,
    ___mittens,
    ___lock_pick,
    ___chips,
    ___racing_poles,
    ___silver_ring,
    ___ski_equipment,
    ___sleeping_bag,
    ___styrofoam_cup,
    ___swizzle_stick,
    ___pink_wallet,
    ___brown_wallet,
    ___comb,
    ___nintendo_ds,
    ___gloves,
    ___baseball_hat,
    ___hand_warmers,
]

all_art_eu = [
    eu___capture_the_heart,
    eu___kiki_and_conor,
    eu___pulling_the_strings,
    eu___strike_a_pose,
    eu___hello_ladies,
    eu___big_decision,
    eu___revealing_conor,
    eu___becky_and_brett,
    eu___three_of_a_kind,
    eu___erica_and_danny,
    eu___hard_day_at_work,
    eu___sprung,
    eu___dan_the_ladies_man,
    eu___rub_a_dub_dub,
    eu___erica_on_the_deck,
    eu___alex_and_shana,
    eu___game_on,
    eu___do_not_disturb,
    eu___sanctuary,
    eu___downhill_daredevils,
    eu___rematchmaker,
    eu___reservoir_pups,
    eu___brett_the_funghi,
    eu___becky_in_pencil,
    eu___who_the_man,
    eu___scaredy_cat,
    eu___stud,
    eu___becky_with_the_boys,
    eu___hopeless_romantic,
    eu___conor_gets_lucky,
    eu___just_friends,
    eu___true_love,
    eu___mountain_girl_becky,
    eu___born_to_model,
    eu___born_to_waitress,
    eu___soulmates,
    eu___blind_date_fantasy,
    eu___day_at_the_spa,
    eu___poor_poor_danny,
    eu___lick_my_boot,
    eu___charge_it,
    eu___breaking_free,
    eu___elliot_watch_out,
    eu___find_me_at_the_club,
    eu___make_peace,
    eu___double_date_dance,
    eu___im_too_sexy,
    eu___leanne_and_lucas,
    eu___smile_for_the_camera,
    eu___conor_is_sprung,
    eu___hooked_up,
    eu___sprung_gang,
]

all_art = [
    ___capture_the_heart,
    ___kiki_and_conor,
    ___pulling_the_strings,
    ___strike_a_pose,
    ___hello_ladies,
    ___big_decision,
    ___revealing_conor,
    ___becky_and_brett,
    ___three_of_a_kind,
    ___erica_and_danny,
    ___hard_day_at_work,
    ___sprung,
    ___dan_the_ladies_man,
    ___rub_a_dub_dub,
    ___erica_on_the_deck,
    ___alex_and_shana,
    ___game_on,
    ___do_not_disturb,
    ___sanctuary,
    ___downhill_daredevils,
    ___rematchmaker,
    ___reservoir_pups,
    ___brett_the_funghi,
    ___becky_in_pencil,
    ___who_the_man,
    ___scaredy_cat,
    ___stud,
    ___becky_with_the_boys,
    ___hopeless_romantic,
    ___conor_gets_lucky,
    ___just_friends,
    ___true_love,
    ___mountain_girl_becky,
    ___born_to_model,
    ___born_to_waitress,
    ___soulmates,
    ___blind_date_fantasy,
    ___day_at_the_spa,
    ___poor_poor_danny,
    ___lick_my_boot,
    ___charge_it,
    ___breaking_free,
    ___elliot_watch_out,
    ___find_me_at_the_club,
    ___make_peace,
    ___double_date_dance,
    ___im_too_sexy,
    ___leanne_and_lucas,
    ___smile_for_the_camera,
    ___conor_is_sprung,
    ___hooked_up,
    ___sprung_gang,
]

brett_art_eu = [
    eu___kiki_and_conor,
    eu___pulling_the_strings,
    eu___strike_a_pose,
    eu___hello_ladies,
    eu___big_decision,
    eu___revealing_conor,
    eu___becky_and_brett,
    eu___three_of_a_kind,
    eu___erica_and_danny,
    eu___hard_day_at_work,
    eu___sprung,
    eu___dan_the_ladies_man,
    eu___rub_a_dub_dub,
    eu___erica_on_the_deck,
    eu___alex_and_shana,
    eu___game_on,
    eu___do_not_disturb,
    eu___sanctuary,
    eu___downhill_daredevils,
    eu___rematchmaker,
    eu___reservoir_pups,
    eu___brett_the_funghi,
    eu___becky_in_pencil,
    eu___who_the_man,
    eu___scaredy_cat,
    eu___stud,
]

brett_art = [
    ___kiki_and_conor,
    ___pulling_the_strings,
    ___strike_a_pose,
    ___hello_ladies,
    ___big_decision,
    ___revealing_conor,
    ___becky_and_brett,
    ___three_of_a_kind,
    ___erica_and_danny,
    ___hard_day_at_work,
    ___sprung,
    ___dan_the_ladies_man,
    ___rub_a_dub_dub,
    ___erica_on_the_deck,
    ___alex_and_shana,
    ___game_on,
    ___do_not_disturb,
    ___sanctuary,
    ___downhill_daredevils,
    ___rematchmaker,
    ___reservoir_pups,
    ___brett_the_funghi,
    ___becky_in_pencil,
    ___who_the_man,
    ___scaredy_cat,
    ___stud,
]

becky_art_eu = [
    eu___becky_with_the_boys,
    eu___hopeless_romantic,
    eu___conor_gets_lucky,
    eu___just_friends,
    eu___true_love,
    eu___mountain_girl_becky,
    eu___born_to_model,
    eu___born_to_waitress,
    eu___soulmates,
    eu___blind_date_fantasy,
    eu___day_at_the_spa,
    eu___poor_poor_danny,
    eu___lick_my_boot,
    eu___charge_it,
    eu___breaking_free,
    eu___elliot_watch_out,
    eu___find_me_at_the_club,
    eu___make_peace,
    eu___double_date_dance,
    eu___im_too_sexy,
    eu___leanne_and_lucas,
    eu___smile_for_the_camera,
    eu___conor_is_sprung,
    eu___hooked_up,
    eu___sprung_gang,
]

becky_art = [
    ___becky_with_the_boys,
    ___hopeless_romantic,
    ___conor_gets_lucky,
    ___just_friends,
    ___true_love,
    ___mountain_girl_becky,
    ___born_to_model,
    ___born_to_waitress,
    ___soulmates,
    ___blind_date_fantasy,
    ___day_at_the_spa,
    ___poor_poor_danny,
    ___lick_my_boot,
    ___charge_it,
    ___breaking_free,
    ___elliot_watch_out,
    ___find_me_at_the_club,
    ___make_peace,
    ___double_date_dance,
    ___im_too_sexy,
    ___leanne_and_lucas,
    ___smile_for_the_camera,
    ___conor_is_sprung,
    ___hooked_up,
    ___sprung_gang,
]

pendants_eu = [
    eu___red_pendant,
    eu___blue_pendant,
    eu___green_pendant,
]

pendants = [
    ___red_pendant,
    ___blue_pendant,
    ___green_pendant,
]

money_eu = [
    eu___twenty_bucks_money,
    eu___twentyfive_bucks_money,
    eu___fifty_bucks_money,
    eu___one_hundred_bucks_money,
    eu___five_hundred_bucks_money,
    eu___a_thousand_bucks_money,
    eu___two_thousand_bucks_money,
    eu___five_thousand_bucks_money,
]

money = [
    ___twenty_bucks_money,
    ___twentyfive_bucks_money,
    ___fifty_bucks_money,
    ___one_hundred_bucks_money,
    ___five_hundred_bucks_money,
    ___a_thousand_bucks_money,
    ___two_thousand_bucks_money,
    ___five_thousand_bucks_money,
]

jokes_eu = [
    eu___the_one_about_the_guy_with_the_5_legs_joke_book,
    eu___the_blonde_joke_joke_book,
    eu___the_hippie_joke_joke_book,
    eu___the_skunk_joke_joke_book,
    eu___yo_mama_joke_joke_book,
]

jokes = [
    ___the_one_about_the_guy_with_the_5_legs_joke_book,
    ___the_blonde_joke_joke_book,
    ___the_hippie_joke_joke_book,
    ___the_skunk_joke_joke_book,
    ___yo_mama_joke_joke_book,
]

all_lines_eu = [
    eu___i_put_sixteen_laxatives_in_your_drink_golden_line_notebook,
    eu___no_you_look_like_an_aerobics_instructor_golden_line_notebook,
    eu___womens_television_has_come_a_long_way_in_terms_of_story_development_and_production_quality_lucas_golden_line_notebook,
    eu___this_purple_one_here_looks_nice_golden_line_notebook,
    eu___none_of_your_beeswax_biznatch_ow_yeah_how_do_you_like_it_huh_golden_line_notebook,
    eu___no_im_not_talking_about_sex_im_talking_about_fungus_golden_line_notebook,
    eu___moo_golden_line_notebook,
    eu___smashing_to_make_your_acquaintance_im_bartholemew_arugula_paisley_golden_line_notebook,
    eu___look_you_sit_under_a_cows_ass_youre_gonna_get_crapped_on_golden_line_notebook,
    eu___you_couldnt_be_more_deep_if_i_threw_you_down_the_well_myself_golden_line_notebook,
    eu___can_i_have_your_underwear_im_supposed_to_get_womens_but_nobody_would_know_the_difference_if_you_gave_me_yours_golden_line_notebook,
    eu___i_dont_think_his_cousin_counts_dude_golden_line_notebook,
    eu___you_dont_go_to_dippy_donuts_if_youre_looking_for_a_steak_golden_line_notebook,
    eu___yeah_it_is_kind_of_hard_for_me_to_be_as_classy_as_a_guy_who_dresses_like_a_pirate_golden_line_notebook,
    eu___i_hope_you_dont_think_me_forward_but_i_have_an_overwhelming_urge_to_chew_on_you_golden_line_notebook,
    eu___i_dont_know_id_say_youre_about_as_cute_as_a_chickpea_on_some_cornpone_golden_line_notebook,
    eu___im_going_to_a_players_anonymous_meeting_after_this_wanna_come_golden_line_notebook,
    eu___chocolate_fudge_actually_golden_line_notebook,
    eu___what_ho_bird_mountain_golden_line_notebook,
    eu___ive_wanted_to_be_a_model_ever_since_i_was_three_years_old_golden_line_notebook,
    eu___eat_yellow_snow_and_die_golden_line_notebook,
    eu___you_tell_me_buuuddy_golden_line_notebook,
    eu___hey_my_grandma_called_she_wants_her_hat_back_golden_line_notebook,
    eu___do_you_ever_go_skinny_dipping_golden_line_notebook,
    eu___probably_the_same_place_you_left_your_brain_treehugger_golden_line_notebook,
    eu___yellow_yoyo_yawning_youre_yuck_golden_line_notebook,
    eu___one_time_my_friend_mixed_ketchup_and_apple_sauce_and_i_ate_it_golden_line_notebook,
    eu___this_book_is_as_inane_as_you_are_golden_line_notebook,
    eu___you_wanna_look_down_girls_shirts_golden_line_notebook,
    eu___keep_him_wondering_if_hes_going_to_get_a_goodnight_kiss_golden_line_notebook,
    eu___she_only_does_it_because_she_lost_her_pet_lizard_in_a_tragic_boating_accident_golden_line_notebook,
    eu___waaaaaaaaaaaaaaaaake_up_golden_line_notebook,
    eu___he_lives_in_a_cave_plotting_evil_against_us_kids_golden_line_notebook,
    eu___haha_bretts_a_rd_funny_golden_line_notebook,
    eu___shut_up_big_head_golden_line_notebook,
    eu___remember_that_time_you_needed_someone_to_hook_up_with_your_boyfriend_and_i_was_right_there_helping_you_out_golden_line_notebook,
    eu___maybe_the_voices_in_my_head_say_a_lot_of_things_golden_line_notebook,
]

all_lines = [
    ___i_put_sixteen_laxatives_in_your_drink_golden_line_notebook,
    ___no_you_look_like_an_aerobics_instructor_golden_line_notebook,
    ___womens_television_has_come_a_long_way_in_terms_of_story_development_and_production_quality_lucas_golden_line_notebook,
    ___this_purple_one_here_looks_nice_golden_line_notebook,
    ___none_of_your_beeswax_biznatch_ow_yeah_how_do_you_like_it_huh_golden_line_notebook,
    ___no_im_not_talking_about_sex_im_talking_about_fungus_golden_line_notebook,
    ___moo_golden_line_notebook,
    ___smashing_to_make_your_acquaintance_im_bartholemew_arugula_paisley_golden_line_notebook,
    ___look_you_sit_under_a_cows_ass_youre_gonna_get_crapped_on_golden_line_notebook,
    ___you_couldnt_be_more_deep_if_i_threw_you_down_the_well_myself_golden_line_notebook,
    ___can_i_have_your_underwear_im_supposed_to_get_womens_but_nobody_would_know_the_difference_if_you_gave_me_yours_golden_line_notebook,
    ___i_dont_think_his_cousin_counts_dude_golden_line_notebook,
    ___you_dont_go_to_dippy_donuts_if_youre_looking_for_a_steak_golden_line_notebook,
    ___yeah_it_is_kind_of_hard_for_me_to_be_as_classy_as_a_guy_who_dresses_like_a_pirate_golden_line_notebook,
    ___i_hope_you_dont_think_me_forward_but_i_have_an_overwhelming_urge_to_chew_on_you_golden_line_notebook,
    ___i_dont_know_id_say_youre_about_as_cute_as_a_chickpea_on_some_cornpone_golden_line_notebook,
    ___im_going_to_a_players_anonymous_meeting_after_this_wanna_come_golden_line_notebook,
    ___chocolate_fudge_actually_golden_line_notebook,
    ___what_ho_bird_mountain_golden_line_notebook,
    ___ive_wanted_to_be_a_model_ever_since_i_was_three_years_old_golden_line_notebook,
    ___eat_yellow_snow_and_die_golden_line_notebook,
    ___you_tell_me_buuuddy_golden_line_notebook,
    ___hey_my_grandma_called_she_wants_her_hat_back_golden_line_notebook,
    ___do_you_ever_go_skinny_dipping_golden_line_notebook,
    ___probably_the_same_place_you_left_your_brain_treehugger_golden_line_notebook,
    ___yellow_yoyo_yawning_youre_yuck_golden_line_notebook,
    ___one_time_my_friend_mixed_ketchup_and_apple_sauce_and_i_ate_it_golden_line_notebook,
    ___this_book_is_as_inane_as_you_are_golden_line_notebook,
    ___you_wanna_look_down_girls_shirts_golden_line_notebook,
    ___keep_him_wondering_if_hes_going_to_get_a_goodnight_kiss_golden_line_notebook,
    ___she_only_does_it_because_she_lost_her_pet_lizard_in_a_tragic_boating_accident_golden_line_notebook,
    ___waaaaaaaaaaaaaaaaake_up_golden_line_notebook,
    ___he_lives_in_a_cave_plotting_evil_against_us_kids_golden_line_notebook,
    ___haha_bretts_a_rd_funny_golden_line_notebook,
    ___shut_up_big_head_golden_line_notebook,
    ___remember_that_time_you_needed_someone_to_hook_up_with_your_boyfriend_and_i_was_right_there_helping_you_out_golden_line_notebook,
    ___maybe_the_voices_in_my_head_say_a_lot_of_things_golden_line_notebook,
]

brett_lines_eu = [
    eu___no_you_look_like_an_aerobics_instructor_golden_line_notebook,
    eu___womens_television_has_come_a_long_way_in_terms_of_story_development_and_production_quality_lucas_golden_line_notebook,
    eu___this_purple_one_here_looks_nice_golden_line_notebook,
    eu___none_of_your_beeswax_biznatch_ow_yeah_how_do_you_like_it_huh_golden_line_notebook,
    eu___no_im_not_talking_about_sex_im_talking_about_fungus_golden_line_notebook,
    eu___moo_golden_line_notebook,
    eu___smashing_to_make_your_acquaintance_im_bartholemew_arugula_paisley_golden_line_notebook,
    eu___look_you_sit_under_a_cows_ass_youre_gonna_get_crapped_on_golden_line_notebook,
    eu___you_couldnt_be_more_deep_if_i_threw_you_down_the_well_myself_golden_line_notebook,
    eu___can_i_have_your_underwear_im_supposed_to_get_womens_but_nobody_would_know_the_difference_if_you_gave_me_yours_golden_line_notebook,
    eu___i_dont_think_his_cousin_counts_dude_golden_line_notebook,
    eu___you_dont_go_to_dippy_donuts_if_youre_looking_for_a_steak_golden_line_notebook,
    eu___yeah_it_is_kind_of_hard_for_me_to_be_as_classy_as_a_guy_who_dresses_like_a_pirate_golden_line_notebook,
    eu___i_hope_you_dont_think_me_forward_but_i_have_an_overwhelming_urge_to_chew_on_you_golden_line_notebook,
    eu___i_dont_know_id_say_youre_about_as_cute_as_a_chickpea_on_some_cornpone_golden_line_notebook,
    eu___im_going_to_a_players_anonymous_meeting_after_this_wanna_come_golden_line_notebook,
    eu___chocolate_fudge_actually_golden_line_notebook,
]

brett_lines = [
    ___no_you_look_like_an_aerobics_instructor_golden_line_notebook,
    ___womens_television_has_come_a_long_way_in_terms_of_story_development_and_production_quality_lucas_golden_line_notebook,
    ___this_purple_one_here_looks_nice_golden_line_notebook,
    ___none_of_your_beeswax_biznatch_ow_yeah_how_do_you_like_it_huh_golden_line_notebook,
    ___no_im_not_talking_about_sex_im_talking_about_fungus_golden_line_notebook,
    ___moo_golden_line_notebook,
    ___smashing_to_make_your_acquaintance_im_bartholemew_arugula_paisley_golden_line_notebook,
    ___look_you_sit_under_a_cows_ass_youre_gonna_get_crapped_on_golden_line_notebook,
    ___you_couldnt_be_more_deep_if_i_threw_you_down_the_well_myself_golden_line_notebook,
    ___can_i_have_your_underwear_im_supposed_to_get_womens_but_nobody_would_know_the_difference_if_you_gave_me_yours_golden_line_notebook,
    ___i_dont_think_his_cousin_counts_dude_golden_line_notebook,
    ___you_dont_go_to_dippy_donuts_if_youre_looking_for_a_steak_golden_line_notebook,
    ___yeah_it_is_kind_of_hard_for_me_to_be_as_classy_as_a_guy_who_dresses_like_a_pirate_golden_line_notebook,
    ___i_hope_you_dont_think_me_forward_but_i_have_an_overwhelming_urge_to_chew_on_you_golden_line_notebook,
    ___i_dont_know_id_say_youre_about_as_cute_as_a_chickpea_on_some_cornpone_golden_line_notebook,
    ___im_going_to_a_players_anonymous_meeting_after_this_wanna_come_golden_line_notebook,
    ___chocolate_fudge_actually_golden_line_notebook,
]

becky_lines_eu = [
    eu___what_ho_bird_mountain_golden_line_notebook,
    eu___ive_wanted_to_be_a_model_ever_since_i_was_three_years_old_golden_line_notebook,
    eu___eat_yellow_snow_and_die_golden_line_notebook,
    eu___you_tell_me_buuuddy_golden_line_notebook,
    eu___hey_my_grandma_called_she_wants_her_hat_back_golden_line_notebook,
    eu___do_you_ever_go_skinny_dipping_golden_line_notebook,
    eu___probably_the_same_place_you_left_your_brain_treehugger_golden_line_notebook,
    eu___yellow_yoyo_yawning_youre_yuck_golden_line_notebook,
    eu___one_time_my_friend_mixed_ketchup_and_apple_sauce_and_i_ate_it_golden_line_notebook,
    eu___this_book_is_as_inane_as_you_are_golden_line_notebook,
    eu___you_wanna_look_down_girls_shirts_golden_line_notebook,
    eu___keep_him_wondering_if_hes_going_to_get_a_goodnight_kiss_golden_line_notebook,
    eu___she_only_does_it_because_she_lost_her_pet_lizard_in_a_tragic_boating_accident_golden_line_notebook,
    eu___waaaaaaaaaaaaaaaaake_up_golden_line_notebook,
    eu___he_lives_in_a_cave_plotting_evil_against_us_kids_golden_line_notebook,
    eu___haha_bretts_a_rd_funny_golden_line_notebook,
    eu___shut_up_big_head_golden_line_notebook,
    eu___remember_that_time_you_needed_someone_to_hook_up_with_your_boyfriend_and_i_was_right_there_helping_you_out_golden_line_notebook,
    eu___maybe_the_voices_in_my_head_say_a_lot_of_things_golden_line_notebook,
]

becky_lines = [
    ___what_ho_bird_mountain_golden_line_notebook,
    ___ive_wanted_to_be_a_model_ever_since_i_was_three_years_old_golden_line_notebook,
    ___eat_yellow_snow_and_die_golden_line_notebook,
    ___you_tell_me_buuuddy_golden_line_notebook,
    ___hey_my_grandma_called_she_wants_her_hat_back_golden_line_notebook,
    ___do_you_ever_go_skinny_dipping_golden_line_notebook,
    ___probably_the_same_place_you_left_your_brain_treehugger_golden_line_notebook,
    ___yellow_yoyo_yawning_youre_yuck_golden_line_notebook,
    ___one_time_my_friend_mixed_ketchup_and_apple_sauce_and_i_ate_it_golden_line_notebook,
    ___this_book_is_as_inane_as_you_are_golden_line_notebook,
    ___you_wanna_look_down_girls_shirts_golden_line_notebook,
    ___keep_him_wondering_if_hes_going_to_get_a_goodnight_kiss_golden_line_notebook,
    ___she_only_does_it_because_she_lost_her_pet_lizard_in_a_tragic_boating_accident_golden_line_notebook,
    ___waaaaaaaaaaaaaaaaake_up_golden_line_notebook,
    ___he_lives_in_a_cave_plotting_evil_against_us_kids_golden_line_notebook,
    ___haha_bretts_a_rd_funny_golden_line_notebook,
    ___shut_up_big_head_golden_line_notebook,
    ___remember_that_time_you_needed_someone_to_hook_up_with_your_boyfriend_and_i_was_right_there_helping_you_out_golden_line_notebook,
    ___maybe_the_voices_in_my_head_say_a_lot_of_things_golden_line_notebook,
]

medals_eu = [
    eu___gold_medal,
    eu___silver_medal,
    eu___bronze_medal,
]

medals = [
    ___gold_medal,
    ___silver_medal,
    ___bronze_medal,
]

brett_numbers_eu = [
    eu___beckys__cell_phone,
    eu___bretts__cell_phone,
    eu___ericas__cell_phone,
    eu___kikis__cell_phone,
    eu___dannys__cell_phone,
    eu___lucas__cell_phone,
    eu___alexs__cell_phone,
    eu___leannes__cell_phone,
    eu___shanas__cell_phone,
    eu___elliots__cell_phone,
    eu___conors__cell_phone,
]

brett_numbers = [
    ___beckys__cell_phone,
    ___bretts__cell_phone,
    ___ericas__cell_phone,
    ___kikis__cell_phone,
    ___dannys__cell_phone,
    ___lucas__cell_phone,
    ___alexs__cell_phone,
    ___leannes__cell_phone,
    ___shanas__cell_phone,
    ___elliots__cell_phone,
    ___conors__cell_phone,
]

becky_numbers_eu = [
    eu___dannys__cell_phone,
    eu___lucas__cell_phone,
    eu___alexs__cell_phone,
    eu___seans__cell_phone,
    eu___leannes__cell_phone,
    eu___shanas__cell_phone,
    eu___elliots__cell_phone,
    eu___conors__cell_phone,
    eu___conors_fathers__cell_phone,
]

becky_numbers = [
    ___dannys__cell_phone,
    ___lucas__cell_phone,
    ___alexs__cell_phone,
    ___seans__cell_phone,
    ___leannes__cell_phone,
    ___shanas__cell_phone,
    ___elliots__cell_phone,
    ___conors__cell_phone,
    ___conors_fathers__cell_phone,
]

// Achievements

function got_item_achievement(title, desc, points, hasitem, hasitem_eu) {
    achievement(title = title, description = desc, points = points,
    trigger = (eu() && in_game_eu() && prev(!hasitem_eu) && hasitem_eu) || (us() && in_game() && prev(!hasitem) && hasitem))
}

function all_items_achievement(title, desc, points, items, items_eu) {
    achievement(title = title, description = desc, points = points, trigger = (us() && in_game() &&
    sum_of(items, has_item_prev) == length(items) - 1 &&
    measured(sum_of(items, has_item_func) == length(items))) || (eu() && in_game_eu() &&
    sum_of(items_eu, has_item_prev) == length(items_eu) - 1 &&
    measured(sum_of(items_eu, has_item_func) == length(items_eu))))
}

function brett_scene_achievement(title, desc, points, index, type = "") {
    achievement(title = title, description = desc, points = points, trigger = (us() && in_game() &&
    current_character() == 0x00 &&
    scene_index_for_brett() == index &&
    scene_delta()) || (eu() && in_game_eu() &&
    current_character_eu() == 0x00 &&
    scene_index_for_brett_eu() == index &&
    scene_delta_eu()), type = type)
}

function becky_scene_achievement(title, desc, points, index, type = "") {
    achievement(title = title, description = desc, points = points, trigger = (us() && in_game() &&
    current_character() == 0x01 &&
    scene_index_for_becky() == index &&
    scene_delta()) || (eu() && in_game_eu() &&
    current_character_eu() == 0x01 &&
    scene_index_for_becky_eu() == index &&
    scene_delta_eu()), type = type)
}

brett_scene_achievement("Aren't You Cold?", "Complete Lift Off! with Brett.", 1, 0x01, "progression")
brett_scene_achievement("Balancing Act", "Complete 3's a Crowd with Brett.", 2, 0x06, "progression")
brett_scene_achievement("Double Dare", "Complete Playing Doubles with Brett.", 2, 0x0b, "progression")
brett_scene_achievement("The Matchmaker", "Complete Forlorn Friend with Brett.", 2, 0x11, "progression")
brett_scene_achievement("Hanging in the Jacuzzi", "Complete The Hot Tub Rub with Brett.", 5, 0x15, "progression")
brett_scene_achievement("The Final Chapter", "Finish Brett's campaign and decide his and Becky's fate.", 10, 0x1a, "progression")

becky_scene_achievement("Ski Trip of a Lifetime", "Complete The Arrival with Becky.", 1, 0x01, "progression")
becky_scene_achievement("We Dig Your Vibe", "Complete Guess Who? with Becky.", 2, 0x06, "progression")
becky_scene_achievement("Conor is Sprung!", "Complete Conquering Conor with Becky.", 2, 0x0c, "progression")
becky_scene_achievement("You Can Have Him", "Complete Best Friend Connection with Becky.", 2, 0x14, "progression")
becky_scene_achievement("Conor's Comeuppance", "Complete Serving the Freezing Dish with Becky.", 5, 0x1a, "progression")
becky_scene_achievement("Moments of Truth", "Finish Becky's campaign and decide her and Brett's fate.", 10, 0x24, "progression")

brett_scene_achievement("Sprungset Boulevard", "Complete Bonus: Ski Noir with Brett.", 3, 0x1b)
brett_scene_achievement("Memory Test", "Complete Bonus: Conor Sez! with Brett.", 3, 0x1c)
brett_scene_achievement("Hot Sauce? That's the Best You Can Do?", "Complete Bonus: Truth or Dare! with Brett.", 3, 0x1d)
brett_scene_achievement("Let Her Down Easy", "Complete Bonus: Dumped! with Brett.", 3, 0x1e)
brett_scene_achievement("Baby, I'm Just After Your Blog URL", "Complete Bonus: 2 Fast 2 Flirtatious with Brett.", 3, 0x1f)
brett_scene_achievement("Charge It", "Complete Bonus: Big Spender with Brett.", 3, 0x20)
brett_scene_achievement("Come Here Often?", "Complete Bonus: Club Mare with Brett.", 3, 0x21)
brett_scene_achievement("Popped Collar Comedy Tour", "Complete Golden Bonus: Dan'd Up Stand-up! with Brett.", 10, 0x23)

becky_scene_achievement("I Bought It", "Complete Bonus: Snow Bird Shopping Spree with Becky.", 3, 0x25)
becky_scene_achievement("I've Heard of Speed Dating but This Is Ridiculous", "Complete Bonus: Kiss Face Race with Becky.", 3, 0x26)
becky_scene_achievement("Can't We Just All Get Along?", "Complete Bonus: Snow Bird Catfight XXI with Becky.", 3, 0x27)
becky_scene_achievement("Radical!", "Complete Bonus: Say it in Snowboard! with Becky.", 3, 0x28)
becky_scene_achievement("Reconnaissance Mission", "Complete Bonus: Gift of Gab with Becky.", 3, 0x2a)
becky_scene_achievement("Silencio", "Complete Bonus: Becky's Cine-dream! with Becky.", 3, 0x2b)
becky_scene_achievement("You Are Getting Very Sprung", "Complete Bonus: Hyp Hyp Hooray! with Becky.", 3, 0x2d)
becky_scene_achievement("Perhaps You're Seeing the World From My Point of View", "Complete Golden Bonus: Trading Places with Becky.", 10, 0x2e)
becky_scene_achievement("Trauma Center", "Complete Bonus: Panic Room with Becky.", 3, 0x2f)

got_item_achievement("Pucker Up", "Obtain the Amorous Action.", 1, ___amorous_action() == 1, eu___amorous_action() == 1)

got_item_achievement("If Only I Could Find a Way to Use These", "Obtain the laxatives.", 1, ___laxatives() == 1, eu___laxatives() == 1)

all_items_achievement("Lost Woods, Here I Come", "Obtain all three pendants.", 5, pendants, pendants_eu)

all_items_achievement("Brett's Art Gallery", "Obtain all of Brett's art.", 10, brett_art, brett_art_eu)
all_items_achievement("Becky's Art Gallery", "Obtain all of Becky's art.", 10, becky_art, becky_art_eu)

all_items_achievement("Boy You're Rich!", "Fill your wallet with all of the money items.", 5, money, money_eu)

all_items_achievement("He's a Funny Guy", "Learn all of the jokes in the joke book.", 3, jokes, jokes_eu)

all_items_achievement("Silver-Tongued Devil", "Use all of Brett's golden lines.", 10, brett_lines, brett_lines_eu)
all_items_achievement("Smooth Talker", "Use all of Becky's golden lines that are obtainable.", 10, becky_lines, becky_lines_eu)

all_items_achievement("Win, Place and Show", "Obtain all three medals.", 3, medals, medals_eu)

all_items_achievement("Mr. Popular", "Obtain all of Brett's phone numbers.", 5, brett_numbers, brett_numbers_eu)
all_items_achievement("Miss Congeniality", "Obtain all of Becky's phone numbers.", 5, becky_numbers, becky_numbers_eu)

// Leaderboards

leaderboard(title = "Kiss Face Race Speedrun (IGT)", description = "Complete Bonus: Kiss Face Race with the most time left on the timer.", 
start = (us() && current_character() == 0x01 && scene_index_for_becky() == 0x26 && scene_delta()) ||
(eu() && current_character_eu() == 0x01 && scene_index_for_becky_eu() == 0x26 && scene_delta_eu()),
cancel = always_false(), submit = always_true(),
value = max_of(measured(timer(), when = us()), measured(timer_eu(), when = eu())))

leaderboard(title = "Ripping the Jacker Speedrun (IGT)", description = "Complete Final Level Part II: Ripping the Jacker with the most time left on the timer.", 
start = (us() && current_character() == 0x01 && scene_index_for_becky() == 0x20 && scene_delta()) ||
(eu() && current_character_eu() == 0x01 && scene_index_for_becky_eu() == 0x20 && scene_delta_eu()),
cancel = always_false(), submit = always_true(),
value = max_of(measured(timer(), when = us()), measured(timer_eu(), when = eu())))

// Rich Presence

rp_brettscene = rich_presence_lookup("BrettScene", scene_index_for_brett(), brett_scenes)
rp_beckyscene = rich_presence_lookup("BeckyScene", scene_index_for_becky(), becky_scenes)
rp_museum = rich_presence_value("Museum", sum_of(museum_items, has_item_func))
rp_art_gallery = rich_presence_value("ArtGallery", sum_of(all_art, has_item_func))
rp_lines = rich_presence_value("Lines", sum_of(all_lines, has_item_func))

rp_brettscene_eu = rich_presence_lookup("BrettScene", scene_index_for_brett_eu(), brett_scenes)
rp_beckyscene_eu = rich_presence_lookup("BeckyScene", scene_index_for_becky_eu(), becky_scenes)
rp_museum_eu = rich_presence_value("MuseumEu", sum_of(museum_items_eu, has_item_func))
rp_art_gallery_eu = rich_presence_value("ArtGalleryEu", sum_of(all_art_eu, has_item_func))
rp_lines_eu = rich_presence_value("LinesEu", sum_of(all_lines_eu, has_item_func))

rich_presence_conditional_display(us() && !in_game(), "In the menu [🏆Museum:{0}/100] [🖼️Art Gallery:{1}/52] [📓Golden Lines:{2}/37]", rp_museum, rp_art_gallery, rp_lines)
rich_presence_conditional_display(eu() && !in_game_eu(), "In the menu [🏆Museum:{0}/100] [🖼️Art Gallery:{1}/52] [📓Golden Lines:{2}/37]", rp_museum_eu, rp_art_gallery_eu, rp_lines_eu)
rich_presence_conditional_display(us() && current_character() == 0x00, "🙋‍♂️Brett is in {0} [🏆Museum:{1}/100] [🖼️Art Gallery:{2}/52] [📓Golden Lines:{2}/37]",
    rp_brettscene, rp_museum, rp_art_gallery, rp_lines)
rich_presence_conditional_display(eu() && current_character_eu() == 0x00, "🙋‍♂️Brett is in {0} [🏆Museum:{1}/100] [🖼️Art Gallery:{2}/52] [📓Golden Lines:{2}/37]",
    rp_brettscene_eu, rp_museum_eu, rp_art_gallery_eu, rp_lines_eu)
rich_presence_conditional_display(us() && current_character() == 0x01, "🙋‍♀️Becky is in {0} [🏆Museum:{1}/100] [🖼️Art Gallery:{2}/52] [📓Golden Lines:{2}/37]",
    rp_beckyscene, rp_museum, rp_art_gallery, rp_lines)
rich_presence_conditional_display(eu() && current_character_eu() == 0x01, "🙋‍♀️Becky is in {0} [🏆Museum:{1}/100] [🖼️Art Gallery:{2}/52] [📓Golden Lines:{2}/37]",
    rp_beckyscene_eu, rp_museum_eu, rp_art_gallery_eu, rp_lines_eu)
rich_presence_conditional_display(us(), "Playing Sprung: A Game Where Everyone Scores [🏆Museum:{0}/100] [🖼️Art Gallery:{1}/52] [📓Golden Lines:{2}/37]", rp_museum, rp_art_gallery, rp_lines)
rich_presence_conditional_display(eu(), "Playing Sprung: The Dating Game [🏆Museum:{0}/100] [🖼️Art Gallery:{1}/52] [📓Golden Lines:{2}/37]", rp_museum_eu, rp_art_gallery_eu, rp_lines_eu)
rich_presence_display("Playing Sprung")
