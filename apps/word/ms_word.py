from talon import Module, Context
from typing import Optional

mod = Module()
ctx = Context()
apps = mod.apps
apps.ms_word = "app.name: Microsoft Word"
apps.ms_word = """
os: windows
and app.name: Microsoft Word
os: windows
and app.exe: WINWORD.EXE
"""

apps.ms_word = """
os: mac
and app.bundle: org.microsoft.winword
"""