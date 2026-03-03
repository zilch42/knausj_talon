from talon import Context, Module, actions

mod = Module()

# Define the marimo mode
mod.mode("marimo", "Enable marimo-specific commands and disable conflicting VS Code commands")

@mod.action_class
class Actions:
    def marimo_mode_enable():
        """Enable marimo mode"""
        actions.mode.enable("user.marimo")
        actions.app.notify("Marimo mode enabled")
    
    def marimo_mode_disable():
        """Disable marimo mode"""
        actions.mode.disable("user.marimo")
        actions.app.notify("Marimo mode disabled")
    
    def marimo_mode_toggle():
        """Toggle marimo mode"""
        if "user.marimo" in actions.mode.list():
            actions.user.marimo_mode_disable()
        else:
            actions.user.marimo_mode_enable()