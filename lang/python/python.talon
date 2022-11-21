tag: user.python
-
tag(): user.code_imperative
tag(): user.code_object_oriented

tag(): user.code_comment_line
tag(): user.code_comment_documentation
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
tag(): user.code_operators_math
tag(): user.common_variables

settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"

#python-specific grammars
dunder in it: "__init__"
state (def | deaf | deft): "def "
state try: "try:\n"
state except: "except "
state raise: "raise "
self taught: "self."
pie test: "pytest"
state past: "pass"

raise {user.python_exception}: user.insert_between("raise {python_exception}(", ")")
except {user.python_exception}: "except {python_exception}:"

dock string:
    user.code_comment_documentation()
dock {user.python_docstring_fields}:
    insert("{python_docstring_fields}")
    edit.left()
dock type {user.code_type}:
    user.insert_between(":type ", ": {code_type}")
dock returns type {user.code_type}:
    user.insert_between(":rtype ", ": {code_type}")

# Imports
import <user.code_libraries>:
    "import "
    user.code_insert_library(code_libraries, "")
    key(end enter)
from import: user.insert_between("from ", " import ")
toggle imports: user.code_toggle_libraries()
pip install: "pip install "

# misc
insert todo: "# TODO: "
insert line break:
    "# ------------------------------------------------"
boom: ", "
contained in: " in "
collect garbage: 
    "gc.collect()"
    key(enter)

# dictionary definitions where "word": "word", (for talon)
^double <user.text>$: 
    '"'
    auto_insert(user.text)
    '": "'
    auto_insert(user.text)
    '", '

next quote: 
    key(right)
    ': "'
    key(right)
    ", "
    key(left:3)

# date time now format: 'datetime.now().strftime("%Y-%m-%d %H:%M[|]")'

# Libraries
pandas {user.py_lib_pandas}: user.code_insert_function(py_lib_pandas, "")
dot pandas {user.py_lib_pandas}: 
    "."
    user.code_insert_function(py_lib_pandas, "")
numb pie {user.py_lib_numpy}: user.code_insert_function(py_lib_numpy, "")
regex {user.py_lib_re}: user.code_insert_function(py_lib_re, "")
system {user.py_lib_sys}: user.code_insert_function(py_lib_sys, "")
OS {user.py_lib_os}: user.code_insert_function(py_lib_os, "")
graph {user.py_lib_matplotlib}: user.code_insert_function(py_lib_matplotlib, "")
seaborne {user.py_lib_seaborn}: user.code_insert_function(py_lib_seaborn, "")

# Loggers
logging get logger: "logger = logging.getLogger(__name__)"
logging basic config:
    """logging.basicConfig(
        level=logging.INFO,
        file=None,
        format="%(asctime)s [%(levelname)s] %(message)s",
        datefmt="%Y-%m-%d %H:%M","""


# # OTHER PEOPLE S STUFF
# # PANDAS
axis equals <number>$: "axis={number}"
in place true: "inplace=True"
in place false: "inplace=False"

d f: "df"
lambda ex: "lambda x: "

dot describe: ".describe()"
dot info: ".info()"

dot drop column in place: ".drop(columns='TO ADD', inplace=True)"

dot i lock: ".iloc["
dot lock: ".loc[:, "

# dot as type float: ".astype(float)"
# dot as type int: ".astype(int)"

dot string split: ".str.split("

# dot value counts: ".value_counts()"
# dot value counts show missing: ".value_counts(dropna=False)"

# MATPLOTLIB Stuff
new plot: "fig, ax = plt.subplots()"

# # SYNTAX COMMON TO NP and TORCH
# dee type: "dtype"
# dot zeros_like: ".zeros_like"
# dot zeros: ".zeros"

# dot n dim: ".ndim"
# dot shape: ".shape"
# dot reshape: ".reshape("
# dot full: ".full(shape=, fill_value=)"
# dot full like: ".full_like("
# dot eye: ".eye"

# dot rand n like: ".randn_like("
# dot a range: ".arange("

# dot split: ".split("
# dot stack: ".stack("
# dot max: ".max("
# dot min: ".min("

# dot squeeze: ".squeeze("
# dot unsqueeze: ".unsqueeze("

# dot numel: ".numel()"

# # NUMPY
# n p dot: "np."

# np array: "np.array(["
# np zeros: "np.zeros("

# np a range: "np.arange("

# np concat: 
#     insert("np.concatenate(, axis=)")
#     key(left:10)


# np nan: "np.nan"

# # TORCH


# ## change display precision (does not actuallly change values)
# torch display precision: "torch.set_printoptions(precision=1)"

# word pytorch: "pytorch"

# state torch: "torch"

# torch tensor: "torch.tensor"    
# state tensor: "tensor"

# torch from num pie: "torch.from_numpy("

# dot dee type: ".dtype"

# dot c p u: ".cpu()"

# dot c p u num pie: ".cpu().numpy()"

# dot clone: ".detach().clone()"

# dot device: ".device"

# dot num pie: ".numpy()"

# dot float: ".float()"
# dot long: ".long()"

# dot view: ".view("
# dot trans: ".t()"

# dot sum: ".sum"

# dot diag: ".diag()"

# dot mull: ".mul("
# dot mat mull: ".matmul("

# dot grad: ".grad"
# dot requires grad: ".requires_grad_()"
# requires grad: "requires_grad"
# requires grad true: "requires_grad=True"
# torch no grad: "with torch.no_grad():"


# dot backward: ".backward()"

# torch reshape: "torch.reshape("
# torch a range: "torch.arange("
# torch zeros: "torch.zeros("
# torch stack: "torch.stack("
# torch cat: 
#     insert("torch.cat(, dim=)")
#     key(left:7)
# torch chunk: "torch.chunk("
# torch long: "torch.long"
# torch bool: "torch.bool"
# torch float: "torch.float"

# torch manual seed: "torch.manual_seed(7)"

# torch rand: "torch.rand("
# torch rand like: "torch.rand_like("

# torch rand n: "torch.randn("
# torch rand n like: "torch.randn_like("
# torch normal: "torch.normal("
# torch lin space: "torch.linspace(start, end, steps)"

# torch L two norm: "torch.linalg.norm("

# sea born lineplot: "sns.lineplot(x= , y= , label='$$')"

# # Initializing things

# ## Make operations deterministic
# torch set deterministic:
#     """torch.backends.cudnn.determinstic = True
#     torch.backends.cudnn.benchmark = False"""

# device cuda if available: """device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")"""

# torch cuda is available: "torch.cuda.is_available()"

# usual learning rate: "learning_rate = 1e-4"
# usual L two: "λ_l2 = 1e-5"

# init optimizer: "optimizer = torch.optim.Adam(model.parameters(), lr=learning_rate, weight_decay=lambda_l2) # built-in L2"
  
# n n sequential: "nn.Sequential"
# n n linear: "nn.Linear"
# model equal sequential: "model = nn.Sequential("
# model to device: "model.to(device) #Convert to CUDA"

# torch cross entropy: "torch.nn.CrossEntropyLoss()"

# init params: "init_params("

# zero grad: "optimizer.zero_grad()"

# optimizer step: "optimizer.step()"

