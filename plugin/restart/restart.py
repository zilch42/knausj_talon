import os
from talon import Module, ui, actions, app

mod = Module()

@mod.action_class
class Actions:
    def talon_restart():
        """restart talon"""
        talon_app = ui.apps(pid=os.getpid())[0]
        print("Restarting:", talon_app)
        os.startfile(talon_app.exe)
        talon_app.quit()
        
    def talon_quit():
        """quit talon"""
        talon_app = ui.apps(pid=os.getpid())[0]
        print("Quitting:", talon_app)
        talon_app.quit()

    def restart_talon_with_confirmation():
        '''Check whether to really restart talon'''
        def on_confirm():
            actions.user.talon_restart()
        def on_cancel():
            pass
        actions.user.are_you_sure_set_on_confirmation_action('Really restart talon?', on_confirm, on_cancel)
        