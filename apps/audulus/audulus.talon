app: audulus
os: mac
mode: command
-

(save|disk): key(cmd-s)

# view commands
daddy: key(cmd-esc)
zoom fit: key(cmd-f)
zoom in: key(cmd-=)
zoom out: key(cmd--)
show inspector: key(cmd-;)
preferences: key(cmd-,)

# modules
module browser: key(cmd-enter)
group: key(cmd-g)
send [to] back: key(ctrl-alt-cmd-down)
(show|hide|snap) [to] grid: key(cmd-')
(edit|arrange) (mode|modules): key(cmd-e)
delete: key(backspace)

# nodes
node {user.nodes}: user.insert_node(nodes)

# mouse
pan: 
    user.mouse_drag(2)
drop:
    user.mouse_drag_end()