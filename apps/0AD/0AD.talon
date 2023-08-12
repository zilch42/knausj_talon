app: zeroAD
mode: user.game
-

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

# commands
halt: key(h)
back to work: key(y)
eject|unload: key(u)
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

# camera
set camera one: key(ctrl-f5)
set camera too: key(ctrl-f6)
set camera three: key(ctrl-f7)
set camera for: key(ctrl-f8)
camera one: key(f5)
camera too: key(f6)
camera three: key(f7)
camera for: key(f8)

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

save game: key(shift-f5)
load game: key(shift-f8)
pause: key(shift-space)
sleep all: ""
