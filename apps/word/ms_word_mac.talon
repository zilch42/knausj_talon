app: ms_word
os: mac
-

settings():
    key_wait = 10

zoom in: key("cmd-alt-+")
zoom out: key("cmd-alt--")

new window: key(alt-w n)
close window: key(cmd-w)
new file: key(cmd-n)
open file: key(cmd-o)
save as: key(f12)
^hunt$: key(cmd-f)
replace: key(cmd-h)

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
insert page break: key(alt-n b)
insert section break: key(alt-p b n)
insert text box: key(alt-n x)
insert symbol: key(alt-n u)
insert footnote: key(alt-s f)
insert caption: key(alt-s p)

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
paste metafile: key(alt-h v down enter up:4 enter)
paste without formatting: key(alt-h v t)

# view options
scroll vertical: key(alt-w c)
scroll side to side: key(alt-w h)
navigation pane: key(alt-w k)

