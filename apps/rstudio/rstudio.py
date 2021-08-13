from talon import Module, actions, clip

mod = Module()
apps = mod.apps
apps.RStudio = """
os: windows
and app.name: RStudio
os: windows
and app.exe: rstudio.exe
"""

@mod.action_class
class Actions:
    def r_paste_into_console(pattern: str):
        """Paste text into the Rstudio console"""
        with clip.capture() as s:
            actions.edit.copy()
        text = s.get()
        actions.key("ctrl-2")
        actions.insert(pattern.replace("{text}", text))
        actions.key("enter ctrl-1")

