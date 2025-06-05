app: windows_explorer
app: windows_file_browser
-
tag(): user.file_manager

settings():
    key_hold = 16
    key_wait = 1

^go <user.letter>$: user.file_manager_open_volume("{letter}:")
go app data: user.file_manager_open_directory("%AppData%")
go program files: user.file_manager_open_directory("%programfiles%")

refresh|reload: key(f5) 

new window: 
    key(alt-f)
    sleep(300ms)
    key(n)

copy path:
    key(shift-f10)
    key(x)