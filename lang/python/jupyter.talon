title: /JupyterLab/
-

next pane [<user.number_small>]: key("ctrl-shift-]:{number_small or 1}")
previous pane [<user.number_small>]: key("ctrl-shift-[:{number_small or 1}")
replace: key("ctrl-shift-r")
toggle cyber: key("ctrl-b")

# run chunk: key("ctrl-enter")
run next: 
    key("down")
    sleep(300ms)
    key("ctrl-enter")
run document:
    key(esc)
    key(ctrl-a)
    key(ctrl-enter)
(insert | new) (cell|chunk): key("alt-enter")
(next (cell|chunk) | necker) [<user.number_small>]: key("down:{number_small or 1}")
split (cell|chunk): key("ctrl-shift--")
[insert] (cell|chunk) above: key("escape a")
[insert] (cell|chunk) below: key("escape b")
merge below: key("escape M")
merge above: key("escape shift-up M")
delete (cell|chunk): key("escape d d")

toggle line numbers: key("escape L")
select all: key("ctrl-a")
indent [<user.number_small>]: key("ctrl-]:{number_small or 1}")
outdent [<user.number_small>]: key("ctrl-[:{number_small or 1}")

comment line: key("ctrl-/")
command pallette: key("ctrl-shift-p")
restart kernel: key(0)