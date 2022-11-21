os: mac
app: RStudio
-

tag(): user.line_commands
tag(): user.find_and_replace

# ---------------FILES------------------------------

new (file | tab): key(cmd-shift-n)
open file: key(cmd-o)
go to file: key(ctrl-.)
save all: key(cmd-alt-s)
select all: key(cmd-a)
^hunt$: key(cmd-f)
hunt that: key(cmd-f3)
align that: key(cmd-i)
hunt all: key(cmd-shift-f)

# ---------------TABS---------------------------------
(right | next) tab [<number_small>]: key(ctrl-shift-f12)
(left | previous) tab [<number_small>]: key(ctrl-shift-f11)
first tab: key(cmd-shift-f11)
last tab: key(cmd-shift-f12)
close tab: key(cmd-w)
close other tabs: key(cmd-shift-alt-w)
add column: key(cmd-f7)
# --------------FOCUS----------------------------------
focus (main | editor): key(ctrl-1)
focus console: key(ctrl-2)
focus terminal: key(alt-shift-m)
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
dip: key(cmd-enter)
(dips day | dip stay): key(alt-enter)
run chunk: key(cmd-shift-enter)
(run document | build it): key(cmd-alt-r)
run all previous: key(cmd-alt-b)
run all after: key(cmd-alt-e)
run next chunk: key(cmd-alt-n)
knit (document | file): key(cmd-shift-k)
insert chunk: key(cmd-alt-i)
stop running: key(esc)
restart (are | our): key(cmd-shift-0)
# ---------------CODE---------------------------------
comment (line | lines | selected | block): key(cmd-shift-c)
fold that: key(alt-l)
unfold that: key(alt-shift-l)
fold all: key(alt-o)
unfold all: key(shift-alt-o)
go to line: key(shift-alt-g)
move up: key(alt-up)
move down: key(alt-down)
add cursor up: key(cmd-alt-up)
add cursor down: key(cmd-alt-down)
insert oxygen: key(cmd-alt-shift-r)
help that: key(f1)
show source: key(f2)
complete: key(cmd-space)

# --------------CONSOLE----------------------------------
see that: user.r_paste_into_console("View({{text}})")
head that: user.r_paste_into_console("head({{text}})")
skim that: user.r_paste_into_console("skimr::skim({{text}})")
run shiny: 
    key(esc)
    sleep(1000ms)
    key("cmd-2")
    "source('dev/run_dev.R', echo=TRUE)"
    key("enter cmd-1")
dev tools check:
    key("cmd-2")
    "devtools::check()"
    key("enter cmd-1")
run tests:
    key("cmd-2")
    "testthat::test_local()"
    key("enter cmd-1")
dev tools document:
    key("cmd-2")
    "devtools::document()"
    key("enter cmd-1")