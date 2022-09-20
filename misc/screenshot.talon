# save to desktop
^grab screen save$:                     user.screenshot()
^grab screen <number_small> save$:      user.screenshot(number_small)
^grab window save$:                     user.screenshot_window()
^grab settings$:                        user.screenshot_settings()

# copy to clipboard
^grab screen$:                          user.screenshot_clipboard()
^grab screen <number_small>$:           user.screenshot_clipboard(number_small)
^grab selection$:                       user.screenshot_selection()
^open snipping tool$:                   user.screenshot_selection()
^grab window$:                          user.screenshot_window_clipboard()
