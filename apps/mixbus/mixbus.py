from talon import Module, Context, ctrl, actions

mod = Module()

apps = mod.apps
apps.mixbus = """
os: mac
and app.bundle: com.harrisonconsoles.Mixbus10
"""