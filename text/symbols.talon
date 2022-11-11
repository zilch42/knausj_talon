question mark: "?"
(downscore | underscore): "_"
double dash: "--"

triple quote: "'''"
(triple ticky | triple back tick | gravy):
    insert("```")
(dot dot | dotdot | double dot): ".."
(ellipses | three dots): "..."
(comma and | spamma | boom): ", "

plus: "+"
ampersand: "&"
long plus: " + "
long minus: " - "
long pipe: " | "
long equals: " = "
long ampersand: " & "

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

arrow: "->"
dub arrow: "=>"
slash: "/"
new line: "\\n"

# carriage return: "\\r"
# line feed: "\\r\\n"
# empty dubstring:
#     '""'
#     key(left)
# empty escaped (dubstring|dub quotes):
#     '\\"\\"'
#     key(left)
#     key(left)
# empty string:
#     "''"
#     key(left)
# empty escaped string:
#     "\\'\\'"
#     key(left)
#     key(left)

# hug paren:
# 	insert("()")
# 	key(left)
# hug (square | square brackets):
# 	insert("[]")
# 	key(left)
# hug curly:
# 	insert("{}")
# 	key(left)
# hug percent:
# 	insert("%%")
# 	key(left)
# hug quote:
# 	insert('""')
# 	key(left)
# hug tick:
# 	insert("``")
# 	key(left)
# hug (angle | angles):
#         insert("<>")
#         key(left)

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
