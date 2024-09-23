go <user.arrow_keys>: 
    user.move_cursor(arrow_keys)
<user.letter> [<number_small>]: 
    n = number_small or 1
    key("{letter}:{n}")
(ship | uppercase) <user.letters> [(lowercase | sunk)]:
    user.insert_formatted(letters, "ALL_CAPS")
<user.symbol_key> [<number_small>]: 
    n = number_small or 1
    key("{symbol_key}:{n}")
<user.special_key> [<number_small>]: 
    n = number_small or 1
    key("{special_key}:{n}")

<user.function_key>: key(function_key)

<user.modifiers> <user.unmodified_key>: key("{modifiers}-{unmodified_key}")

# for key combos consisting only of modifiers, eg. `press super`.
press <user.modifiers>: key(modifiers)
# for consistency with dictation mode and explicit arrow keys if you need them.
press <user.keys>: key(keys)

# show warning for enter 
# shock: user.reminder_show("Remember to use clap not shock!")
