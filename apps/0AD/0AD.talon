app: zeroAD
mode: user.game
-

settings():
    key_hold = 32
    insert_wait = 32

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
idle (worker|villager): key(.)
add (worker|villager|idle): key(shift-.)
all idle (workers|villagers): key(alt-.)
idle fighter: key(/)
add fighter: key(shift-/)
all idle fighters: key(alt-/)
idle unit: key(\)
add unit: key(shift-\)
all idle : key(alt-\)
# select guarded: key(pgup)
# select defenders: key(pgdown)
add visible: user.select_all_on_screen(1, "shift")
select visible idle: user.select_all_on_screen(1, "i")
select visible (units|all): user.select_all_on_screen()
select visible military: user.select_all_on_screen(1, "alt")
select visible (workers|villagers): user.select_all_on_screen(1, "alt", "y")
select visible wounded: user.select_all_on_screen(1, "o")
deselect: key(esc)

# unit commands
halt: key(h)
back to work: key(y)
go: mouse_click(1)
one go: 
    key(alt:down)
    mouse_click(1)
    key(alt:up)
repair this: 
    key(j:down)
    mouse_click(1)
    key(j:up)
guard this: 
    key(g:down)
    mouse_click(1)
    key(g:up)
patrol here: 
    key(p:down)
    mouse_click(1)
    key(p:up)
cue|waypoint: 
    key(shift:down)
    mouse_click(1)
    key(shift:up)
unload: key(u)

# arrow keys
<user.arrow_input> [<number_small>]: 
    n = number_small or 1
    user.arrow_press(user.arrow_input)
    repeat(n-1)
fly <user.arrow_input>: user.arrow_keydown(user.arrow_input)
stop: user.stop_moving()

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
# align building: 
#     key(ctrl:down)
build more: 
    key(shift:down)
    mouse_click(0)
    key(shift:up)
build [a] (civic centre|town center): user.click_position(1415, 1298)
build [a] (house|houses): user.click_position(1454, 1298)
build [a] storehouse: user.click_position(1493, 1298)
build [a] farmstead: user.click_position(1532, 1298)
build [a] field: user.click_position(1571, 1298)
build [a] coral: user.click_position(1610, 1298)
build [a] dock: user.click_position(1649, 1298)
build [a] barracks: user.click_position(1688, 1298)
build [a] stable: user.click_position(1727, 1298)
build [a] forge: user.click_position(1766, 1298)
build [a] temple: user.click_position(1415, 1337)
build [a] market: user.click_position(1454, 1337)
build [a] outpost: user.click_position(1493, 1337)
build [a] sentry: user.click_position(1532, 1337)
build [a] stone tower: user.click_position(1571, 1337)
build [a] arsenal: user.click_position(1610, 1337)
build [a] (fortress|castle): user.click_position(1649, 1337)
build [a] wall: user.click_position(1688, 1337)
build [a] special one: user.click_position(1727, 1337)
build [a] special too: user.click_position(1766, 1337)
build [a] special three: user.click_position(1415, 1376)
build [a] special four: user.click_position(1454, 1376)
build [a] special five: user.click_position(1493, 1376)

# upgrades
upgrade one: user.click_position(1415, 1413)
upgrade too: user.click_position(1454, 1413)
upgrade three: user.click_position(1493, 1413)
upgrade four: user.click_position(1532, 1413)
upgrade five: user.click_position(1571, 1413)
upgrade six: user.click_position(1610, 1413)
upgrade seven: user.click_position(1649, 1413)
upgrade eight: user.click_position(1688, 1413)
upgrade nine: user.click_position(1727, 1413)
upgrade ten: user.click_position(1766, 1413)

# unit stances 
stance violent: user.click_position(986, 1409)
stance aggressive: user.click_position(1024, 1414)
stance defensive: user.click_position(1063, 1414)
stance passive: user.click_position(1102, 1413)
stance stand: user.click_position(1143, 1413)

# mouse
drag: user.mouse_drag(0)
finish|done: user.mouse_drag_end()
(set rally|go|move|do it): mouse_click(1)
(garrison|attack move):
    key(ctrl:down)
    mouse_click(1)
    key(ctrl:up)
attack move units only:
    key(ctrl:down)
    key(q:down)
    mouse_click(1)
    key(ctrl:up)
    key(q:up)
spread out: user.mouse_drag(1)

# miscellaneous 
flare: user.click_position(787, 1257)
release bell: user.click_position(1102, 1413)
ring bill: user.click_position(1143, 1413)

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
(camera low|zoom way in): 
    user.mouse_scroll_down()
    sleep(100ms)
    user.mouse_scroll_down()
    sleep(100ms)
    user.mouse_scroll_down()
    sleep(100ms)
    user.mouse_scroll_down()
    sleep(100ms)
    user.mouse_scroll_down()
(camera high|zoom way out): 
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
alarm: key(space)
centre mouse: user.mouse_move_center_active_window()

# menus
menu: key(f10)
(structures|tech tree): key(shift-alt-t)
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
game speed: 
    user.click_position(2291, 18)
    user.click_position(2291, 53)
dredge: user.window_tab(1)

save game: key(shift-f5)
load game: key(shift-f8)
pause: key(shift-space)
sleep all: ""


