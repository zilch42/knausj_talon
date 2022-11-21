zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()
scroll up: edit.page_up()
scroll down: edit.page_down()
stoosh: edit.copy()
cut: edit.cut()
spark: edit.paste()
shogo: 
	edit.select_line()
	edit.paste()
	key("enter")
undo: edit.undo()
redo: edit.redo()
paste match: edit.paste_match_style()
save: edit.save()
sink: edit.line_insert_down()

# WoS operators
long or: " OR "
long and: " AND "
long not: " NOT "