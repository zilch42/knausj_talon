from talon import Module, Context, actions
from typing import Optional

mod = Module()
ctx = Context()
apps = mod.apps
apps.outlook = "app.name: Microsoft Outlook"
apps.outlook = """
os: windows
and app.name: Microsoft Outlook
os: windows
and app.exe: OUTLOOK.EXE
"""