from talon import Module, Context, actions
from itertools import repeat

mod = Module()
ctx = Context()

apps = mod.apps
apps.audulus = "app.name: Audulus 4"
apps.audulus = """
os: mac
and app.bundle: com.audulus.audulus4
"""

ctx.matches = r"""
app: audulus
"""

mod.list("nodes")
ctx.lists["user.nodes"] = {
    # utilities
    "audio in":         "1,1",
    "oreo out":         "1,2",
    "text":             "1,3",
    "timer":            "1,4",
    "zero crossing":    "1,5",
    # math
    "expression":       "2,1",
    "sum":              "2,2",
    "product":          "2,3",
    "random":           "2,4",
    # mater
    "meter":            "3,1",
    "waveform":         "3,2",
    "value":            "3,3",
    "light":            "3,4",
    "RGB":              "3,5",
    "scope":            "3,6",
    "shader":           "3,7",
    "canvas":           "3,8",
    # midi
    "keyboard":         "4,1",
    "note":             "4,2",
    "see see":          "4,3",
    "trigger":          "4,4",
    # level
    "spline":           "5,1",
    "mapper":           "5,2",
    "follow envelope":  "5,3",
    # dsp
    "unit delay":       "6,1",
    "by quad":          "6,2",
    "low pass":         "6,3",
    "high pass":        "6,4",
    "delay line":       "6,5",
    "DC blocker":       "6,6",
    "sample rate":      "6,7",
    "resample":         "6,8",
    "memory":           "6,9",
    # synth
    "oscillator":       "7,1",
    "phaser":           "7,2",
    "sample and hold":  "7,3",
    "envelope":         "7,4",
    # module
    "module":           "8,1",
    "input":            "8,2",
    "output":           "8,3",
    "nob":              "8,4",
    "XY pad":           "8,5",
    "slider":           "8,6",
    "toggle":           "8,7",
    "touchpad":         "8,8",
    # poly
    "combine":          "9,1",
    "split":            "9,2",
    "mix":              "9,3",
    "channel index":    "9,4",
    "channel count":    "9,5",
    # switch
    "multi in":         "10,1",
    "monte out":        "10,2",
    "spigot":           "10,3",
}

@mod.action_class
class Actions:
    def insert_node(position: str):
        """Insert node from right click menu"""
        pos = position.split(sep=",")
        down1 = "down " * int(pos[0])
        down2 = "down " * (int(pos[1]) - 1)
        actions.mouse_click(1)
        actions.key(down1)
        actions.key("right")
        actions.key(down2)
        actions.key("enter")





