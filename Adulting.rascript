// ~Homebrew~ Adulting!
// #ID = 12300

// $C0C6: [8-bit] Interaction ID you are currently in front of. Pressing A will interact and write this value to 0xc919
function interaction_id_you_are_currently_in_front_of_pressing_a_will_interact_and_write_this_value_to_0xc919() => byte(0x00C0C6)

// $C0E2: [8-bit] Related to tiles for actor 1
//        Changes from 0x06 to 0x0A when Zap Zap ship blows up
function related_to_tiles_for_actor_1() => byte(0x00C0E2)

// $C110: [8-bit] Related to tiles for actor 2
//        Changes from 0x06 to 0x0A when Zap Zap ship blows up
function related_to_tiles_for_actor_2() => byte(0x00C110)

// $C259: [8-bit] Sprite animation info
//        Ticks from 0x05 to 0x00 when first fish sighs
function sprite_animation_info() => byte(0x00C259)

// $C6AC: [8-bit] Current screen
//        0x00 = Boot
//        0x01 = Dog park
//        0x02 = Credits
//        0x03 = To-do list
//        0x04 = Dog park
//        0x05 = Street
//        0x06 = Bedroom
//        0x07 = Kitchen
//        0x08 = Living room
//        0x09-0x0F = Grocery store
//        0x10 = Post office
//        0x11 = Library
//        0x12-0x15 = Title screen
//        0x16-0x19 = Opening cutscene
//        0x1A-0x1B = Trying to e-file
//        0x1C = Good thing you bought stamps
//        0x1D = Trying to call parents
//        0x1E = End cutscene
//        0x1F-0x27 = Credits
//        0x28 = Credits
//        0x29 = Fish tank
//        0x2A = Inventory
//        0x2B = To-do list
//        0x2C = Inventory and bank (unused?)
//        0x2D = Pizza shop
//        0x2F = Zap Zap title
//        0x31 = Zap Zap game over
//        0x35 = Getting latte
//        0x36 = Playing Zap Zap
function current_screen() => byte(0x00C6AC)

// $C71D: [8-bit] Cuss timer
//        0x00 = Not cussing
//        Counts down from 0x0A when you press B
function cuss_timer() => byte(0x00C71D)

// $C8EF: [8-bit] Related to screen shake
//        Normally zero during Zap Zap, goes nonzero when ship is hit
function related_to_screen_shake() => byte(0x00C8EF)

// $C919: [8-bit] Current interaction. Unique per screen
//        0x00 = Not interacting
//        0x01 = Pizza behind counter
//        0x02 = Library behind counter
//        0x04 = Roommate pizza
//        0x05 = Roommate phone
//        0x07 = Right stranger
//        0x08 = Go back to bed, left stranger
//        0x09 = Roommate wifi, middle stranger
//        0x0D, 0x0E = Left car on street
//        0x0F = Far right car on street - interaction is broken and this value remains until new interaction
//        0x10, 0x11 = Middle car on street
//        0x15, 0x16 = Right car on street
function current_interaction_unique_per_screen() => byte(0x00C919)

// $CBEE: [8-bit] X position on screen (measured in tiles)
//        Neg-pos = left-right
//        0x0C = Roommate's door
//        0x41 = Cafe door
//        0xFF = Non-gameplay screen (cutscenes, title)
function x_position_on_screen_measured_in_tiles() => byte(0x00CBEE)

// $CBEF: [8-bit] Y position on screen (measured in tiles)
//        Neg-pos = up-down
//        0x04 = Roommate's door
//        0x0C = Cafe door
//        0xFF = Non-gameplay screen (cutscenes, title)
function y_position_on_screen_measured_in_tiles() => byte(0x00CBEF)

// $CCBC: [8-bit] Inventory: Keys
//        0x00 = No
//        0x01 = Yes
function inventory_keys() => byte(0x00CCBC)

// $CCBD: [8-bit] Mailed tax return
//        0x00 = No
//        0x01 = Yes
function mailed_tax_return() => byte(0x00CCBD)

// $CCBF: [8-bit] Inventory: Stamps
//        0x00 = No
//        0x01 = Yes
function inventory_stamps() => byte(0x00CCBF)

// $CCC1: [8-bit] Inventory: Library Book
//        0x00 = No
//        0x01 = Yes
function inventory_library_book() => byte(0x00CCC1)

// $CCC2: [8-bit] Returned library book
//        0x00 = No
//        0x01 = Yes
function returned_library_book() => byte(0x00CCC2)

// $CCC3: [8-bit] Inventory: Coffee filters
//        0x00 = No
//        0x01 = Yes
function inventory_coffee_filters() => byte(0x00CCC3)

// $CCC5: [8-bit] Took dog for walk
//        0x00 = No
//        0x01 = Yes
function took_dog_for_walk() => byte(0x00CCC5)

// $CCD4: [8-bit] Bought coffee filters
//        0x00 = No
//        0x01 = Yes
function bought_coffee_filters() => byte(0x00CCD4)

// $CCD5: [8-bit] Brewed coffee
//        0x00 = No
//        0x01 = Yes
function brewed_coffee() => byte(0x00CCD5)

// $CCD6: [8-bit] Number of to-do tasks completed
//        Game ends when you do the 4th one
function tasks_completed() => byte(0x00CCD6)

// $CCD9: [8-bit] Tried to e-file after resetting router
//        0x00 = No
//        0x01 = Yes
function tried_to_e_file_after_resetting_router() => byte(0x00CCD9)

// $CCDD: [8-bit] Inventory: Chicken Wing
//        0x00 = No
//        0x01 = Yes
function inventory_chicken_wing() => byte(0x00CCDD)

// $CCE1: [8-bit] Gave Lulu wing
//        0x00 = No
//        0x01 = Yes
function gave_lulu_wing() => byte(0x00CCE1)

// $CCE3: [8-bit] Seen lulu vomit
//        0x00 = No
//        0x01 = Yes
function seen_lulu_vomit() => byte(0x00CCE3)

// $CCE4: [8-bit] Inventory: Rug cleaner
//        0x00 = No
//        0x01 = Yes
function inventory_rug_cleaner() => byte(0x00CCE4)

// $CCE5: [8-bit] Cleaned dog puke
//        0x00 = No
//        0x01 = Yes
function cleaned_dog_puke() => byte(0x00CCE5)

// $CCE9: [8-bit] Reset the wifi
//        0x00 = No
//        0x01 = Yes
function reset_the_wifi() => byte(0x00CCE9)

// $CCEA: [8-bit] Tried to e-file before resetting router
//        0x00 = No
//        0x01 = Yes
function tried_to_e_file_before_resetting_router() => byte(0x00CCEA)

// $CCEC: [8-bit] Bought pizza
//        0x00 = No
//        0x01 = Yes
function bought_pizza() => byte(0x00CCEC)

// Rich Presence

screen_names = {
    0x00: "Boot",
    0x01: "Dog park",
    0x02: "Credits",
    0x03: "To-do list",
    0x04: "Dog park",
    0x05: "Street",
    0x06: "Bedroom",
    0x07: "Kitchen",
    0x08: "Living room",
    0x09: "Grocery store",
    0x0A: "Grocery store",
    0x0B: "Grocery store",
    0x0C: "Grocery store",
    0x0D: "Grocery store",
    0x0E: "Grocery store",
    0x0F: "Grocery store",
    0x10: "Post office",
    0x11: "Library",
    0x12: "Title screen",
    0x13: "Title screen",
    0x14: "Title screen",
    0x15: "Title screen",
    0x16: "Opening cutscene",
    0x17: "Opening cutscene",
    0x18: "Opening cutscene",
    0x19: "Opening cutscene",
    0x1A: "Trying to e-file",
    0x1B: "Trying to e-file",
    0x1C: "Good thing you bought stamps",
    0x1D: "Trying to call parents",
    0x1E: "End cutscene",
    0x28: "Credits",
    0x29: "Fish tank",
    0x2A: "Inventory",
    0x2B: "To-do list",
    0x2C: "Inventory and bank (unused?)",
    0x2D: "Pizza shop",
    0x2F: "Zap Zap title",
    0x31: "Zap Zap game over",
    0x35: "Getting latte",
    0x36: "Playing Zap Zap"
}

checkmark = {
    0x00: "✗",
    0x01: "✓"
}

rp_screen = rich_presence_lookup("Screen", current_screen(), screen_names, "In game")

rp_file_taxes = rich_presence_lookup("Checked", mailed_tax_return(), checkmark)
rp_returned_book = rich_presence_lookup("Checked", returned_library_book(), checkmark)
rp_coffee_filters = rich_presence_lookup("Checked", bought_coffee_filters(), checkmark)
rp_walked_dog = rich_presence_lookup("Checked", took_dog_for_walk(), checkmark)

rp_tasks = rich_presence_macro("Number", tasks_completed())

rich_presence_conditional_display(current_screen() == 0 || (current_screen() >= 0x12 && current_screen() <= 0x15), "On the title screen")
rich_presence_display("Current screen: {0} [{1}File Taxes] [{2}Coffee Filters] [{3}Walk Dog] [✗Call Parents] [{4}Return Book]", rp_screen, rp_file_taxes, rp_coffee_filters, rp_walked_dog, rp_returned_book)
