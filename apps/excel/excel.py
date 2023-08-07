from talon import Module, Context, actions
from typing import Optional

mod = Module()
ctx = Context()
apps = mod.apps
apps.excel = "app.name: Excel"
apps.excel = """
os: windows
and app.name: Microsoft Excel
os: windows
and app.exe: EXCEL.EXE
"""

apps.excel = """
os: mac
and app.bundle: com.microsoft.Excel
"""

@mod.capture(rule="<user.letters> <number>")
def xl_cell(m) -> str:
    "An excel cell"
    return f"{m.letters}{m.number}".upper()

@mod.action_class
class Actions:
    def xl_select_cells(first: str, second: Optional[str] = None):
        """Select a cell, or range of cells"""
        target = f"{first}:{second}" if second else first
        actions.key("ctrl-g")
        actions.insert(target)
        actions.key("enter")