macro record: user.macro_record()
macro stop: user.macro_stop()
macro play: user.macro_play()

copy first org: 
    edit.copy()
    sleep(500ms)
    user.window_tab(1)
    sleep(200ms)
    key(ctrl-v)
    sleep(1500ms)
    key(down enter)
    user.window_tab(1)
    sleep(500ms)

copy org: 
    key(down)
    edit.copy()
    sleep(500ms)
    user.window_tab(1)
    sleep(200ms)
    key(ctrl-v)
    sleep(1500ms)
    key(enter)
    user.window_tab(1)
    sleep(500ms)

try down: user.xl_select_cells("A1")

dev clear org:
    "$(\"div[class='cl-multi-select cl-multi-select--filter'] button[class='cl-btn cl-btn--text cl-btn--icon cl-multi-select__selections__item__btn']\").click()"
    key(enter)

clear organisations:
    key(ctrl-shift-k)
    sleep(300ms)
    "$(\"div[id='analysis-sidebar-filters'] li:nth-child(1) button:nth-child(1)\").click()"
    key(enter)
    mimic("dev clear org")
    repeat(11)
    sleep(200ms)
    "$('#orgname').select()"
    key(enter)


clear research area:
    key(ctrl-shift-k)
    sleep(300ms)
    "$(\"div[id='analysis-sidebar-filters'] li:nth-child(18) button:nth-child(1)\").click()"
    key(enter)
    sleep(600ms)
    "$(\"div[class='cl-multi-select cl-multi-select--filter'] button[class='cl-btn cl-btn--text cl-btn--icon cl-multi-select__selections__item__btn']\").click()"
    key(enter)
    sleep(200ms)
    "$('#sbjname').select()"
    key(enter)
    user.window_tab(1)
    sleep(500ms)
    key(ctrl-v)
    sleep(1500ms)
    key(down enter)
    sleep(300ms)
    key(ctrl-shift-k)
    sleep(300ms)
    "$(\"div.ic-analysis-sidebar__details__actions button:nth-child(2)\").click()"
    key(enter)
    user.window_tab(1)

download data:
    key(ctrl-shift-k)
    sleep(300ms)
    "$(\"button[class='cl-popover-modal-button cl-btn cl-btn--with-icon']\").click()"
    key(enter)
    sleep(600ms)
    "$(\"#trend\").click()"
    key(enter)
    "$(\"div[class='cl-form__field'] button[type='submit']\").click()"
    key(enter)
    user.window_tab(1)
    sleep(2000ms)
    key(enter)

copy data:
    key(ctrl-shift-right ctrl-shift-down:10)
    edit.copy()
    sleep(600ms)
    user.window_tab(1)
    sleep(300ms)
    user.xl_select_cells("A1")
    sleep(1000ms)
    key(ctrl-v)
    sleep(400ms)
    user.window_tab(1)
    sleep(400ms)
    key(ctrl-w)
    sleep(400ms)
    key(right enter)

next category:
    key("ctrl-pgdown")
    sleep(400ms)
    user.xl_select_cells("L2")
    sleep(200ms)
    edit.copy()
    sleep(600ms)
    user.window_tab(1)
    sleep(400ms)
    mimic("clear research area")

