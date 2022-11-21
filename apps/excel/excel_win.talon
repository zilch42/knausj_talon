os: windows
app: excel
-

settings():
    key_wait = 10

zoom in: key("ctrl-alt-+")
zoom out: key("ctrl-alt--")

new tab: key(shift-f11)
left tab: key("ctrl-pgup")
right tab: key("ctrl-pgdown")

new window: key(alt-w n)
close window: key(ctrl-w)
new file: key(ctrl-n)
open file: key(ctrl-o)
save as: key(f12)

[leave | exit | close] ribbon: key(esc:4)

rename tab:
    key(alt-h)
    sleep(200ms)
    key(o r)
tab colour:
    key(alt-h)
    sleep(200ms)
    key(o t)

duplicate tab:
    key(alt-h)
    sleep(200ms)
    key(o m)
    sleep(200ms)
    key(end tab space enter)

paste special: key(ctrl-alt-v)
paste values:
    key(alt-h)
    sleep(200ms)
    key(v e)
paste visible: 
    key(alt-h f d s y enter)
    sleep(200ms)
    key(ctrl-v)
paste widths:
    key(alt-h)
    sleep(200ms)
    key(v w)

go to special: key(alt-h f d s)
go to visible: key(alt-h f d s y enter)

^hunt$: key(ctrl-f)
replace: key(ctrl-h)


freeze pains: key(alt-w f f)

insert cells:
    key(ctrl-shift-+)
insert row:
    key(ctrl-shift-+)
    sleep(200ms)
    key(down enter)
insert column:
    key(ctrl-shift-+)
    sleep(200ms)
    key(down:2 enter)
delete cells:
    key(ctrl--)
delete row:
    key(ctrl--)
    sleep(200ms)
    key(down:2 enter)
delete column:
    key(ctrl--)
    sleep(200ms)
    key(down:3 enter)

select row:
    key(shift-space)
    sleep(200ms)
select column:
    key(ctrl-space)
    sleep(200ms)
clear row:
    key(shift-space)
    sleep(200ms)
    key(delete)
clear column:
    key(ctrl-space)
    sleep(200ms)
    key(delete)

file menu: key(alt-f)
home tab: key(alt-h)
page layout tab: key(alt-p)
insert tab: key(alt-n)
data tab: key(alt-a)
view tab: key(alt-w)
formulas tab: key(alt-m)
review tab: key(alt-r)
developer tab: key(alt-l)
pivot analyse tab: key(alt j t)
pivot design tab: key(alt j y)

fill down: key(ctrl-d)
fill down left: key(left ctrl-down right ctrl-shift-up ctrl-d)
fill down right: key(right ctrl-down left ctrl-shift-up ctrl-d)
auto some: key(alt-=)
fix that: key("f4")

add filter: key(alt-h s f)
open filter: key(ctrl-up alt-down tab:8)
clear filter: key(alt-h s c ctrl-up down ctrl-up alt-down tab:8)
clear left filter: key(left up alt-h s c ctrl-up down ctrl-up alt-down tab:8)
sort by largest: key(alt-h s o)
sort by smallest: key(alt-h s s)

refresh all: key(ctrl-alt-f5)
insert pivot table: 
    key(alt-n v)
    sleep(200ms)
    key(enter)
refresh pivot:
    key(alt:down j t alt:up)
    key(z p t t)
    key(tab right up tab down:2 space)

edit cell: key(f2)
press control: key(ctrl)

cell bold: key(ctrl-b)
cell italic: key(ctrl-i)
cell underline: key(ctrl-u)

font size up: key(alt-h f g)
font size down: key(alt-h f k)

# starting position is not consistent
font colour open: key(alt-h f c)
font colour black: key(alt-h f c home enter)
font colour red: key(alt-h f c home down:7 left:4 enter)
font colour yellow: key(alt-h f c home down:7 left:2 enter)
font colour green: key(alt-h f c home down:7 left enter)
font colour white: key(alt-h f c home down left:5 enter)

cell fill open: key(alt-h h)
cell fill black: key(alt-h h right enter)
cell fill red: key(alt-h h down:6 right enter)
cell fill yellow: key(alt-h h down:6 right:2 enter)
cell fill green: key(alt-h h down:6 right:4 enter)
cell fill white: key(alt-h h enter)
cell fill clear: key(alt-h h n)

cell align left: key(alt-h a l)
cell align centre: key(alt-h a c)
cell align right: key(alt-h a r)

general style: key(ctrl-shift-~)
currency style: key(ctrl-shift-$)
percent style: key(ctrl-shift-%)
scientific style: key(ctrl-shift-^)
date style: key(ctrl-shift-#)
time style: key(ctrl-shift-@)
number style: key(ctrl-shift-!)
comma style: key(alt-h k)
text style: key(alt-h n t e x t enter)
increase decimal: key(alt-h 0)
decreased decimal: key(alt-h 9)

style good: key(alt-h j home right:2 enter)
style bad: key(alt-h j home right enter)
style neutral: key(alt-h j home right:3 enter)
style normal: key(alt-h j home enter)

cell border: key(alt-h b)
cell border right: key(alt-h b r)
cell border left: key(alt-h b l)
cell border top: key(alt-h b p)
cell border bottom: key(alt-h b o)
cell border all: key(alt-h b a)
cell border outside: key(alt-h b s)
cell border thick outside: key(alt-h b t)
cell border thick bottom: key(alt-h b h)
cell border parallel: key(alt-h b d)
cell [clear | no] border: key(ctrl-shift-h b n)

merge cells: key(alt-h m c)

add comment: key(alt-r c)
delete comment: key(alt-r d)

select <user.xl_cell>: user.xl_select_cells(xl_cell)
select <user.xl_cell> [through | by] <user.xl_cell>: user.xl_select_cells(xl_cell_1, xl_cell_2)

# options
disable dragon add-in: 
    key(alt-f t)
    sleep(200ms)
    key(a a alt-a down enter alt-g)
    sleep(200ms)
    key(space enter)

# custom commands
yes: key(ctrl-v down)
no: key(down)