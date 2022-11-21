# adds user actions for Windows

from talon import Module, actions, Context

mod = Module()
ctx = Context()
ctx.matches = r"""
os: windows
"""

@mod.action_class
class Actions:
    def window_tab(number_small: int):
        """press alt tab"""

@ctx.action_class("self")
class Actions:
    def window_tab(number_small: int): 
    # def window_tab(): 
        """press alt tab"""
        actions.key("alt:down")
        actions.sleep("100ms")
        actions.key(f"tab:{number_small}")
        actions.sleep("100ms")
        actions.key("alt:up")


                


