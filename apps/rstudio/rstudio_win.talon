os: windows
app: RStudio
app: firefox
and win.title: /RStudio Workbench/
app: chrome
and win.title: /RStudio Workbench/
-

tag(): user.line_commands
# tag(): user.find_and_replace
# TO DO
# multiple cursors

# ---------------FILES---------------------------------
new (file | tab): key(ctrl-shift-n)
open file: key(ctrl-o)
go to file: key(ctrl-.)
save all: key(ctrl-alt-s)
select all: key(ctrl-a)
^hunt$: key(ctrl-f)
hunt that: key(ctrl-f3)
align that: key(ctrl-i)
(hunt all | RS find): key(ctrl-shift-f)

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
dip: key(ctrl-enter)
(dips day | dip stay): key(alt-enter)
run chunk: key(ctrl-shift-enter)
(run document | build it): key(ctrl-alt-r)
run all above: key(ctrl-alt-b)
run all below: key(ctrl-alt-e)
run next chunk: key(ctrl-alt-n)
knit (document | file): key(ctrl-shift-k)
insert chunk: key(ctrl-alt-i)

stop: key(alt-s i)
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
curse source: key(ctrl-alt-up)
curse dunce: key(ctrl-alt-down)
insert oxygen: key(ctrl-alt-shift-r)
help that: key(f1)
show source: key(f2)
complete: key(ctrl-space)
redo: key(ctrl-shift-z)
cue comment: "#| "

# --------------CONSOLE----------------------------------
see that: user.r_paste_into_console("View({{text}})")
head that: user.r_paste_into_console("head({{text}})")
skim that: user.r_paste_into_console("skimr::skim({{text}})")
run shiny: 
    key(esc esc)
    key("ctrl-2")
    sleep(1000ms)
    key(esc esc)
    "source('dev/run_dev.R', echo=TRUE)"
    key("enter ctrl-1")
load publications:
    key(esc esc)
    key("ctrl-2")
    sleep(1000ms)
    key(esc esc)
    "load('C:/Users/abb064/OneDrive - CSIRO/R/budashboard/data/publications.rda')"
    key("enter ctrl-1")
dev tools check:
    key("ctrl-2")
    "devtools::check()"
    key("enter ctrl-1")
run tests:
    key("ctrl-2")
    "testthat::test_local()"
    key("enter ctrl-1")
dev tools document:
    key("ctrl-2")
    "devtools::document()"
    key("enter ctrl-1")
dev tools load all:
    key("ctrl-2")
    "devtools::load_all()"
    key("enter ctrl-1")
python console:
    key("ctrl-2")
    "repl_python()"
    key("enter")
(are console | python quit):
        key("ctrl-2")
        "exit"
        key("enter")
        

# ----------------BROWSER VERSION--------------------
sign: ""


# ----------------GIT CONSOLE--------------------
identify CSIRO:
    "git config --global user.name 'Abbott, Tadro (Science Impact & Policy)'"
    key("enter")
    "git config --global user.email 'tadro.abbott@csiro.au'"
    key("enter")
identify github :
    "git config --global user.name 'Tadro Abbott'"
    key("enter")
    "git config --global user.email 'zilch42@hotmail.com'"
    key("enter")
new SSH key:
    "ssh-keygen -t rsa -C 'tadro.abbott@csiro.au' -b 4096"
SSH run agent: "eval '$(ssh-agent -s)'"
SSH add key: "ssh-add ~/.ssh/id_rsa"