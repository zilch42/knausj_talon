from talon import ui, actions, cron, ui, Context

ctx = Context()
ctx.matches = r"""
os: windows
and app.name: pgAdmin 4
os: windows
and app.exe: /^pgadmin4\.exe$/i
"""


