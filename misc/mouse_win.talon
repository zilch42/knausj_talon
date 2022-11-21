os: windows
-

kick: 
	mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    	# End any open drags
	# Touch automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

psychic:
	mouse_click(1)
	# close the mouse grid if open
	user.grid_close()

(middle|mid) kick:
	mouse_click(2)
	# close the mouse grid
	user.grid_close()

#see keys.py for modifiers.
#defaults
#command
#control
#option = alt
#shift
#super = windows key
<user.modifiers> kick:
	key("{modifiers}:down")
	mouse_click(0)
	key("{modifiers}:up")
	# close the mouse grid
	user.grid_close()
<user.modifiers> psychic:
	key("{modifiers}:down")
	mouse_click(1)
	key("{modifiers}:up")
	# close the mouse grid
	user.grid_close()
double kick:
	mouse_click()
	mouse_click()
	# close the mouse grid
	user.grid_close()
triple kick:
	mouse_click()
	mouse_click()
	mouse_click()
	# close the mouse grid
	user.grid_close()
drag:
	user.mouse_drag(0)
	# close the mouse grid
	user.grid_close()
right drag:
	user.mouse_drag(1)
	# close the mouse grid
	user.grid_close()
end drag | drag end:
    user.mouse_drag_end()

# mouse copy paste command
garb:
    mouse_click()
    edit.select_word()
    edit.copy()

drop:
    mouse_click()
    edit.select_word()
    edit.paste()