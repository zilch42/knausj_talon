from talon import Context, Module, actions, imgui, registry

mod = Module()

@mod.action_class
class Actions:
    def log_to_console(text: str):
        """Log some text to the talon log"""
        try:
            print(text.get("text", ""))
        except:
            print(text)