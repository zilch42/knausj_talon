
# copy first org: 
#     user.xl_select_cells("J10")
#     sleep(200ms)
#     edit.copy()
#     sleep(700ms)
#     key(alt-tab)
#     sleep(500ms)
#     key(ctrl-v)
#     sleep(1500ms)
#     key(down enter)
#     key(alt-tab)
#     sleep(500ms)

# copy org: 
#     key(down)
#     edit.copy()
#     sleep(500ms)
#     key(alt-tab)
#     sleep(500ms)
#     key(ctrl-v)
#     sleep(1500ms)
#     key(enter)
#     key(alt-tab)
#     sleep(500ms)


# clear organisations:
#     key(ctrl-shift-k)
#     sleep(800ms)
#     "$(\"li.cl-applied-filters__item:nth-child(2) button.cl-applied-filters__item__remove\").click()"
#     key(enter)
#     sleep(200ms)
#     "$(\"div[id='analysis-sidebar-filters'] li:nth-child(1) button:nth-child(1)\").click()"
#     key(enter)
#     # mimic("dev clear org")
#     # repeat(11)
#     sleep(200ms)
#     "$(\"input#orgname\").select()"
#     key(enter)
#     sleep(200ms)
#     key(ctrl-w)
#     sleep(500ms)
#     key(alt-tab)
    
    

# clear research area:
#     key(ctrl-shift-k)
#     sleep(800ms)
#     "$(\"div[id='analysis-sidebar-filters'] li:nth-child(18) button:nth-child(1)\").click()"
#     key(enter)
#     sleep(600ms)
#     "$(\"div[class='cl-multi-select cl-multi-select--filter'] button[class='cl-btn cl-btn--text cl-btn--icon cl-multi-select__selections__item__btn']\").click()"
#     key(enter)
#     sleep(200ms)
#     "$('#sbjname').select()"
#     key(enter)
#     key(alt-tab)
#     sleep(500ms)
#     key(ctrl-v)
#     sleep(1500ms)
#     key(down enter)
#     sleep(300ms)
#     key(ctrl-shift-k)
#     sleep(300ms)
#     "$(\"div.ic-analysis-sidebar__details__actions button:nth-child(2)\").click()"
#     key(enter)
#     sleep(300ms)
#     key(ctrl-w)

# download data:
#     key(ctrl-shift-k)
#     sleep(800ms)
#     "$(\"button[class='cl-popover-modal-button cl-btn cl-btn--with-icon']\").click()"
#     key(enter)
#     sleep(600ms)
#     "$(\"#trend\").click()"
#     sleep(300ms)
#     key(enter)
#     "$(\"div[class='cl-form__field'] button[type='submit']\").click()"
#     key(enter)
#     sleep(1000ms)
#     key(ctrl-w)
#     sleep(2000ms)
#     key(enter)

# copy data:
#     key(ctrl-shift-right ctrl-shift-down:10)
#     edit.copy()
#     sleep(600ms)
#     key(alt-tab)
#     sleep(300ms)
#     user.xl_select_cells("A1")
#     sleep(1000ms)
#     key(ctrl-v)
#     sleep(400ms)
#     key(alt-tab)
#     sleep(400ms)
#     key(ctrl-w)
#     sleep(400ms)
#     key(right enter)

# next category:
#     key("ctrl-pgdown")
#     sleep(400ms)
#     user.xl_select_cells("L2")
#     sleep(200ms)
#     edit.copy()
#     sleep(600ms)
#     key(alt-tab)
#     sleep(800ms)
#     mimic("clear research area")

