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
(add to chat)|(focus chat): user.vscode("composer.startComposerPrompt")
[toggle|hide] chat: key(ctrl-shift-l)
chat new: user.vscode("composer.createNewWithPrevContext")
chat tab: user.vscode("composer.createNewComposerTab")
chat close: user.vscode("composer.closeComposerTab")
(clear|no) context: key(alt-enter)
toggle agent: key(ctrl-.)
show history: key(ctrl-alt-')
background agent: user.vscode("composer.createNewBackgroundAgent")
chat error: user.vscode("composer.fixerrormessage")
chat cancel: user.vscode("cursorai.action.cancelGenerateInTerminal")

# generate
generate|edit: key(ctrl-k)
quick question: key(alt-enter)
full file: key(ctrl-shift-enter)
send to chat: key(ctrl-l)

# diffs
accept|except: key(ctrl-enter)
reject: key(ctrl-backspace)

# settings
cursor settings: key(ctrl-shift-j)
check usage: user.open_url("https://www.cursor.com/settings")

# context
include files: key(@ f i enter)
include docs: key(@ d o c enter)
include web: key(@ w e b enter)
include errors: key(@ l i n enter)
include git: key(@ g i t enter)
include chats: key(@ p a s t enter)
include rules: key(@ c u r enter)
include other: key(@)