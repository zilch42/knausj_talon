from talon import Module, Context, actions, app

mod = Module()
ctx = Context()

is_mac = app.platform == "mac"

mod.apps.cursor = r"""
os: windows
and app.exe: /^cursor\.exe$/i
"""

ctx.matches = r"""
os: windows
app: cursor
"""

ctx.tags = ['user.python_environments']

# @mod.action_class
# class Actions:

@ctx.action_class("win")
class WinActions:
    def filename():
        title = actions.win.title()
        # this doesn't seem to be necessary on VSCode for Mac
        # if title == "":
        #    title = ui.active_window().doc

        if is_mac:
            result = title.split(" — ")[0]
        else:
            result = title.split(" - ")[0]

        if "." in result:
            return result

        return ""