from talon import ui, actions, cron, ui, Context

ctx = Context()
ctx.matches = r"""
title: /RStudio/
"""


@ctx.action_class("win")
class VimWinActions:
    def file_ext():
        return ".r"