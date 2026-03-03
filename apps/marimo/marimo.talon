mode: user.marimo
app: cursor
and win.title: /.*\.py/
mode: user.marimo
app: microsoft_edge
and win.title: /.*\.py/
-

tag(): user.code_imperative
tag(): user.code_comment_line
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_common
tag(): user.code_libraries
tag(): user.code_libraries_gui
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_math
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.python_environments
tag(): terminal

# Editing
format cell: key(ctrl-b)
change to markdown: key(ctrl-shift-m)
suggest: key(ctrl-space)
hunt: key(ctrl-f)
grab next: key(ctrl-d)
collapse region: key(ctrl-shift-[)
expand region: key(ctrl-shift-])
delete cell: 
    key(ctrl-a)
    key(delete)
    key(ctrl-shift-d)
hide code: key(ctrl-h)
split cell: key(ctrl-shift-')
comment line: key(ctrl-/)
copy line up: key(alt-shift-up)
copy line down: key(alt-shift-down)
format all: key(ctrl-shift-b)
collapse all sections: key(ctrl-shift-\)
expand all sections: key(ctrl-shift-/)

# AI
generate: key(ctrl-shift-e)
edit: key(ctrl-l)

# Navigation
previous cell: key(ctrl-shift-k)
next cell: key(ctrl-shift-j)
focus top: key(ctrl-shift-f)
focus bottom: key(ctrl-shift-g)
show definition: key(f12)

# Running Cells
(run cell)|(run chunk): key(ctrl-enter)
run below: key(shift-enter)
run above: key(ctrl-shift-enter)
run all stale cells: key(ctrl-shift-r)
run all: key(alt-r)
stop: key(ctrl-i)

# Creation and Ordering
move cell up: key(ctrl-shift-9)
move cell down: key(alt-0)
move cell left: key(ctrl-shift-7)
move cell right: key(ctrl-shift-8)
new cell above: key(ctrl-shift-o)
(new cell below|insert cell|insert chunk): key(ctrl-shift-p)
send cell [to] top: key(ctrl-shift-1)
send cell [to] bottom: key(ctrl-shift-2)
add column breakpoint: key(ctrl-shift-3)

# Command Mode
copy cell: key(esc c)
paste cell: key(esc v)

# Markdown
bold: key(ctrl-b)
italic: key(ctrl-i)
convert to link: key(ctrl-k)
convert to unordered list: key(ctrl-shift-8)

# Other
toggle app view: key(ctrl-.)
keyboard shortcuts: key(ctrl-shift-h)
disk: key(ctrl-s)
command palette: key(ctrl-k)
terminal new: key(ctrl-`)
(show|toggle) terminal: key(ctrl-`)
(show|toggle) minimap: key(ctrl-shift-i)
(show|toggle) panel: key(alt-b)

# mo commands
redirect standard out [put]: "with mo.redirect_stdout():"
redirect standard error: "with mo.redirect_stderr():"
moe table: "mo.ui.table()"
moe slider: "mo.ui.slider()"
moe input: "mo.ui.input()"
moe button: "mo.ui.button()"

state true: "True"
state false: "False"
