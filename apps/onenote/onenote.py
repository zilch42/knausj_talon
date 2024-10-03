from talon import Module, Context, actions

mod = Module()
ctx = Context()

mod.apps.onenote = r"""
os: windows
and app.exe: /^onenote\.exe$/i
"""

ctx.matches = r"""
os: windows
app: microsoft_one_note
"""

# @mod.action_class
# class Actions:
