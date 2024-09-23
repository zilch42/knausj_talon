# os: mac
# -
# # Mac specific commands based on left and right mouse customisation 
# # Additional commands in knausj_talon 

# # main and right clicks are reversed 
# # main 1
# # right 0
# # using trackball mouse 2 for drag

# kick: 
# 	mouse_click(0)
# 	# close the mouse grid if open
# 	user.grid_close()
#     	# End any open drags
# 	# Touch automatically ends left drags so this is for right drags specifically
# 	user.mouse_drag_end()

# psychic:
# 	mouse_click(1)
# 	# close the mouse grid if open
# 	user.grid_close()

# double kick:
# 	mouse_click(0)
# 	mouse_click(0)
# 	# close the mouse grid
# 	user.grid_close()
# triple kick:
# 	mouse_click(0)
# 	mouse_click(0)
# 	mouse_click(0)
# 	# close the mouse grid
# 	user.grid_close()
# middle kick:
# 	mouse_click(2)
# 	# close the mouse grid
# 	user.grid_close()

# # mouse copy paste command
# garb:
#     mouse_click(0)
#     edit.select_word()
#     edit.copy()

# drop:
#     mouse_click(0)
#     edit.select_word()
#     edit.paste()

# # modifiers
# <user.modifiers> kick:
# 	key("{modifiers}:down")
# 	mouse_click(1)
# 	key("{modifiers}:up")
# 	# close the mouse grid
# 	user.grid_close()
# <user.modifiers> psychic:
# 	key("{modifiers}:down")
# 	mouse_click(0)
# 	key("{modifiers}:up")
# 	# close the mouse grid
# 	user.grid_close()

# # mouse wheel
# wheel down: user.mouse_scroll_down()
# wheel down here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_down()
# wheel tiny [down]: user.mouse_scroll_down(0.2)
# wheel tiny [down] here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_down(0.2)
# wheel downer: user.mouse_scroll_down_continuous()
# wheel downer here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_down_continuous()
# wheel up: user.mouse_scroll_up()
# wheel up here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_up()
# wheel tiny up: user.mouse_scroll_up(0.2)
# wheel tiny up here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_up(0.2)
# wheel upper: user.mouse_scroll_up_continuous()
# wheel upper here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_up_continuous()
# wheel gaze: user.mouse_gaze_scroll()
# wheel gaze here:
#     user.mouse_move_center_active_window()
#     user.mouse_gaze_scroll()
# wheel stop: user.mouse_scroll_stop()
# wheel stop here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_stop()
# wheel left: user.mouse_scroll_left()
# wheel left here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_left()
# wheel tiny left: user.mouse_scroll_left(0.5)
# wheel tiny left here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_left(0.5)
# wheel right: user.mouse_scroll_right()
# wheel right here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_right()
# wheel tiny right: user.mouse_scroll_right(0.5)
# wheel tiny right here:
#     user.mouse_move_center_active_window()
#     user.mouse_scroll_right(0.5)
# copy mouse position: user.copy_mouse_position()
# curse no:
#     # Command added 2021-12-13, can remove after 2022-06-01
#     app.notify("Please activate the user.mouse_cursor_commands_enable tag to enable this command")

# # using trackball mouse 2 for drag
# # drag:
# # 	user.mouse_drag(1)
# # 	# close the mouse grid
# # 	user.grid_close()
# # right drag:
# # 	user.mouse_drag(0)
# # 	# close the mouse grid
# # 	user.grid_close()
# # end drag | drag end:
# #     user.mouse_drag_end()
