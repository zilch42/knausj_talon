# adds user actions for Windows

from talon import Module, actions, Context

ctx = Context()
ctx.matches = r"""      
os: mac
"""

@ctx.action_class("self")
class Actions:
    def window_tab(number_small: int): 
    # def window_tab(): 
        """press alt tab"""
        actions.key("cmd-tab")
        


                


