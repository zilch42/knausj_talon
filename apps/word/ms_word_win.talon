app: ms_word
os: windows
-
# tag(): user.find_and_replace

settings():
    key_wait = 10

zoom in: key("ctrl-alt-+")
zoom out: key("ctrl-alt--")

new window: key(alt-w n)
close window: key(ctrl-w)
new file: key(ctrl-n)
open file: key(ctrl-o)
save as: key(f12)
^hunt$: key(ctrl-f)
replace: key(ctrl-h)

# ribbon
file menu: key(alt-f)
home tab: key(alt-h)
layout tab: key(alt-p)
insert tab: key(alt-n)
design tab: key(alt-g)
references tab: key(alt-s)
review tab: key(alt-r)
view tab: key(alt-w)
developer tab: key(alt-l)

[leave | exit | close] ribbon: key(esc:4)

# formatting
make bold: key(alt-h 1)
make italic: key(alt-h 2)
make underline: key(alt-h 3)

line spacing: key(alt-h k)

align left: key(alt-h a l)
align centre: key(alt-h a c)
align right: key(alt-h a r)
align justified: key(alt-h a j)

bullet that: key(alt-h u)
number that: key(alt-h n)

font colour open: key(alt-h f c)
font colour black: key(alt-h f c home enter)
font colour red: key(alt-h f c home down:7 left:4 enter)
font colour yellow: key(alt-h f c home down:7 left:2 enter)
font colour green: key(alt-h f c home down:7 left enter)
font colour white: key(alt-h f c home down left:5 enter)

font size up: key(alt-h f g)
font size down: key(alt-h f k)

show styles: key(alt-h l)
make uppercase: key(alt-h 7 u)
make lowercase: key(alt-h 7 l)
make sentence case: key(alt-h 7 s)
make title case: key(alt-h 7 c)

show paragraph marks: key(alt-h 8)

# insert
make page break: key(alt n b)
make section break: key(alt-p b n)
new text box: key(alt-n x)
show symbols: key(alt-n u)
make footnote: key(alt-s f)
make caption: key(alt-s p)

# references
insert figure reference:
    key(alt-s r f)
    sleep(200ms)
    key(f i g u r e enter)
    sleep(200ms)
    key(tab down:2 enter tab:2)
insert table reference:
    key(alt-s r f)
    sleep(200ms)
    key(t a b l e enter)
    sleep(200ms)
    key(tab down:2 enter tab:2)

# comments
add comment: key(alt-r c)
delete comment: key(alt-r d d)
next comment: key(alt-r n)
next change: key(alt-r h 1)
accept change: key(alt-r a 2)
reject change: key(alt-r j)
track changes: key(alt-r g)

# paste
paste metafile: 
    key(alt-h esc:4 alt-h)
    sleep(50ms)
    key(v down enter)
    sleep(50ms)
    key(up:4 enter)
paste without formatting: key(alt-h v t)

# view options
scroll vertical: key(alt-w c)
scroll side to side: key(alt-w h)
navigation pane: key(alt-w k)

# options
disable dragon add-in: 
    key(alt-f t)
    sleep(200ms)
    key(a a alt-g)
    sleep(200ms)
    key(space enter)

# prose formatters (in symbols.talon)
# full stop: 
#     key(backspace . space)
# full comma:
#     key(backspace , space)
# full questo:
#     key(backspace ? space)
# full clamour:
#     key(backspace ! space)
# full semper:
#     key(backspace ; space)

