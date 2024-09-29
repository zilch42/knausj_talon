app: mixbus
os: mac
mode: user.recording
-

settings():
    key_hold = 32
    insert_wait = 32

dredge: user.window_tab(1)

# Session and File Handling
# new session: key(cmd-n)
# open session: key(cmd-o)
open recent session: key(cmd-shift-o)
disk: key(cmd-s)
save snapshot: key(cmd-shift-s)
add track bus: key(cmd-shift-n)
import files: key(cmd-i)
export audio: key(ctrl-e)
quick export audio: key(cmd-e)
quit up: key(cmd-q)

# Common Functions
copy: key(cmd-c)
cut: key(cmd-x)
delete: key(delete)
# delete backspace: key(backspace)
spark: key(cmd-v)
redo: key(cmd-r)
undo: key(cmd-z)

# Transport and Recording Control
play|pause: key(space)
play selection: key(ctrl-space)
play from edit point: key(cmd-shift-space)
roll record: key(shift-space)
toggle roll capture: key(cmd-space)
rewind: key(shift-left)
fast forward: key(shift-right)
transition reverse: key(shift-down)
transition play: key(shift-up)
toggle auto play: key(5)
toggle auto return: key(6)
toggle click: key(7)
set tempo from region: key(9)
toggle follow playhead: key(cmd-f)
toggle follow edits: key(shift-f)
toggle track rec-enable: key(shift-b)
toggle master rec-enable: key(shift-r)
set playhead to cursor: key(p)
play region: key(h)
loop: key(l)
focus main clock: key(keypad_divide)
midi panic: key(cmd-ctrl-p)

# Changing What’s Visible
show virtual keyboard: key(ctrl-k)
fit selected tracks: key(f)
tracks page down: key(pagedown)
scroll tracks down: key(down)
select next track down: key(ctrl-down)
select next track up: key(ctrl-up)
tracks page up: key(pageup)
scroll tracks up: key(up)
change view: key(ctrl-m)
show editor mixer: key(shift-e)
toggle maximized editor: key(cmd-ctrl-f)
toggle maximized mixer: key(cmd-shift-f)
toggle zoom: key(shift-z)
toggle audio connection: key(ctrl-n)
toggle midi connection: key(ctrl-shift-m)
zoom to region: key(z)
zoom in: key(equal)
zoom out: key(minus)
zoom to session: key(_)
save visual state <user.number_string>: key("cmd-f{number_string}")
go to visual state <user.number_string>: key("f{number_string}")

# Window Visibility
toggle marker locations: key(ctrl-l)
toggle meter bridge: key(ctrl-b)
toggle preferences: key(ctrl-p)
toggle rhythm ferret: key(ctrl-f)
toggle session properties: key(ctrl-o)
toggle export window: key(ctrl-e)
toggle import window: key(cmd-i)
add new track bus: key(shift-cmd-n)

# Mouse Modes
range mode: key(r)
grid mode: key(y)
grab mode: key(g)
draw mode: key(d)
stretch mode: key(t)
zoom: key(z)
edit contents mode: key(e)

# Moving The Playhead
to start marker: key(home)
to end marker: key(end)
nudge backward: key(ctrl-left)
nudge forward: key(ctrl-right)
to previous region edge: key(left)
to next region edge: key(right)
step playhead previous grid: key(shift-ctrl-left)
step playhead next grid: key(shift-ctrl-right)
to previous region sync: key(cmd-ctrl-left)
to next region sync: key(cmd-ctrl-right)
to previous transient: key(cmd-left)
to next transient: key(cmd-right)
to previous mark: key(q)
to next mark: key(w)

# Selecting
select all: key(cmd-a)
deselect all: key(escape)
export selection: key(cmd-ctrl-e)
invert selection: key(shift-i)
select all after edit point: key(cmd-shift-p)
select all before edit point: key(cmd-p)
select all between cursors: key(cmd-u)
select all within cursors: key(u)

# Editing Features
cycle zoom focus: key(1)
cycle snap mode: key(2)
previous snap choice: key(3)
cycle edit point: key(`)
cycle edit point marker: key(cmd-`)
trim back: key(k)
trim front: key(j)
trim to previous region: key(cmd-j)
trim to next region: key(cmd-k)
edit mode: key(e)
cursor to transient backward: key(cmd-left)
cursor to transient forward: key(cmd-right)
# nudge forward: key(cmd-kp_plus)
# nudge backward: key(cmd-kp_minus)

# Region Operations
mute region: key(ctrl-1)
reverse region: key(ctrl-4)
naturalize region: key(ctrl-2)
boost region gain: key(ctrl-6)
cut region gain: key(ctrl-7)
normalize region: key(ctrl-3)
quantize region: key(ctrl-5)
pitch shift region: key(ctrl-8)
align sync point relative: key(a)
align regions sync point: key(shift-a)
align regions end point: key(ctrl-a)
align regions start point: key(cmd-ctrl-a)
align regions start point relative: key(cmd-shift-a)
duplicate region: key(d)
duplicate region multi: key(shift-d)
export selected region: key(shift-ctrl-e)
insert region from list: key(i)
split separate: key(s)
crop: key(ctrl-c)
set region sync point: key(v)
# nudge backward: key(ctrl-left)
# nudge forward: key(ctrl-right)
set fade-in length: key(cmd-/)
set fade-out length: key(cmd-\)
edit fade range: key(/)

# Track Operations
rec-enable selected tracks: key(shift-b)
solo selected tracks: key(ctrl-s)
select all track bus: key(cmd-t)
select next track bus: key(ctrl-down)
select previous track bus: key(ctrl-up)
move selected tracks down: key(cmd-down)
move selected tracks up: key(cmd-up)
toggle midi input: key(ctrl-i)

# Defining Loop, Punch Range, and Tempo Changes
start edit range: key(,)
finish edit range: key(.)
loop start: key(ctrl-,)
loop end: key(ctrl-.)
loop region: key(])
set loop range from region: key(ctrl-])
select all within punch range: key(cmd-d)
set punch range from edit range: key([bracketleft])

# Mouse Object Mode
add control point: mouse_click(0)
add remove selection: 
    key(cmd:down)
    mouse_click(0)
    key(cmd:up)
adjust region edges: user.mouse_drag(0)
copy move regions: 
    key(cmd:down)
    user.mouse_drag(0)
    key(cmd:up)
extend selection: 
    key(shift:down)
    mouse_click(0)
    key(shift:up)
fixed time adjust: user.mouse_drag(2)
fixed time copy move: 
    key(cmd:down)
    user.mouse_drag(2)
    key(cmd:up)
fixed time move: user.mouse_drag(2)
fixed time move point: 
    key(cmd:down)
    user.mouse_drag(2)
    key(cmd:up)
lower region: 
    key(ctrl:down shift:down)
    user.mouse_drag(2)
    key(ctrl:up shift:up)
move control point: user.mouse_drag(0)
move line segment: user.mouse_drag(0)
move point later points: 
    key(cmd:down)
    user.mouse_drag(0)
    key(cmd:up)
move regions: user.mouse_drag(0)
raise region: 
    key(shift:down)
    user.mouse_drag(2)
    key(shift:up)
rubber band select: 
    key(cmd:down ctrl:down)
    user.mouse_drag(0)
    key(cmd:up ctrl:up)
rubber band select empty: user.mouse_drag(0)
rubber band select auto: user.mouse_drag(0)
select: mouse_click(0)
set region end: mouse_click(2)
set region start: mouse_click(0)
slip audio in region: 
    key(cmd:down)
    user.mouse_drag(0)
    key(cmd:up)

# Mouse Zoom Mode
define new visible area: user.mouse_drag(0)
# zoom in: mouse_click(0)
# zoom out: mouse_click(2)
# zoom to session: 
#     key(cmd:down)
#     mouse_click(2)
#     key(cmd:up)

# Mouse Ops on Solo/Mute/Rec-enable
apply to all tracks busses: 
    key(cmd:down shift:down)
    mouse_click(0)
    key(cmd:up shift:up)
apply to group: 
    key(cmd:down)
    mouse_click(0)
    key(cmd:up)
apply to track active group: mouse_click(0)
learn MIDI control: 
    key(cmd:down)
    mouse_click(2)
    key(cmd:up)
momentary switch: mouse_click(2)

# Mouse Ops on Solo Buttons Only
exclusive solo: 
    key(cmd:down ctrl:down)
    mouse_click(0)
    key(cmd:up ctrl:up)
temporary latched solo: 
    key(shift:down)
    mouse_click(0)
    key(shift:up)

# Mouse Ops on Faders & Plug-in Controls
adjust: user.mouse_drag(0)
fine drag control: 
    key(cmd:down)
    user.mouse_drag(0)
    key(cmd:up)
finest drag control: 
    key(cmd:down ctrl:down)
    user.mouse_drag(0)
    key(cmd:up ctrl:up)
learn MIDI control fader: 
    key(cmd:down)
    mouse_click(2)
    key(cmd:up)
reset to default: 
    key(shift:down)
    mouse_click(0)
    key(shift:up)

drag end:
    user.mouse_drag_end()
    key(shift:up ctrl:up super:up alt:up cmd:up)