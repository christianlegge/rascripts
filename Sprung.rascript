// Sprung: A Game Where Everyone Scores | Sprung: The Dating Game
// #ID = 20416
// #MinimumVersion = 1.3

function in_game() => byte(0x0017f1fc) == 0x20

function scene_delta() => dword(0x001C5D74) == 0xFFFFFFFF && prev(dword(0x001C5D74)) != 0xFFFFFFFF

// $1DAC00: [Bitfield] Art Gallery unlocks (0=locked, 1=unlocked)
function ___becky_with_the_boys() => bit0(0x1DAC00)
function ___hopeless_romantic() => bit1(0x1DAC00)
function ___conor_gets_lucky() => bit2(0x1DAC00)
function ___just_friends() => bit3(0x1DAC00)
function ___kiki_and_conor() => bit4(0x1DAC00)
function ___true_love() => bit5(0x1DAC00)
function ___mountain_girl_becky() => bit6(0x1DAC00)
function ___born_to_model() => bit7(0x1DAC00)
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
function art_gallery_unlocks_0_locked_1_unlocked() => byte(0x1DAC05)

// $1DAC06: [Bitfield] Art Gallery unlocks (0=locked, 1=unlocked)
function ___smile_for_the_camera() => bit0(0x1DAC06)
function ___conor_is_sprung() => bit1(0x1DAC06)
function ___hooked_up() => bit2(0x1DAC06)
function ___sprung_gang() => bit3(0x1DAC06)
function art_gallery_unlocks_0_locked_1_unlocked() => byte(0x1DAC06)

// $1E10A0: [8-bit] Current character
//          0x00 = Brett
//          0x01 = Becky
function current_character() => byte(0x1E10A0)

// $1E10A8: [8-bit] Current scene index
function current_scene_index() => byte(0x1E10A8)

// $1E10E0: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___nail_file() => bit0(0x1E10E0)
function ___bar_towel() => bit1(0x1E10E0)
function ___cell_phone() => bit2(0x1E10E0)
function ___beckys__cell_phone() => bit3(0x1E10E0)
function ___bretts__cell_phone() => bit4(0x1E10E0)
function ___ericas__cell_phone() => bit5(0x1E10E0)
function ___kikis__cell_phone() => bit6(0x1E10E0)
function ___dannys__cell_phone() => bit7(0x1E10E0)
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
function museum_unlocks_0_locked_1_unlocked() => byte(0x1E10F4)

// $1E10F5: [Bitfield] Museum unlocks (0=locked, 1=unlocked)
function ___baseball_hat() => bit0(0x1E10F5)
function ___hand_warmers() => bit1(0x1E10F5)
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

// $1E1FF5: [8-bit] Scene index for Becky
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
function scene_index_for_becky() => byte(0x1E1FF5)

function has_item_func(accessor) => accessor()
function has_item_prev(accessor) => prev(accessor())

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

pendants = [
    ___red_pendant,
    ___blue_pendant,
    ___green_pendant,
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

jokes = [
    ___the_one_about_the_guy_with_the_5_legs_joke_book,
    ___the_blonde_joke_joke_book,
    ___the_hippie_joke_joke_book,
    ___the_skunk_joke_joke_book,
    ___yo_mama_joke_joke_book,
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

medals = [
    ___gold_medal,
    ___silver_medal,
    ___bronze_medal,
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

function got_item_achievement(title, desc, points, hasitem) {
    achievement(title = title, description = desc, points = points, trigger = in_game() && prev(!hasitem) && hasitem)
}

function all_items_achievement(title, desc, points, items) {
    achievement(title = title, description = desc, points = points, trigger = in_game() &&
    sum_of(items, has_item_prev) == length(items) - 1 &&
    measured(sum_of(items, has_item_func) == length(items))) 
}

function brett_scene_achievement(title, desc, points, index, type = "") {
    achievement(title = title, description = desc, points = points, trigger = in_game() &&
    scene_index_for_brett() == index &&
    scene_delta(), type = type)
}

function becky_scene_achievement(title, desc, points, index, type = "") {
    achievement(title = title, description = desc, points = points, trigger = in_game() &&
    scene_index_for_becky() == index &&
    scene_delta(), type = type)
}

brett_scene_achievement("The Final Chapter", "Finish Brett's campaign and decide his and Becky's fate.", 10, 0x1a, "progression")
becky_scene_achievement("Moments of Truth", "Finish Becky's campaign and decide her and Brett's fate.", 10, 0x24, "progression")

got_item_achievement("Pucker Up", "Obtain the Amorous Action.", 1, ___amorous_action() == 1)

got_item_achievement("If Only I Could Find a Way to Use These", "Obtain the laxatives.", 1, ___laxatives() == 1)

all_items_achievement("Lost Woods, Here I Come", "Obtain all three pendants.", 5, pendants)

all_items_achievement("Brett's Art Gallery", "Obtain all of Brett's art.", 10, brett_art)
all_items_achievement("Becky's Art Gallery", "Obtain all of Becky's art.", 10, becky_art)

all_items_achievement("Boy You're Rich!", "Fill your wallet with all of the money items.", 5, money)

all_items_achievement("He's a Funny Guy", "Learn all of the jokes in the joke book.", 3, jokes)

all_items_achievement("Silver-Tongued Devil", "Use all of Brett's golden lines.", 5, brett_lines)
all_items_achievement("Smooth Talker", "Use all of Becky's golden lines that are obtainable.", 5, becky_lines)

all_items_achievement("Win, Place and Show", "Obtain all three medals.", 3, medals)

all_items_achievement("Mr. Popular", "Obtain all of Brett's phone numbers.", 5, brett_numbers)
all_items_achievement("Miss Congeniality", "Obtain all of Becky's phone numbers.", 5, becky_numbers)
