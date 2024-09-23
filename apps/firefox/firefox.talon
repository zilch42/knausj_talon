app: firefox
-
tag(): browser
tag(): user.tabs

tab search:
    browser.focus_address()
    insert("% ")
tab search <user.text>$:
    browser.focus_address()
    insert("% {text}")
    key(down)

(sidebar | panel) bookmarks: user.firefox_bookmarks_sidebar()
(sidebar | panel) history: user.firefox_history_sidebar()

#surfing keys shortcut
# half down: key(d)
# half up: key(e)
# input box: key(i)
# follow: key(f)
# follow multiple: key(c f)
# follow new tab: key(shift-c)
# google that: key(s g)
# copy link: key(y a)
# # copy address: key(y y)
# duplicate tab: key(y t)


close tab: user.tab_close_wrapper()

# shiny stuff
react log: key(ctrl-f3)
react marker: key(ctrl-shift-f3)

one pass: key(ctrl-shift-.)

