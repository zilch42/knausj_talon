# adds user actions for Windows

from talon import Module, actions, Context
from typing import Optional

mod = Module()

@mod.action_class
class Actions:
    def window_tab(number_small: int): 
        """press alt tab"""
        actions.key("alt:down")
        actions.sleep("100ms")
        actions.key(f"tab:{number_small}")
        actions.sleep("100ms")
        actions.key("alt:up")

ctx_mac = Context()
ctx_mac.matches = r"""
os: mac
"""

# need to test this on Mac
@ctx_mac.action_class("user")
class Actions:
    def window_tab(number_small: int): 
        """press alt tab"""
        actions.key("cmd:down")
        actions.sleep("100ms")
        actions.key(f"tab:{number_small}")
        actions.sleep("100ms")
        actions.key("cmd:up")
