// ~Homebrew~ Adulting!
// #ID = 12300

// $C0C6: [8-bit] Interaction ID you are currently in front of. Pressing A will interact and write this value to 0xc919
function interaction_id_you_are_currently_in_front_of_pressing_a_will_interact_and_write_this_value_to_0xc919() => byte(0x00C0C6)

// $C0E2: [8-bit] Related to tiles for actor 1
//        Changes from 0x06 to 0x0A when Zap Zap ship blows up
function actor_1_tile() => byte(0x00C0E2)

// $C110: [8-bit] Related to tiles for actor 2
//        Changes from 0x06 to 0x0A when Zap Zap ship blows up
function actor_2_tile() => byte(0x00C110)

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

function roommate_left() => byte(0xcce8)

// $C71D: [8-bit] Cuss timer
//        0x00 = Not cussing
//        Counts down from 0x0A when you press B
function cuss_timer() => byte(0x00C71D)

// $C8EF: [8-bit] Related to screen shake
//        Normally zero during Zap Zap, goes nonzero when ship is hit
function screen_shake() => byte(0x00C8EF)

// $C919: [8-bit] Current interaction. Unique per screen
//        0x00 = Not interacting
//        0x01 = Pizza behind counter, talk to roommate, call parents
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
function current_interaction() => byte(0x00C919)

// $CBEE: [8-bit] X position on screen (measured in tiles)
//        Neg-pos = left-right
//        0x0C = Roommate's door
//        0x41 = Cafe door
//        0xFF = Non-gameplay screen (cutscenes, title)
function x_tile() => byte(0x00CBEE)

// $CBEF: [8-bit] Y position on screen (measured in tiles)
//        Neg-pos = up-down
//        0x04 = Roommate's door
//        0x0C = Cafe door
//        0xFF = Non-gameplay screen (cutscenes, title)
function y_tile() => byte(0x00CBEF)

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

function bought_rug_cleaner() => byte(0xccdf)

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

// Achievements

achievement(
    title = "Stress Relief",
    description = "Express yourself.",
    points = 1,
    trigger = prev(cuss_timer() == 0) && cuss_timer() == 0x0a
        && current_screen() != 0
        && current_screen() != 2
        && __ornext(current_screen() < 0x12
        || current_screen() > 0x2C)
        && current_screen() != 0x2F
        && current_screen() != 0x31
        && current_screen() != 0x35
        && current_screen() != 0x36
)

achievement(
    title = "Me Too, Man",
    description = "Commiserate with your pet fish.",
    points = 1,
    trigger = current_screen() == 0x29
        && trigger_when(sprite_animation_info() == 0x00
        && prev(sprite_animation_info()) == 0x05)
)

achievement(
    title = "Five More Minutes",
    description = "Try to go back to bed.",
    points = 1,
    trigger = prev(current_interaction()) == 0x08
        && current_interaction() == 0x00
        && current_screen() == 0x06
)

function todo_task_achievement(title, description, task_bitflag, screen) {
    achievement(
        title = title,
        description = description,
        points = 1,
        trigger = prev(task_bitflag) == 0
            && task_bitflag == 1
            && current_screen() == screen,
        type = "progression"
    )
}

todo_task_achievement("Caffeine Addict", "Buy coffee filters.", bought_coffee_filters(), 9)
todo_task_achievement("Walk the Dog", "Take your dog for a walk.", took_dog_for_walk(), 4)
todo_task_achievement("With Interest", "Return your overdue library book.", returned_library_book(), 0x11)

achievement(
    title = "File Taxes",
    description = "File your tax return.",
    points = 1,
    trigger = prev(mailed_tax_return()) == 0
        && mailed_tax_return() == 1
        && __ornext(current_screen() == 5 || current_screen() == 0x10),
    type = "progression"
)

achievement(
    title = "Adulting FTW",
    description = "Accomplish (almost) everything on your to-do list.",
    points = 3,
    trigger =
        current_screen() == 0x1e && prev(current_screen()) != 0x1e
        && bought_coffee_filters() == 1
        && mailed_tax_return() == 1
        && took_dog_for_walk() == 1
        && returned_library_book() == 1,
    type = "win_condition"
)

achievement(
    title = "Out of Spoons",
    description = "Call your parents... well, maybe tomorrow.",
    points = 2,
    trigger = prev(current_screen()) == 0x1D && current_screen() == 0x1E
        && brewed_coffee() == 0x01
)

roommate_ids = [ 1, 4, 5, 9 ]
roommate_interactions = array_map(roommate_ids,
    interaction => once(current_interaction() == interaction && prev(current_interaction() == 0))
)
array_push(roommate_interactions, x_tile() == 0x0C && y_tile() == 0x04 && prev(y_tile() == 0x05))

achievement(
    title = "Roommate from Hell",
    description = "Bother your roommate as much as possible.",
    points = 3,
    trigger =
        measured(tally(length(roommate_interactions), roommate_interactions))
        && never(roommate_left() == 1)
        && never(current_screen() != 8),
    type = "missable"
)

achievement(
    title = "Now, Who Fed You That?",
    description = "Clean up after Lulu gets sick.",
    points = 3,
    trigger =
        current_screen() == 6
        && prev(cleaned_dog_puke()) == 0 && cleaned_dog_puke() == 1
)

achievement(
    title = "Social Caterpillar",
    description = "Strike up a conversation with everyone on the street.",
    points = 2,
    trigger = 
        measured(tally_of([7,8,9], 3, interaction =>
            once(current_interaction() == interaction && __ornext(prev(current_interaction() == 0) || prev(current_interaction() == 0xf)))
        )) && never(current_screen() != 5)
)

achievement(
    title = "Public Disturbance",
    description = "Honk all the car horns on the street.",
    points = 2,
    trigger =
        any_of([0xd, 0xe],
            l => any_of([0x10, 0x11],
                m => any_of([0x15, 0x16],
                    r => (
                        measured(tally(3,
                            once(current_interaction() == l && __ornext(prev(current_interaction()) == 0 || prev(current_interaction()) == 0xf)),
                            once(current_interaction() == m && __ornext(prev(current_interaction()) == 0 || prev(current_interaction()) == 0xf)),
                            once(current_interaction() == r && __ornext(prev(current_interaction()) == 0 || prev(current_interaction()) == 0xf))
                        ))
                    )
                )
            )
        ) && never(current_screen() != 5)
)

achievement(
    title = "Act Like You Belong",
    description = "placeholder",
    points = 3,
    trigger =
        measured(tally(3,
            once(current_screen() == 0x2d
                && current_interaction() == 1
                && prev(current_interaction()) == 0),
            once(current_screen() == 0x11
                && current_interaction() == 2
                && prev(current_interaction()) == 0),
            once(current_screen() == 0x10
                && x_tile() != 0x08
                && y_tile() == 0x08
                && prev(y_tile()) == 0x09)
        )) && never(current_screen() == 0)
)

achievement(
    title = "Here Comes the Pizza",
    description = "placeholder",
    points = 1,
    trigger =
        bought_pizza() == 1
        && prev(bought_pizza()) == 0
        && current_screen() == 0x2d
)

achievement(
    title = "placeholder",
    description = "Contemplate buying a latte.",
    points = 1,
    trigger =
        current_screen() == 0x35
        && prev(current_screen()) == 0x05
        && current_interaction() == 0,
    type = "missable"
)

achievement(
    title = "Crime Doesn't Pay",
    description = "Get caught shoplifting and face the consequences.",
    points = 3,
    trigger = 
        current_screen() == 0x34
        && prev(current_screen() == 0x09)
        && ((inventory_coffee_filters() == 1
        && bought_coffee_filters() == 0) || (inventory_rug_cleaner() == 1 && bought_rug_cleaner() == 0)),
    type = "missable"
)

achievement(
    title = "It Just So Happens...",
    description = "Try to e-file your tax return with stamps in your inventory.",
    points = 2,
    trigger =
        current_screen() == 0x1C
        && prev(current_screen()) == 0x1B
        && inventory_stamps() == 1,
    type = "missable"
)

actor_1_tile() // 0xc0e2
actor_2_tile() // 0xc110

function actor_tile(index) {
    first_actor = 0xc0e2
    offset = 0xc110 - 0xc0e2
    target_addr = first_actor + offset * index
    return byte(target_addr)
}

function aliens_destroyed(count) {
    return measured(
        tally_of(range(0, 14), count, index => screen_shake() == 0 && actor_tile(index) == 0x0a && prev(actor_tile(index)) == 0x06)
    )
}

achievement(
    title = "Master Procrastinator",
    description = "Win a game of Zap Zap after destroying at least 5 aliens.",
    points = 5,
    trigger =
        aliens_destroyed(5)
        && never(current_screen() != 0x36 && current_screen() != 0x30)
        && trigger_when(prev(current_screen() == 0x36) && current_screen() == 0x30)
)

// Leaderboards

leaderboard(
    title = "Zap Zap High Score",
    description = "Destroy the most aliens in Zap Zap.",
    start = current_screen() == 0x36 && prev(current_screen() == 0x2F),
    cancel = current_screen() != 0x36 && current_screen() != 0x31 && current_screen() != 0x30,
    submit = __ornext(current_screen() == 0x31 || current_screen() == 0x30) && prev(current_screen() == 0x36),
    value = aliens_destroyed(0),
    format = "VALUE"
)

// Rich Presence

screen_names = {
    0x00: "in the Boot",
    0x01: "in the dog park",
    0x02: "in the credits",
    0x03: "on the pause screen",
    0x04: "in the dog park",
    0x05: "in the street",
    0x06: "in the bedroom (not like that)",
    0x07: "in the kitchen",
    0x08: "in the living room",
    0x09: "in the grocery store",
    0x0A: "in the grocery store",
    0x0B: "in the grocery store",
    0x0C: "in the grocery store",
    0x0D: "in the grocery store",
    0x0E: "in the grocery store",
    0x0F: "in the grocery store",
    0x10: "in the post office",
    0x11: "in the library",
    0x12: "on the title screen",
    0x13: "on the title screen",
    0x14: "on the title screen",
    0x15: "on the title screen",
    0x16: "in the opening cutscene",
    0x17: "in the opening cutscene",
    0x18: "in the opening cutscene",
    0x19: "in the opening cutscene",
    0x1A: "on the computer",
    0x1B: "on the computer",
    0x1C: "on the computer",
    0x1D: "in the bedroom (not like that)",
    0x1E: "in the end cutscene",
    0x28: "in the credits",
    0x29: "in the fish tank",
    0x2A: "in the inventory",
    0x2B: "on the to-do list",
    0x2C: "in the inventory and bank (unused?)",
    0x2D: "in the pizza shop",
    0x2F: "while playing Zap Zap",
    0x31: "while playing Zap Zap",
    0x35: "in the coffee shop",
    0x36: "while playing Zap Zap"
}

checkmark = {
    0x00: "✗",
    0x01: "✓"
}

rp_screen = rich_presence_lookup("Screen", current_screen(), screen_names, "and doing a great job")

rp_file_taxes = rich_presence_lookup("Checked", mailed_tax_return(), checkmark)
rp_returned_book = rich_presence_lookup("Checked", returned_library_book(), checkmark)
rp_coffee_filters = rich_presence_lookup("Checked", bought_coffee_filters(), checkmark)
rp_walked_dog = rich_presence_lookup("Checked", took_dog_for_walk(), checkmark)

rp_tasks = rich_presence_macro("Number", tasks_completed())

rich_presence_conditional_display(current_screen() == 0 || (current_screen() >= 0x12 && current_screen() <= 0x15), "Adulting on the title screen")
rich_presence_display("Adulting {0} [{1}File Taxes] [{2}Coffee Filters] [{3}Walk Dog] [✗Call Parents] [{4}Return Book]", rp_screen, rp_file_taxes, rp_coffee_filters, rp_walked_dog, rp_returned_book)
