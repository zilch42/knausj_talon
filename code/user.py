# adds user actions for Windows

from talon import Module, actions, Context

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

    def word_up():
        """press control up"""
        actions.key('ctrl-up')
    def word_down():
        """press control down"""
        actions.key('ctrl-down')
    def grab_up():
        """press control shift up"""
        actions.key('ctrl-shift-up')
    def grab_down():
        """press control shift down"""
        actions.key('ctrl-shift-down')
ctx_mac = Context()
ctx_mac.matches = r"""
os: mac
"""

# need to test this on Mac
# @ctx_mac.action_class("user")
# class Actions:
#     def window_tab(number_small: int): 
#         """press alt tab"""
#         actions.key("cmd:down")
#         actions.sleep("100ms")
#         actions.key(f"tab:{number_small}")
#         actions.sleep("100ms")
#         actions.key("cmd:up")
#     def word_up():
#         actions.key('cmd-up')
#     def word_down():
#         actions.key('cmd-down')


