from talon import ui, Module, Context, registry, actions, imgui, cron
from typing import Optional

ctx = Context()
ctx.matches = r"""
os: windows
app: excel
"""


# @ctx.action_class("user")
# class Actions:
#     def xl_select_cells(first: str, second: Optional[str] = None):
#         """Select a cell, or range of cells"""
#         target = f"{first}:{second}" if second else first
#         actions.key("ctrl-g")
#         actions.insert(target)
#         actions.key("enter")