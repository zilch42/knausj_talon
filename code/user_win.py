# adds user actions for Windows

from talon import Module, actions, Context

mod = Module()

@mod.action_class
class Actions:
    def window_tab(number_small: int): 
    # def window_tab(): 
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
                


