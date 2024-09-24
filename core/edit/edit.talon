# Compound of action(select, clear, copy, cut, paste, etc.) and modifier(word, line, etc.) commands for editing text.
# eg: "select line", "clear all"
<user.edit_action> <user.edit_modifier>: user.edit_command(edit_action, edit_modifier)

# Zoom
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()

# go left, go left left down, go 5 left 2 down
# go word left, go 2 words right
go <user.navigation_step>+: user.perform_navigation_steps(navigation_step_list)

go home: edit.line_start()
go end: edit.line_end()
go line start | head: edit.line_start()
go way (left|home):
    edit.line_start()
    edit.line_start()
    go way end: edit.line_end()
go line end | tail: edit.line_end()
go bottom: edit.file_end()
go top: edit.file_start()

(bird | fly (lease|west)) [<number_small>]: 
    n = number_small or 1
    edit.word_left()
    repeat(n-1)

(firch | fearch | fly (ross|east)) [<number_small>]: 
    n = number_small or 1
    edit.word_right()
    repeat(n-1)

fly (source|north) [<number_small>]: 
    n = number_small or 1
    key("ctrl-up:{n}")

fly (dunce|south) [<number_small>]: 
    n = number_small or 1
    key("ctrl-down:{n}")

(lease|west) [<number_small>]: 
    n = number_small or 1
    edit.left()
    repeat(n-1)

(ross|east) [<number_small>]: 
    n = number_small or 1
    edit.right()
    repeat(n-1)

(source|north) [<number_small>]: 
    n = number_small or 1
    edit.up()
    repeat(n-1)

(dunce|south) [<number_small>]: 
    n = number_small or 1
    edit.down()
    repeat(n-1)

# Selecting
shackle: edit.select_line()
select all: edit.select_all()
grab word: edit.select_word()
grab (left|lease|west): edit.extend_word_left()
grab (right|ross|east): edit.extend_word_right()
grab home: edit.extend_line_start()
grab end: edit.extend_line_end()
grab top: edit.extend_file_start()
grab bottom: edit.extend_file_end()

# grab inside:
#     key(del)
#     edit.word_right()
#     ")"

shin (lease|west) [<number_small>]: 
    n = number_small or 1
    edit.extend_left()
    repeat(n-1)

shin (ross|east) [<number_small>]: 
    n = number_small or 1
    edit.extend_right()
    repeat(n-1)

shin (source|north) [<number_small>]: 
    n = number_small or 1
    edit.extend_line_up()
    repeat(n-1)

shin (dunce|south) [<number_small>]: 
    n = number_small or 1
    edit.extend_line_down()
    repeat(n-1)

# Indentation
indent [more]: edit.indent_more()
(indent less | out dent): edit.indent_less()

# Delete
clear left: edit.delete()
clear right: user.delete_right()
clear to:
    edit.delete()
    edit.delete()

splat [(lease|west)] [<number_small>]: 
    n = number_small or 1
    edit.extend_word_left()
    repeat(n-1)
    edit.delete()

splat (ross|east) [<number_small>]: 
    n = number_small or 1
    edit.extend_word_right()
    repeat(n-1)
    edit.delete()

# Copy
copy: edit.copy()
copy that: edit.copy()
copy all: user.copy_all()
copy line: user.copy_line()
copy word: user.copy_word()
copy word left: user.copy_word_left()
copy word right: user.copy_word_right()

# Cut
cut: edit.cut()
cut all: user.cut_all()
cut line: user.cut_line()
cut line start: user.cut_line_start()
cut line end: user.cut_line_end()
cut word: user.cut_word()
cut word left: user.cut_word_left()
cut word right: user.cut_word_right()


# Paste
(pace | paste) that: edit.paste()
(pace | paste) enter:
    edit.paste()
    key(enter)
paste match: edit.paste_match_style()
(pace | paste) all: user.paste_all()
(pace | paste) line: user.paste_line()
(pace | paste) home: user.paste_line_start()
(pace | paste) end: user.paste_line_end()
(pace | paste) word: user.paste_word()
spark: 
    edit.paste()
    sleep(100ms)
replace all: 
	edit.select_all()
	edit.paste()
shogo|show go: 
    edit.select_line()
    edit.paste()
    key("enter")

# Insert new line
new line above: edit.line_insert_up()
new line below | sink: edit.line_insert_down()

# Insert padding with optional symbols
(pad | padding): user.insert_between(" ", " ")
(pad | padding) <user.symbol_key>+:
    insert(" ")
    user.insert_many(symbol_key_list)
    insert(" ")

# Undo/redo
undo that: edit.undo()
redo that: edit.redo()
(undo|nope) [<number_small>]: 
    n = number_small or 1
    edit.undo()
	repeat(n-1)
redo [<number_small>]: 
    n = number_small or 1
    edit.redo()
	repeat(n-1)

# Save
file save | disk: edit.save()
file save all: edit.save_all()

[go] line mid: user.line_middle()
