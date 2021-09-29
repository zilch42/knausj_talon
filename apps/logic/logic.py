from talon import Module, actions

mod = Module()
apps = mod.apps
apps.logic = "app.name: Logic Pro"
apps.logic = """
os: mac
and app.bundle: com.apple.logic10
"""

