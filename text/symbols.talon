question mark: "?"
(downscore | underscore): "_"
double dash: "--"
# (bracket | brack | left bracket): "{"
# (rbrack | are bracket | right bracket): "}"
triple quote: "'''"
(triple grave | triple back tick | gravy):
    insert("```")
(dot dot | dotdot | double dot): ".."
(ellipses | three dots): "..."
(comma and | spamma): ", "
plus: "+"
long plus: " + "
long minus: " - "
long pipe: " | "
long equals: " = "
arrow: "->"
ampersand: "&"
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
hug paren:
	insert("()")
	key(left)
hug (square | square brackets):
	insert("[]")
	key(left)
hug curly:
	insert("{}")
	key(left)
hug percent:
	insert("%%")
	key(left)
hug quote:
	insert('""')
	key(left)
hug tick:
	insert("``")
	key(left)
hug (angle | angles):
        insert("<>")
        key(left)
# these might not copy paste properly
angle that:
    text = edit.selected_text()
    user.paste("<{text}>")
(square | square bracket) that:
    text = edit.selected_text()
    user.paste("[{text}]")
curly that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
(paren | args) that:
    text = edit.selected_text()
    user.paste("({text})")
percent that:
    text = edit.selected_text()
    user.paste("%{text}%")
quote that:
    text = edit.selected_text()
    user.paste('"{text}"')
tick that:
    text = edit.selected_text()
    user.paste('`{text}`')
