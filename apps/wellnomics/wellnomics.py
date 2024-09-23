from talon import Module, Context, ctrl, actions
from typing import Dict

mod = Module()

apps = mod.apps
apps.wellnomics = """
os: windows
and app.name: Wellnomics
os: windows
and app.exe: wellnomics.exe
"""