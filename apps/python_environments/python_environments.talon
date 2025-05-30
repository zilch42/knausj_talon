tag: terminal
and tag: user.python_environments
-

# UV
install (woozy|U V|word he): "curl -LsSf https://astral.sh/uv/install.sh | sh"
(woozy|U V|word he) ad: "uv add "
(woozy|U V|word he) remove: "uv remove "
(woozy|U V|word he) pip list: "uv pip list "
(woozy|U V|word he) pip install: "uv pip install "
(woozy|U V|word he) sink: "uv sync "
(woozy|U V|word he) run: "uv run "
(woozy|U V|word he) initialize: "uv init "
(woozy|U V|word he) create lock file: "uv lock "
(woozy|U V|word he) create environment: "uv venv "
(woozy|U V|word he) install python: "uv python install "
(woozy|U V|word he) ad colonel: "uv add ipykernel"
(woozy|U V|word he) ad widgets: "uv add ipywidgets"

(woozy|U V|word he) run main: "uv run src/main.py"

# template stuff
poe lint: "poe alint"

# env
environment variables: 
    "set -a"
    key(enter)
    "source .env"
    key(enter)
    "set +a"
    key(enter)


# Pip
pip install: "pip install "
pip (upgrade|update): "pip install -U "
pip uninstall: "pip uninstall "
pip list: "pip list"
pip show: "pip show "

# custom
video ram: "nvidia-smi"
run open web UI: "open-webui serve"
run pipelines: "start.bat"

# Anaconda
anaconda: "conda "
anaconda help: "conda --help\n"
anaconda version: "conda --version\n"

anaconda environment list: "conda env list\n"
anaconda environment create: "conda create -n "
anaconda environment remove: "conda env remove -n "

anaconda activate: "conda activate "
anaconda clean: "conda clean "
anaconda compare: "conda compare "
anaconda config: "conda config "
anaconda create: "conda create "
anaconda info: "conda info "
anaconda init: "conda init "
anaconda install: "conda install "
anaconda list: "conda list "
anaconda package: "conda package "
anaconda remove: "conda remove "
anaconda uninstall: "conda uninstall "
anaconda run: "conda run "
anaconda search: "conda search "
anaconda update: "conda update "
anaconda upgrade: "conda upgrade "

anaconda build: "conda build "
anaconda convert: "conda convert "
anaconda debug: "conda debug "
anaconda develop: "conda develop "
anaconda environment: "conda env "
anaconda index: "conda index "
anaconda inspect: "conda inspect "
anaconda metapackage: "conda metapackage "
anaconda render: "conda render "
anaconda server: "conda server "
anaconda skeleton: "conda skeleton "
anaconda verify: "conda verify "

# custom
anaconda deactivate: "conda deactivate "

# git
git add user name: 'git config --global user.name "Tadro Abbott"'
git add email: 'git config --global user.email "tadro.abbott@csiro.au"'