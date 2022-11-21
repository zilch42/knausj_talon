# hunt (word | that):
#     edit.find()

# (next one | hunt next):
#     edit.find_next()

(bird | fly lease):
    edit.word_left()

(firch | fearch | fly ross):
    edit.word_right()

fly source: 
    key(ctrl-up)

fly dunce: 
    key(ctrl-down)

lease:
    edit.left()

ross:
    edit.right()

source:
    edit.up()

dunce:
    edit.down()

go home:
    edit.line_start()

go end:
    edit.line_end()

go way home:
    edit.line_start()
    edit.line_start()

go way end:
    edit.line_end()

go [to] bottom:
    edit.file_end()

go [to] top:
    edit.file_start()
    
go page down:
    edit.page_down()

go page up:
    edit.page_up()

# selecting
(select line | shackle):
    edit.select_line()

select all:
    edit.select_all()

(shin | select) (left | lease):
    edit.extend_left()

(shin | select) (right | ross):
    edit.extend_right()

(shin | select) (up | sauce):
    edit.extend_line_up()

(shin | select) (down | dunce):
    edit.extend_line_down()

(grab | select) word:
    edit.select_word()

(grab | select word) (left | lease):
    edit.extend_word_left()
    
(grab | select word) (right | ross):
    edit.extend_word_right()

(grab | select) home:
    edit.extend_line_start()

(grab | select) end:
    edit.extend_line_end()

(grab | select) top:
    edit.extend_file_start()

(grab | select) bottom:
    edit.extend_file_end()

# editing
indent [more]:
    edit.indent_more()

(indent less | out dent):
    edit.indent_less()

# deleting
clear line:
    edit.delete_line()

clear (left | lease):
    key(backspace)

clear (right | ross):
    key(delete)

clear (up | sauce):
    edit.extend_line_up()
    edit.delete()

clear (down | dunce):
    edit.extend_line_down()
    edit.delete()

# (splat | clear word):
#     edit.delete_word()

(splat | clear word) [left | lease]:
    edit.extend_word_left()
    edit.delete()

(splat | clear word) (right | ross):
    edit.extend_word_right()
    edit.delete()

clear way (left | lease):
    edit.extend_line_start()
    edit.delete()

clear way (right | ross):
    edit.extend_line_end()
    edit.delete()

clear way (up | sauce):
    edit.extend_file_start()
    edit.delete()

clear way (down | dunce):
    edit.extend_file_end()
    edit.delete()

clear all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

processed word (left | lease):
    edit.extend_word_left()
    edit.copy()

copy word (right | ross):
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut word (left | lease):
    edit.extend_word_left()
    edit.cut()

cut word (right | ross):
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()


