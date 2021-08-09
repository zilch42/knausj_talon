tag: user.tabs
-
(open | new) tab: app.tab_open()
(previous | left) tab: app.tab_previous()
(next | right) tab: app.tab_next()
close tab: app.tab_close()
(reopen|restore) tab: app.tab_reopen()
go tab <number>: user.tab_jump(number)
go tab final: user.tab_final()
