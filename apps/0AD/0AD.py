from talon import Module, Context

mod = Module()

apps = mod.apps
apps.zeroAD = "0 A.D."
apps.zeroAD = """
os: mac
and app.bundle: com.wildfiregames.0ad
"""

mod.mode("game", desc="game commands only")