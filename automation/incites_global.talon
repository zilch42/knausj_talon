# next location:
#     user.switcher_focus("excel")
#     sleep(600ms)
#     key(down left ctrl-c)
#     sleep(600ms)
#     user.switcher_focus("firefox")
#     sleep(600ms)
#     key(ctrl-shift-k)
#     sleep(800ms)
#     # child is filter horizontal order
#     "$(\"li.cl-applied-filters__item:nth-child(2) button.cl-btn\").click()"
#     key(enter)
#     sleep(200ms)
#     # child is menu vertical order
#     "$(\"div[id='analysis-sidebar-filters'] li:nth-child(7) button:nth-child(1)\").click()"
#     key(enter)
#     sleep(400ms)
#     "$(\"input#clbrlocname\").select()"
#     key(enter)
#     sleep(200ms)
#     key(alt-tab)
#     sleep(700ms)
#     key(ctrl-v)
#     sleep(2000ms)
#     key(down enter)
#     sleep(300ms)
#     key(ctrl-shift-k)
#     sleep(300ms)
#     "$(\"div.ic-analysis-sidebar__details__actions button:nth-child(2)\").click()"
#     key(enter)
#     sleep(1000ms)
#     # child is filter horizontal order
#     "$(\"li.cl-applied-filters__item:nth-child(5) button.cl-btn\").click()"
#     key(enter)
#     sleep(200ms)
#     # child is menu vertical order
#     "$(\"div[id='analysis-sidebar-filters'] li:nth-child(3) button:nth-child(1)\").click()"
#     key(enter)
#     sleep(400ms)
#     "$(\"span[class='cl-form-select cl-form-select--inline-text'] a[class='selected-entity']\").click()"
#     key(enter)
#     sleep(400ms)
#     "$(\"div[class='ic-analysis-sidebar__details active'] li:nth-child(2)\").click()"
#     key(enter)
#     sleep(400ms)
#     "$(\"input#location\").select()"
#     key(enter)
#     sleep(200ms)
#     key(alt-tab)
#     sleep(700ms)
#     key(ctrl-v)
#     sleep(2000ms)
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
#     # TREND ----------
#     # "$(\"#trend\").click()"
#     # sleep(300ms)
#     # key(enter)
#     # sleep(300ms)
#     # ----------------
#     "$(\"input#fileName\").select()"
#     key(enter)
#     sleep(300ms)
#     key(alt-tab)
#     sleep(600ms)
#     key(ctrl-a)
#     sleep(100ms)
#     "11 Country Collab by Institution"
#     # key(ctrl-v)
#     sleep(100ms)
#     key(enter)
#     # "$(\"div[class='cl-form__field'] button[type='submit']\").click()"
#     sleep(7000ms)
#     key(enter)
    
# move file: 
#     user.switcher_focus("excel")
#     key(right ctrl-c)
#     sleep(1000ms)
#     user.switcher_launch("Windows Explorer")
#     sleep(2500ms)
#     key(alt-d ctrl-v enter)
#     sleep(2000ms)
#     user.file_manager_open_user_directory("Downloads")
#     sleep(1000ms)
#     key(down ctrl-x)
#     sleep(600ms)
#     user.file_manager_go_back()
#     sleep(600ms)
#     key(ctrl-v)
#     sleep(3000ms)
#     key(ctrl-w)

# distribute file: 
#     user.switcher_focus("excel")
#     key(down ctrl-c)
#     sleep(1000ms)
#     key(alt-tab)
#     sleep(1000ms)
#     key(alt-d ctrl-v enter)
#     sleep(2000ms)
#     user.file_manager_open_user_directory("Downloads")
#     sleep(1000ms)
#     key(down ctrl-c)
#     sleep(600ms)
#     user.file_manager_go_back()
#     sleep(600ms)
#     key(ctrl-v)
#     sleep(3000ms)
    

# next country:
#     mimic("next location")
#     sleep(1000ms)
#     mimic("download data")
#     sleep(2000ms)
#     mimic("move file")
#     sleep(1000ms)

# next field:
#     mimic("next subject")
#     sleep(1000ms)
#     mimic("download data")
#     sleep(1000ms)
