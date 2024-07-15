(dot dot | dotdot | double dot): ".."
boom|spam: ", "
underscore: "_"
plus: "+"
ampersand: "&"
question mark: "?"
slash: "/"

# long
long plus: " + "
long minus: " - "
long pipe: " | "
long equals: " = "
long ampersand: " & "

# inside punctuation
empty dub string: user.insert_between('"', '"')
empty escaped (dub string | dub quotes): user.insert_between('\\"', '\\"')
empty string: user.insert_between("'", "'")
empty escaped string: user.insert_between("\\'", "\\'")
(inside parens | args): user.insert_between("(", ")")
inside (squares | square brackets | list): user.insert_between("[", "]")
inside (bracket | braces): user.insert_between("{", "}")
inside percent: user.insert_between("%", "%")
inside (quotes | string): user.insert_between("'", "'")
inside (double quotes | dub quotes): user.insert_between('"', '"')
inside (graves | back ticks): user.insert_between("`", "`")
inside angle: user.insert_between("<", ">")

# sentence backspaces
(four|full) stop: 
    key(backspace . space)
(four|full) comma:
    key(backspace , space)
(four|full) questo:
    key(backspace ? space)
(four|full) clamour:
    key(backspace ! space)
(four|full) semper:
    key(backspace ; space)
(four|full) deckle:
    key(backspace : space)

# hugs
# these might not copy paste properly
(angle that | hug angle):
    text = edit.selected_text()
    user.paste("<{text}>")
(square that | hug square):
    text = edit.selected_text()
    user.paste("[{text}]")
(curly that | hug curly):
    text = edit.selected_text()
    user.paste("{{{text}}}")
(paren that | hug paren):
    text = edit.selected_text()
    user.paste("({text})")
(percent that | hug paren):
    text = edit.selected_text()
    user.paste("%{text}%")
(quote that | hug quotes):
    text = edit.selected_text()
    user.paste('"{text}"')
(ticky that | hug ticky):
    text = edit.selected_text()
    user.paste('`{text}`')
