from talon import Module, Context, ctrl, actions
from typing import Dict

mod = Module()

apps = mod.apps
apps.borderlands_2 = """
os: mac
and app.bundle: com.aspyr.borderlands2.steam
"""


@mod.action_class
class Actions:
    
    def start_running():
        "Holds down shift and w"
        actions.key("w:down")
        actions.key("shift:down")
                
    def stop_running():
        """Release all keys"""
        actions.key("w:up")  
        actions.key("shift:up")  