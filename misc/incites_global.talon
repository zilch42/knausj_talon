next location:
    user.switcher_focus("excel")
    sleep(600ms)
    key(down left ctrl-c)
    sleep(600ms)
    user.switcher_focus("firefox")
    sleep(600ms)
    key(ctrl-shift-k)
    sleep(800ms)
    "$(\"li.cl-applied-filters__item:nth-child(4) button.cl-btn\").click()"
    key(enter)
    sleep(200ms)
    "$(\"div[id='analysis-sidebar-filters'] li:nth-child(6) button:nth-child(1)\").click()"
    key(enter)
    sleep(400ms)
    "$(\"input#location\").select()"
    key(enter)
    sleep(200ms)
    key(alt-tab)
    sleep(700ms)
    key(ctrl-v)
    sleep(1500ms)
    key(down enter)
    sleep(300ms)
    key(ctrl-shift-k)
    sleep(300ms)
    "$(\"div.ic-analysis-sidebar__details__actions button:nth-child(2)\").click()"
    key(enter)
    sleep(300ms)
    key(ctrl-w)
    
download data:
    key(ctrl-shift-k)
    sleep(800ms)
    "$(\"button[class='cl-popover-modal-button cl-btn cl-btn--with-icon']\").click()"
    key(enter)
    sleep(600ms)
    # TREND ----------
    # "$(\"#trend\").click()"
    # sleep(300ms)
    # key(enter)
    # sleep(300ms)
    # ----------------
    "$(\"input#fileName\").select()"
    key(enter)
    sleep(300ms)
    key(alt-tab)
    sleep(600ms)
    key(ctrl-a)
    sleep(100ms)
    "3 Country Output by Subject"
    sleep(100ms)
    key(enter)
    # "$(\"div[class='cl-form__field'] button[type='submit']\").click()"
    sleep(4000ms)
    key(enter)
    
move file: 
    user.switcher_focus("excel")
    key(right ctrl-c)
    sleep(1000ms)
    user.switcher_launch("Windows Explorer")
    sleep(2500ms)
    key(alt-d ctrl-v enter)
    sleep(2000ms)
    user.file_manager_open_user_directory("Downloads")
    sleep(1000ms)
    key(down ctrl-x)
    sleep(600ms)
    user.file_manager_go_back()
    sleep(600ms)
    key(ctrl-v)
    sleep(3000ms)
    key(ctrl-w)

distribute file: 
    user.switcher_focus("excel")
    key(down ctrl-c)
    sleep(1000ms)
    key(alt-tab)
    sleep(1000ms)
    key(alt-d ctrl-v enter)
    sleep(2000ms)
    user.file_manager_open_user_directory("Downloads")
    sleep(1000ms)
    key(down ctrl-c)
    sleep(600ms)
    user.file_manager_go_back()
    sleep(600ms)
    key(ctrl-v)
    sleep(3000ms)
    

next country:
    mimic("next location")
    sleep(1000ms)
    mimic("download data")
    sleep(2000ms)
    mimic("move file")
    sleep(1000ms)