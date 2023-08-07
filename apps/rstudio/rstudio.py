from talon import Module, actions, clip, Context

mod = Module()
ctx = Context()

mod.apps.r_studio = "app.name: RStudio"
mod.apps.r_studio = """
os: windows
and app.name: RStudio
os: windows
and app.exe: rstudio.exe
"""

ctx.matches = r"""
app: r_studio
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

@ctx.action_class("code")
class CodeActions:
    def toggle_comment():
        actions.key("ctrl-shift-c")
@ctx.action_class('edit')
class EditActions:
    def line_clone():
        actions.key('home')
        actions.edit.extend_line_end()
        actions.key('ctrl-c right enter ctrl-v')
    def line_swap_up():
        actions.key('alt-up')
    def line_swap_down():
        actions.key('alt-down')
    def indent_more(): actions.key('tab')
    def indent_less(): actions.key('shift-tab')
    def jump_line(n: int):
        actions.key("shift-alt-g")
        actions.sleep("50ms")
        actions.insert(str(n))
        actions.key("enter")

    def find(text: str):
        actions.key("ctrl-f")
        actions.insert(text)

# find_and_replace.py support begin
@ctx.action_class("user")
class UserActions:
    def select_next_occurrence(text: str):
        actions.edit.find(text)
        actions.sleep("100ms")
        actions.key("enter esc")
        actions.sleep("100ms")

    def select_previous_occurrence(text: str):
        actions.edit.find(text)
        actions.sleep("100ms")
        actions.key("shift-enter esc")
        actions.sleep("100ms")

    def find(text: str):
        """Triggers find in current editor"""
        actions.key("ctrl-f")

        if text:
            actions.insert(text)

    def find_next():
        actions.key("enter")

    def find_previous():
        actions.key("shift-enter")

    def find_everywhere(text: str):
        """Triggers find across project"""

        actions.key("ctrl-shift-f")

        if text:
            actions.insert(text)

    def find_toggle_match_by_case():
        """Toggles find match by case sensitivity"""
        actions.key("esc ctrl-f tab:8 space esc")

    def find_toggle_match_by_word():
        """Toggles find match by whole words"""
        actions.key("esc ctrl-f tab:9 space esc")

    def find_toggle_match_by_regex():
        """Toggles find match by regex"""
        actions.key("esc ctrl-f tab:10 space esc")

    def replace(text: str):
        """Search and replaces in the active editor"""
        actions.key("esc ctrl-f")
        if text:
            actions.insert(text)
        actions.key("tab:4")

    def replace_confirm():
        """Confirm replace at current position"""
        actions.key("esc ctrl-f tab:5 enter")

    def replace_confirm_all():
        """Confirm replace all"""
        actions.key("esc ctrl-f tab:6 enter")

    # find_and_replace.py support end