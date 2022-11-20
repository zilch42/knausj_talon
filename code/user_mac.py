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
        

    # def word_up():
    #     """press control up"""
    #     actions.key('ctrl-up')
    # def word_down():
    #     """press control down"""
    #     actions.key('ctrl-down')
    # def grab_up():
    #     """press control shift up"""
    #     actions.key('ctrl-shift-up')
    # def grab_down():
    #     """press control shift down"""
    #     actions.key('ctrl-shift-down')
                


