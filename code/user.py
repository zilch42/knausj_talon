# adds user actions for Windows

from talon import Module, actions, Context

mod = Module()

@mod.action_class
class Actions:
    def window_tab(): 
        """press alt tab"""
        actions.key('alt-tab')

ctx_mac = Context()
ctx_mac.matches = r"""
os: mac
"""

# need to test this on Mac
@ctx_mac.action_class("user")
class Actions:
    def window_tab(): 
        """press cmd tab"""
        actions.key('cmd-tab')
