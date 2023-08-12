app: zeroAD
mode: user.game
-

# settings():
#     key_hold = 32
#     insert_wait = 16

# selecting units
select that: mouse_click(0)
select same: 
    mouse_click(0)
    mouse_click(0)
select rank:
    mouse_click(0)
    mouse_click(0)
    mouse_click(0)
select (all|everywhere):
    key(alt:down)
	mouse_click(0)
	mouse_click(0)
	key(alt:up)
idle worker: key(.)
add worker: key(shift-.)
all idle workers: key(alt-.)
idle fighter: key(/)
add fighter: key(shift-/)
all idle fighters: key(alt-/)
idle unit: key(\)
add unit: key(shift-\)
all idle units: key(alt-\)
select guarded: key(pageup)
select defenders: key(pagedown)

# unit commands
halt: key(h)
back to work: key(y)
go: mouse_click(1)
one go: 
    key(alt:down)
    mouse_click(1)
    key(alt:up)
repair: 
    key(j:down)
    mouse_click(1)
    key(j:up)
guard: 
    key(g:down)
    mouse_click(1)
    key(g:up)
patrol: 
    key(p:down)
    mouse_click(1)
    key(p:up)
cue|waypoint: 
    key(shift:down)
    mouse_click(1)
    key(shift:up)
unload: key(u)

# groups 
(create|set) group <number_small>: key("ctrl-{number_small}")
add to group <number_small>: key("shift-{number_small}")
group <number_small>: "{number_small}"

# training
train one: key(z)
train to: key(x)
train three: key(c)
train for: key(v)
train five: key(b)
train six: key(n)
train seven: key(m)
train eight: key(,)
batch: 
    key(shift:down)
    mouse_click(0)
    key(shift:up)
    
# building
rotate: "["



# mouse
drag: user.mouse_drag(0)
finish|done: user.mouse_drag_end()

# camera
set camera one: key(ctrl-f5)
set camera too: key(ctrl-f6)
set camera three: key(ctrl-f7)
set camera for: key(ctrl-f8)
camera one: key(f5)
camera too: key(f6)
camera three: key(f7)
camera for: key(f8)
zoom in: user.mouse_scroll_down()
zoom out: user.mouse_scroll_up()
camera low: 
    user.mouse_scroll_down()
    sleep(100ms)
    user.mouse_scroll_down()
    sleep(100ms)
    user.mouse_scroll_down()
    sleep(100ms)
    user.mouse_scroll_down()
    sleep(100ms)
    user.mouse_scroll_down()
camera high: 
    user.mouse_scroll_up()
    sleep(100ms)
    user.mouse_scroll_up()
    sleep(100ms)
    user.mouse_scroll_up()
    sleep(100ms)
    user.mouse_scroll_up()
    sleep(100ms)
    user.mouse_scroll_up()
# pan: user.mouse_drag(2)    # doesn't work. My mouse ?
camera rotate: key(q)
camera reverse: key(e)
follow: key(f)
camera reset: key(r)


# menus
menu: key(f10)
structures|tree: key(shift-alt-t)
civilizations|history: key(shift-alt-h)
diplomacy: key(ctrl-h)
trade: key(ctrl-b)
objective: key(ctrl-o)
tutorial: key(ctrl-p)
summary: key(ctrl-tab)
lobby: key(alt-l)
status: key(tab)
cancel: key(esc)
developer: key(alt-d)
show attack range: key(alt-c)
speed up: key(space)
dredge: user.window_tab(1)

save game: key(shift-f5)
load game: key(shift-f8)
pause: key(shift-space)
sleep all: ""
