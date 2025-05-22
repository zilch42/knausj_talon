code.language: python
code.language: jupyter
code.language: quarto
- 
tag(): user.code_imperative
tag(): user.code_object_oriented

tag(): user.code_comment_documentation
tag(): user.code_comment_line
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_common
tag(): user.code_keywords
tag(): user.code_libraries
tag(): user.code_libraries_gui
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_lambda
tag(): user.code_operators_math

settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"

#python-specific grammars
dunder in it: "__init__"
dunder school: "_"
state (def | deaf | deft): "def "
state try: "try:\n"
state except: "except "
state raise: "raise "
self taught: "self."
state todo: "# TODO: "
pie test: "pytest"
state await: "await "
state async: "async "
state is none: " is None"

raise {user.python_exception}: user.insert_between("raise {python_exception}(", ")")
except {user.python_exception}: "except {python_exception}:"

dock string: user.code_comment_documentation()
dock {user.python_docstring_fields}:
    insert("{python_docstring_fields}")
    edit.left()
dock type {user.code_type}: user.insert_between(":type ", ": {code_type}")
dock return type {user.code_type}: user.insert_between(":rtype ", ": {code_type}")

type hint {user.code_type}: ": {code_type} = "
datatype {user.code_type}: "{code_type}"

# Imports
import <user.code_libraries>:
    "import "
    user.code_insert_library(code_libraries, "")
    key(end enter)
from import: user.insert_between("from ", " import ")
toggle imports: user.code_toggle_libraries()
pip install: "pip install "


# misc
insert line break:
    "# ------------------------------------------------"
contained in: " in "
not contained in: " not in "
collect garbage: 
    "gc.collect()"
    key(enter)

next quote: 
    ': "'
    key(right)
    ", "
    key(left:3)
quote pair:
    '"": "", '
    key(left:7)
double <user.text>$: '"{text}": "{text}", '
dot foxy: "df"
close to end: 
    edit.extend_right()
    edit.cut()
    key(end)
    edit.paste()

# Libraries
pandas {user.py_lib_pandas}: user.code_insert_function(py_lib_pandas, "")
dot pandas {user.py_lib_pandas}: 
    "."
    user.code_insert_function(py_lib_pandas, "")
polars {user.py_lib_polars}: 
    "pl."
    user.code_insert_function(py_lib_polars, "")
dot polars {user.py_lib_polars}: 
    "."
    user.code_insert_function(py_lib_polars, "")
dot {user.dot_functions}: 
    "."
    user.code_insert_function(dot_functions, "")
(numb pie | numpy) {user.py_lib_numpy}: user.code_insert_function(py_lib_numpy, "")
regex {user.py_lib_re}: user.code_insert_function(py_lib_re, "")
system {user.py_lib_sys}: user.code_insert_function(py_lib_sys, "")
OS {user.py_lib_os}: user.code_insert_function(py_lib_os, "")
graph {user.py_lib_matplotlib}: user.code_insert_function(py_lib_matplotlib, "")
seaborne {user.py_lib_seaborn}: user.code_insert_function(py_lib_seaborn, "")

# niceGUI
nice {user.py_lib_nicegui}: user.code_insert_function(py_lib_nicegui, "")
you I {user.py_lib_nicegui}: 
    "ui."
    user.code_insert_function(py_lib_nicegui, "")
nice dot {user.py_lib_nicegui}: 
    "."
    user.code_insert_function(py_lib_nicegui, "")
nice on click: "on_click=lambda: "

# pickle 
pickle (dump|save):
    "with open('', 'wb') as f:"
    key(enter)
    "pickle.dump(, f)"
    key(up left:9)

pickle load:
    "with open('', 'rb') as f:"
    key(enter)
    "pickle.load(, f)"
    key(up left:9)

# logger levels 
logger info: 
    'logger.info()'
logger warning: 
    'logger.warning()'
logger error: 
    'logger.error()'
logger debug: 
    'logger.debug()'

# quarto functions
cue comment: "#| "
cue {user.quarto_chunk_options} [{user.quarto_logical}]:
    edit.select_line()
    "#| "
    insert(quarto_chunk_options)
    ": "
    insert(quarto_logical)
cue chunk: 
    """```{{python}}
    %%time
    
    ```"""
    key(up)

# # OTHER PEOPLE'S STUFF
# # PANDAS
axis [equals] <number>$: "axis={number}"
in place true: "inplace=True"
in place false: "inplace=False"
dot lock: ".loc[]"
dot i lock: ".iloc[]"
dot to list: ".tolist()"

d f: "df"
lambda ex: "lambda x: "

# MATPLOTLIB Stuff
new plot: "fig, ax = plt.subplots()"

# cuda
device cuda if available: """device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")"""
torch cuda is available: "torch.cuda.is_available()"

