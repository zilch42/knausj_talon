#(jay son | jason ): "json"
#(http | htp): "http"
#tls: "tls"
#M D five: "md5"
#word (regex | rejex): "regex"
#word queue: "queue"
#word eye: "eye"
#word iter: "iter"
#word no: "NULL"
#word cmd: "cmd"
#word dup: "dup"
#word shell: "shell".
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()
scroll up: edit.page_up()
scroll down: edit.page_down()
copy that: edit.copy()
copy that: edit.copy()
stoosh: edit.copy()
cut: edit.cut()
paste that: edit.paste()
spark: edit.paste()
shogo: 
	edit.select_line()
	edit.paste()
	key("enter")
undo: edit.undo()
redo: edit.redo()
paste match: edit.paste_match_style()
save: edit.save()
wipe: key(backspace)
(pad | padding):
	insert("  ")
	key(left)
slap: edit.line_insert_down()
hmmm: ""

# wos shortcuts
long and: " AND "
long or: " OR "
long not: " NOT "