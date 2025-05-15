from talon import Context, Module

mod = Module()
ctx = Context("python")
ctx.matches = r"""
code.language: python
code.language: jupyter
code.language: quarto
"""

mod.list("py_lib_nicegui")
ctx.lists["user.py_lib_nicegui"] = {
    # basic elements
    "button": "button", 
    "label": "label", 
    "icon": "icon", 
    "link": "link", 
    "avatar": "avatar", 
    "badge": "badge", 
    "toggle": "toggle", 
    "radio": "radio", 
    "select": "select", 
    "checkbox": "checkbox", 
    "switch": "switch", 
    "slider": "slider", 
    "input": "input", 
    "text area": "textarea", 
    "number": "number", 
    "knob": "knob", 
    "color input": "color_input", 
    "color picker": "color_picker", 
    "date": "date", 
    "time": "time", 
    "upload": "upload", 
    "chat message": "chat_message", 
    "element": "element", 
    "markdown": "markdown", 
    "mermaid": "mermaid", 
    "HTML": "html", 
    "SVG": "SVG", 
    "image": "image", 
    "audio": "audio", 
    "video": "video", 
    "table": "table", 
    "grid": "aggrid", 
    "chart": "chart", 
    "E chart": "echart", 
    "plotly": "plotly", 
    "progress": "linear_progress", 
    "circle progress": "circular_progress", 
    "spinner": "spinner", 
    "tree": "tree", 
    "log": "log", 
    "editor": "editor", 
    "card": "card", 
    "Jason editor": "json_editor", 
    "column": "column", 
    "row": "row", 
    "expansion": "expansion", 
    "scroll area": "scroll_area", 
    "separator": "separator", 
    "splitter": "splitter", 
    "tabs": "tabs", 
    "tab": "tab", 
    "tab panel": "tab_panel", 
    "stepper": "stepper", 
    "step": "step", 
    "stepper navigation": "stepper_navigation", 
    "timeline": "timeline", 
    "timeline entry": "timeline_entry", 
    "carousel": "carousel", 
    "carousels slide": "carousels_slide",
    "menu": "menu", 
    "menu item": "menu_item", 
    "tooltip": "tooltip", 
    "notify": "notify", 
    "dialogue": "dialog", 
    
    # styling, properties etc
    "style": "style", 
    "properties": "props", 
    "classes": "classes", 
    "apply": "apply", 
    "query": "query", 
    "colors": "colors", 
    "dark mode": "dark_mode", 
    "on": "on", 
    
    # actions
    "timer": "timer", 
    "set text": "set_text", 
    "key": "key", 
    "keyboard": "keyboard", 
    "bind value to": "bind_value_to", 
    "bind value": "bind_value", 
    "update": "update", 
    "refresh": "refresh", 
    "CPU bound": "cpu_bound", 
    "io bound": "io_bound", 
    "open": "open", 
    "download": "download", 
    "run javascript": "run_javascript", 

    # pages
    "page": "page", 
    "header": "header", 
    
    # decorators
    "refresh able": "refreshable", 
    
}

