app: Mixbus
os: mac
-

# Session and File Handling
new session: key(cmd-n)
open session: key(cmd-o)
open recent session: key(cmd-shift-o)
save session: key(cmd-s)
save session snapshot: key(cmd-shift-s)
add track or bus: key(cmd-shift-n)
import files: key(cmd-i)
export audio: key(ctrl-e)
quick export audio: key(cmd-e)
quit: key(cmd-q)

# Common Functions
copy: key(cmd-c)
cut: key(cmd-x)
delete: key(delete)
paste: key(cmd-v)
redo: key(cmd-r)
undo: key(cmd-z)

# Transport and Recording Control
roll playhead: key(space)
play selection: key(ctrl-space)
play from edit point and return: key(cmd-shift-space)
roll record: key(shift-space)
toggle roll and forget capture: key(cmd-space)
rewind: key(shift-left)
fast forward: key(shift-right)
transition to reverse: key(shift-down)
transition to play: key(shift-up)
toggle auto play: key(5)
toggle auto return: key(6)
toggle click: key(7)
set tempo from region: key(9)
toggle follow playhead: key(cmd-f)
toggle follow edits: key(shift-f)
toggle track rec enable: key(shift-b)
toggle master rec enable: key(shift-r)
set playhead to cursor: key(p)
play selected regions: key(h)
loop play: key(l)
key focus main clock: key(keypad-/)
midi panic: key(cmd-ctrl-p)

# Changing What's Visible
show virtual keyboard: key(ctrl-k)
fit selected tracks vertically: key(f)
tracks page down: key(pagedown)
scroll tracks down: key(down)
select next track down: key(ctrl-down)
select next track up: key(ctrl-up)
tracks page up: key(pageup)
scroll tracks up: key(up)
toggle edit mix window: key(ctrl-m)
show editor mixer: key(shift-e)
toggle maximized editor: key(cmd-ctrl-f)
toggle maximized mixer: key(cmd-shift-f)
toggle zoom: key(shift-z)
toggle audio connection manager: key(ctrl-n)
toggle midi connection manager: key(ctrl-shift-m)
zoom to selected regions: key(z)
zoom in: key(=)
zoom out: key(-)
zoom to session: key(_)

# Save and recall visual states
save visual state <number_small>: key("cmd-f{number_small}")
go to visual state <number_small>: key("f{number_small}")

# Window Visibility
toggle marker locations: key(ctrl-l)
toggle meter bridge: key(ctrl-b)
toggle preferences: key(ctrl-p)
toggle rhythm ferret: key(ctrl-f)
toggle session properties: key(ctrl-o)
toggle export window: key(ctrl-e)
toggle import window: key(cmd-i)
add new track or bus: key(shift-cmd-n)

# Mouse Modes
range mode: key(r)
grid mode: key(y)
grab mode: key(g)
draw mode: key(d)
timefx mode: key(t)
zoom to selection mode: key(z)
edit contents mode: key(e)

# Moving The Playhead
playhead to start: key(home)
playhead to end: key(end)
move backward: key(ctrl-left)
move forward: key(ctrl-right)
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
cycle edit point with marker: key(cmd-`)
trim back: key(k)
trim front: key(j)
trim to previous region: key(cmd-j)
trim to next region: key(cmd-k)
edit mode: key(e)
cursor to transient backwards: key(cmd-left)
cursor to transient forward: key(cmd-right)
nudge forward: key(cmd-keypad_plus)
nudge backwards: key(cmd-keypad_minus)

# Region Operations
mute unmute region: key(ctrl-1)
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
duplicate region once: key(d)
duplicate region multi: key(shift-d)
export selected regions: key(shift-ctrl-e)
insert region from list: key(i)
split region: key(s)
crop region: key(ctrl-c)
set region sync point: key(v)
nudge region backward: key(ctrl-left)
nudge region forward: key(ctrl-right)
set fade in length: key(cmd-/)
set fade out length: key(cmd-\)
edit fade range: key(/)

# Track Operations
rec enable selected tracks: key(shift-b)
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
set loop range from edit range: key(])
set loop range from regions: key(ctrl-])
select all within punch range: key(cmd-d)
set punch range from edit range: key([)

# Mouse actions are not included as voice commands, but can be referenced in the comments below

# Mouse Object Mode Operations:
# - Add control point: left-click in auto track
# - Add/remove selection: cmd-left-click on body
# - Adjust region edges: left-drag near ends of trim bar
# - Copy+move region(s): cmd-left-drag on body
# - Extend selection: shift-left-click on body
# - Fixed time adjust: middle-drag on point
# - Fixed time copy+move: cmd-middle-drag on body
# - Fixed time move: middle-drag on body or cmd-middle-drag on point
# - Lower region: ctrl-shift-middle on body
# - Move control point: left-drag on point
# - Move line segment: left-drag on line segment
# - Move point+later points: cmd-left-drag on point
# - Move region(s): left-drag on body
# - Raise region: shift-middle on body
# - Rubber-band select: cmd-ctrl-left-drag on regions or left-drag on empty space or in auto track
# - Select: left-click on body
# - Set region end: middle in trim bar
# - Set region start: left-click in trim bar
# - Slip audio in region: cmd-left-drag in trim bar

# Mouse Zoom Mode Operations:
# - Define new visible area: left-drag
# - Zoom in: left-click
# - Zoom out: middle-click
# - Zoom to session: cmd-middle

# Mouse Operations on Solo/Mute/Rec-enable:
# - Apply to all tracks/busses: cmd-shift-left-click
# - Apply to group: cmd-left-click
# - Apply to track or active group: left-click
# - Learn MIDI control: cmd-middle-click
# - Momentary switch: middle-click

# Mouse Operations on Solo Buttons Only:
# - Exclusive solo: cmd-ctrl-left-click
# - Temporary latched solo: shift-left-click

# Mouse Operations on Faders & Plug-in Controls:
# - Adjust: left-drag
# - Fine-drag control: cmd-left-drag
# - Finest-drag control: cmd-ctrl-left-drag
# - Learn MIDI control: cmd-middle-click
# - Reset to default: shift-left-click