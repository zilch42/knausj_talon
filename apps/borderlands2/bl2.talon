app: borderlands_2
mode: user.game
-

settings():
    key_hold = 32
    insert_wait = 32

grenade: key(g)
run: user.start_running()
stop: user.stop_running()
reload: key(r)
inventory: key(i)
map: key(m)
zoom|snipe: mouse_click(0)
exit: key(esc)
missions: key(tab)
skills: key(k)
change: user.mouse_scroll_down(0.2)
buy: key(capslock)
sell: key(del)
hold fire: mouse_drag(1)
release: mouse_release(1)