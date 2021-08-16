os: windows
app: RStudio
-

tag(): user.line_commands

# ---------------FILES---------------------------------
new (file | tab): key(ctrl-shift-n)
open file: key(ctrl-o)
go to file: key(ctrl-.)
save all: key(ctrl-alt-s)
select all: key(ctrl-a)
find: key(ctrl-f)
find that: key(ctrl-f3)
align that: key(ctrl-i)
find in files: key(ctrl-shift-f)

# ---------------TABS---------------------------------
(right | next) tab [<number_small>]: key(ctrl-f12)
(left | previous) tab [<number_small>]: key(ctrl-f11)
first tab: key(ctrl-shift-f11)
last tab: key(ctrl-shift-f12)
close tab: key(ctrl-w)
close other tabs: key(ctrl-shift-alt-w)
add column: key(ctrl-f7)
# --------------FOCUS----------------------------------
focus (main | editor): key(ctrl-1)
focus console: key(ctrl-2)
focus terminal: key(alt-shift-t)
focus help: key(ctrl-3)
focus history: key(ctrl-4)
focus files: key(ctrl-5)
focus plots: key(ctrl-6)
focus packages: key(ctrl-7)
focus environment: key(ctrl-8)
focus viewer: key(ctrl-9)
focus git: key(ctrl-f1)
focus build: key(ctrl-f2)
focus connections: key(ctrl-f5)
# --------------RUNNING----------------------------------
dip: key(ctrl-enter)
(dips day | dip stay): key(alt-enter)
run chunk: key(ctrl-shift-enter)
(run document | build it): key(ctrl-alt-r)
run all previous: key(ctrl-alt-b)
run all after: key(ctrl-alt-e)
run next chunk: key(ctrl-alt-n)
knit (document | file): key(ctrl-shift-k)
insert chunk: key(ctrl-alt-i)
stop running: key(esc)
restart (are | our): key(ctrl-shift-f10)
# ---------------CODE---------------------------------
comment (line | lines | selected | block): key(ctrl-shift-c)
fold that: key(alt-l)
unfold that: key(alt-shift-l)
fold all: key(alt-o)
unfold all: key(shift-alt-o)
go to line: key(shift-alt-g)
move up: key(alt-up)
move down: key(alt-down)
add cursor up: key(ctrl-alt-up)
add cursor down: key(ctrl-alt-down)
insert oxygen: key(ctrl-alt-shift-r)
help that: key(f1)
show source: key(f2)
(echo | complete): key(ctrl-space)

# --------------CONSOLE----------------------------------
see that: user.r_paste_into_console("View({{text}})")
head that: user.r_paste_into_console("head({{text}})")
skim that: user.r_paste_into_console("skimr::skim({{text}})")
