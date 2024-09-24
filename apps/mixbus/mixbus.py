from talon import Module, Context, ctrl, actions

mod = Module()

apps = mod.apps
apps.zeroAD = """
os: mac
and app.bundle: com.horrison.mixbus
"""