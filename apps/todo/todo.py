from talon import ui, actions, cron, ui, Context

ctx = Context()
ctx.matches = r"""
os: windows
and app.name: Application Frame Host
and title: /Microsoft To Do/
"""


