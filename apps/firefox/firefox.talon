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
 
#surfing keys shortcut
half down: key(d)
half up: key(e)
input box: key(i)
follow: key(f)
follow multiple: key(c f)
follow new tab: key(shift-c)
google that: key(s g)
copy link: key(y a)
copy address: key(y y)
duplicate tab: key(y t)
find: key(ctrl-f)

# wos shortcuts
long and: " and "
long or: " or "
long not: " not "

# shiny stuff
react log: key(ctrl-f3)
react marker: key(ctrl-shift-f3)
