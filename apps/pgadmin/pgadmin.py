from talon import ui, actions, cron, ui, Context

ctx = Context()
ctx.matches = r"""
os: windows
and app.name: pgAdmin 4
os: windows
and app.exe: /^pgadmin4\.exe$/i
"""

@ctx.action_class("code")
class CodeActions:
    def language():
        # Default to SQL language.
        # Could use ui.register to detect focusing a document/console tab (on Mac at least)
        if next_language := actions.next():
            return next_language
        return "sql"
