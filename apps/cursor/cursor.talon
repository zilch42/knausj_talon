app: cursor
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.splits
tag(): user.tabs
tag(): user.python_environments
tag(): terminal

# tab completions
next: key(ctrl-right)

# chat
start chat: key(ctrl-l)
add to chat: key(ctrl-shift-l)
(clear|no) context: key(alt-enter)


# generate
generate|edit: key(ctrl-k)

# diffs
accept|except: key(ctrl-enter)
reject: key(ctrl-backspace)

# settings
cursor settings: key(ctrl-shift-j)
check usage: user.open_url("https://www.cursor.com/settings")

# context
include files: key(@ f i l e s enter)
include folders: key(@ f o l d enter)
include codebase: key(@ c o d e b enter)
include docs: key(@ d o c enter)
include web: key(@ w e b enter)
include errors: key(@ e r r enter)
include git: key(@ g i t enter)
include other: key(@)