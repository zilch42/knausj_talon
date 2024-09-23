from talon import Context, Module, app

from ..user_settings import get_list_from_csv

# used for number keys & function keys respectively
digits = "zero one two three four five six seven eight nine".split()
f_digits = "one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty".split()


mod = Module()
mod.list("letter", desc="The spoken phonetic alphabet")
mod.list("symbol_key", desc="All symbols from the keyboard")
mod.list("arrow_key", desc="All arrow keys")
mod.list("number_key", desc="All number keys")
mod.list("modifier_key", desc="All modifier keys")
mod.list("function_key", desc="All function keys")
mod.list("special_key", desc="All special keys")
mod.list("punctuation", desc="words for inserting punctuation into text")


@mod.capture(rule="{self.modifier_key}+")
def modifiers(m) -> str:
    "One or more modifier keys"
    return "-".join(m.modifier_key_list)


@mod.capture(rule="{self.arrow_key}")
def arrow_key(m) -> str:
    "One directional arrow key"
    return m.arrow_key


@mod.capture(rule="<self.arrow_key>+")
def arrow_keys(m) -> str:
    "One or more arrow keys separated by a space"
    return str(m)


@mod.capture(rule="{self.number_key}")
def number_key(m) -> str:
    "One number key"
    return m.number_key


@mod.capture(rule="{self.letter}")
def letter(m) -> str:
    "One letter key"
    return m.letter


@mod.capture(rule="{self.special_key}")
def special_key(m) -> str:
    "One special key"
    return m.special_key


@mod.capture(rule="{self.symbol_key}")
def symbol_key(m) -> str:
    "One symbol key"
    return m.symbol_key


@mod.capture(rule="{self.function_key}")
def function_key(m) -> str:
    "One function key"
    return m.function_key


@mod.capture(rule="( <self.letter> | <self.number_key> | <self.symbol_key> )")
def any_alphanumeric_key(m) -> str:
    "any alphanumeric key"
    return str(m)


@mod.capture(
    rule="( <self.letter> | <self.number_key> | <self.symbol_key> "
    "| <self.arrow_key> | <self.function_key> | <self.special_key> )"
)
def unmodified_key(m) -> str:
    "A single key with no modifiers"
    return str(m)


@mod.capture(rule="{self.modifier_key}* <self.unmodified_key>")
def key(m) -> str:
    "A single key with optional modifiers"
    try:
        mods = m.modifier_key_list
    except AttributeError:
        mods = []
    return "-".join(mods + [m.unmodified_key])


@mod.capture(rule="<self.key>+")
def keys(m) -> str:
    "A sequence of one or more keys with optional modifiers"
    return " ".join(m.key_list)


@mod.capture(rule="{self.letter}+")
def letters(m) -> str:
    "Multiple letter keys"
    return "".join(m.letter_list)


ctx = Context()
modifier_keys = {
    # If you find 'alt' is often misrecognized, try using 'alter'.
    "alt": "alt",  #'alter': 'alt',
    "control": "ctrl",  #'troll':   'ctrl',
    "shift": "shift",  #'sky':     'shift',
    "big": "shift",
    "super": "super",
}
if app.platform == "mac":
    modifier_keys["command"] = "cmd"
    modifier_keys["option"] = "alt"
ctx.lists["self.modifier_key"] = modifier_keys

# `punctuation_words` is for words you want available BOTH in dictation and as key names in command mode.
# `symbol_key_words` is for key names that should be available in command mode, but NOT during dictation.
punctuation_words = {
    "back tick": "`",
    "ticky": "`",
    "comma": ",",
    "dot": ".",
    # "full stop": ".",
    "semicolon": ";",
    "colon": ":",
    "[forward] slash": "/",
    "exclamation mark": "!",
    "dollar sign": "$",
    "asterisk": "*",
    "hashtag": "#",
    "number sign": "#",
    "percent sign": "%",
    "and sign": "&",
    "ampersand": "&",
}
symbol_key_words = {
    "choccy": '"',
    "chocky": '"',
    "chicky": "'",
    "apostrophe": "'",
    "L square": "[",
    "left square": "[",
    "brack": "[",
    "bracket": "[",
    "left bracket": "[",
    "square": "[",
    "R square": "]",
    "right square": "]",
    "backslash": "\\",
    "minus": "-",
    "dash": "-",
    "equals": "=",
    "plus": "+",
    "grave": "`",
    "tilde": "~",
    "clamour": "!",
    "dollar": "$",
    "under score": "_",
    "paren": "(",
    "L paren": "(",
    "left paren": "(",
    "are paren": ")",
    "right paren": ")",
    "close paren": ")",
    "curly": "{",
    "left curly": "{",
    "L curly": "{",
    "R curly": "}",
    "right curly": "}",
    "angle": "<",
    "left angle": "<",
    "less than": "<",
    "rangle": ">",
    "R angle": ">",
    "right angle": ">",
    "greater than": ">",
    "deckle": ":",
    "semper": ";",
    "atty": "@",
    "questo": "?",
    "starling": "*",
    "pound": "#",
    "hash": "#",
    "percent": "%",
    "modulo": "%",
    "caret": "^",
    "pipe": "|",
    "quote": '"',
}

# make punctuation words also included in {user.symbol_keys}
symbol_key_words.update(punctuation_words)
ctx.lists["self.punctuation"] = punctuation_words
ctx.lists["self.symbol_key"] = symbol_key_words
ctx.lists["self.number_key"] = {name: str(i) for i, name in enumerate(digits)}
ctx.lists["self.arrow_key"] = {
    "dunce": "down",
    "lease": "left",
    "ross": "right",
    "sauce": "up",
}

simple_keys = [
    "end",
    # "enter",
    "escape",
    "home",
    "insert",
    "pagedown",
    "pageup",
    "space",
    "tab",
    "capslock",
]

alternate_keys = {
    "clear": "backspace",
    "delete": "delete",
    "delhi": "delete",
    "cancel": "escape",
    "page up": "pageup",
    "page down": "pagedown",
    # "ace": "space", 
    "clap": "enter",
    "shock": "enter",
}
# mac apparently doesn't have the menu key.
if app.platform in ("windows", "linux"):
    alternate_keys["menu key"] = "menu"
    alternate_keys["print screen"] = "printscr"

special_keys = {k: k for k in simple_keys}
special_keys.update(alternate_keys)
ctx.lists["self.special_key"] = special_keys
ctx.lists["self.function_key"] = {
    f"F {name}": f"f{i}" for i, name in enumerate(f_digits, start=1)
}
