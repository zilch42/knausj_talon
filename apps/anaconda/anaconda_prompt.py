from talon import Context, Module

ctx = Context()
mod = Module()
ctx.matches = r"""
os: windows
and app.name: Windows Command Processor
os: windows
and app.exe: cmd.exe
and title: /Anaconda Prompt/
os: windows
and app.name: Firefox
os: windows
and app.exe: firefox.exe
and title: JupyterLab
os: windows
and app.name: Console Window Host
and title: /Anaconda Prompt/
"""

ctx.tags = ["user.anaconda", "terminal"]


