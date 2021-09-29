# adds user actions for mac

from talon import Module, actions, Context

ctx = Context()
ctx.matches = r"""
os: mac
"""
@ctx.action_class("self")
class Actions:
    def window_tab(number_small: int): 
        actions.key('cmd-tab')
    def word_up():
        actions.key('cmd-up')
    def word_down():
        actions.key('cmd-down')
    def grab_up():
        actions.key('cmd-shift-up')
    def grab_down():
        actions.key('cmd-shift-down')



# need to try more complicated direct window switching for mac
# @ctx.action_class("self")
# class Actions:
#     # def window_tab(number_small: int):  
#     def window_tab():  
#         actions.key("cmd:down")
#         actions.sleep("100ms")    
#         actions.key(f"tab:{1}")
#         actions.sleep("100ms")
#         actions.key("cmd:up")
