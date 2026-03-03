from talon import Context, Module, actions

ctx = Context()
mod = Module()

mod.apps.notepad = r"""
    os: windows
    and app.name: Notepad.exe
    os: windows
    and app.exe: /^notepad\.exe$/i
"""

ctx.matches = r"""
app: notepad
"""


@ctx.action_class("win")
class win_actions:
    def filename():
        filename = actions.win.title().split(" - ")[0]
        if "." in filename:
            return filename
        return ""
