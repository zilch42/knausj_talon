app: windows_explorer
app: windows_file_browser
-
tag(): user.file_manager
^go <user.letter>$: user.file_manager_open_volume("{letter}:")
go app data: user.file_manager_open_directory("%AppData%")
go program files: user.file_manager_open_directory("%programfiles%")
new window: key(ctrl-n)

go talon home: user.file_manager_open_directory("C:/Users/ABB064/AppData/Roaming/talon")
go onedrive: user.file_manager_open_directory("C:/Users/ABB064/OneDrive - CSIRO")
go our projects: user.file_manager_open_directory("C:/Users/ABB064/OneDrive - CSIRO/R")
go share drive: user.file_manager_open_directory("S:/")
go bowen: user.file_manager_open_directory("W:/")
go documents: user.file_manager_open_directory("Documents")
go Tadro: user.file_manager_open_directory("Abbott, Tadro (SI&P, Waite Campus)")