# Windows specific commands based on left and right mouse customisation 
mode: command
mode: dictation
mode: user.game
-

kick [that] [<number_small>]: 
    n = number_small or 1
    mouse_click(0)
    repeat(n-1) 
	# close the mouse grid if open
	user.grid_close()
    	# End any open drags
	# Touch automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

psychic [<number_small>]: 
    n = number_small or 1
    mouse_click(1)
    repeat(n-1) 
	# close the mouse grid if open
	user.grid_close()

(middle|mid) kick  [<number_small>]: 
    n = number_small or 1
    mouse_click(2)
    repeat(n-1)
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

# drags
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

# modifiers
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

# mouse copy paste command
garb:
    mouse_click()
    edit.select_word()
    edit.copy()

drop:
    mouse_click()
    edit.select_word()
    edit.paste()

(scroll down|downer): user.mouse_scroll_down()
scroll down here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down()
scroll tiny [down]: user.mouse_scroll_down(0.2)
(scroll up|upper): user.mouse_scroll_up()
scroll up here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_up()
scroll tiny up: user.mouse_scroll_up(0.2)
scroll gaze: user.mouse_gaze_scroll()
scroll gaze here:
    user.mouse_move_center_active_window()
    user.mouse_gaze_scroll()
scroll stop: user.mouse_scroll_stop()
scroll stop here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_stop()
scroll left: user.mouse_scroll_left()
scroll left here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_left()
scroll tiny left: user.mouse_scroll_left(0.5)
scroll tiny left here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_left(0.5)
scroll right: user.mouse_scroll_right()
scroll right here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_right()
scroll tiny right: user.mouse_scroll_right(0.5)
scroll tiny right here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_right(0.5)
copy mouse position: user.copy_mouse_position()
curse no:
    # Command added 2021-12-13, can remove after 2022-06-01
    app.notify("Please activate the user.mouse_cursor_commands_enable tag to enable this command")
