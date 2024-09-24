mode: command
mode: dictation
mode: game
mode: recording
-
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    user.gdb_disable()
^command mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("user.game")
    mode.enable("command")
^game mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("user.game")
^recording mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("user.recording")