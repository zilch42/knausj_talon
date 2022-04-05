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
scroll up: edit.page_up()
scroll down: edit.page_down()
copy that: edit.copy()
stoosh: edit.copy()
cut: edit.cut()
paste that: edit.paste()
spark: edit.paste()
undo: edit.undo()
redo: edit.redo()
paste match: edit.paste_match_style()
save: edit.save()
(pad | padding): 
	insert("  ") 
	key(left)
slap:
	edit.line_end()
	key(enter)
hmmm: ""

# wos shortcuts
long and: " AND "
long or: " OR "
long not: " NOT "

