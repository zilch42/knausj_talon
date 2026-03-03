tag: terminal
and tag: user.python_environments
-

# UV
install (woozy|U V|word he): "curl -LsSf https://astral.sh/uv/install.sh | sh"
(woozy|U V|word he) ad: "uv add "
(woozy|U V|word he) dev ad: "uv add --dev "
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

# poe the poet
poe lint: "poe alint"
poe docs: "poe docs"
poe drop test: "poe drop_test"
poe build local: "poe build_local"

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

# open webui
run open web UI: "open-webui serve"
run pipelines: "start.bat"

# git
git add user name: 'git config --global user.name "Tadro Abbott"'
git add email: 'git config --global user.email "tadro.abbott@csiro.au"'

# docker
docker show: "docker ps"
docker show stopped: "docker ps -a"
docker stop: "docker stop "
docker start: "docker start "
docker restart: "docker restart "
docker remove: "docker rm "
docker logs: "docker logs "

# marimo
marimo run: "uv run --with marimo marimo run "
marimo (start|edit): "uv run --with marimo marimo edit --watch "
marimo convert: "uv run --with marimo marimo convert .ipynb -o .py"
marimo export: "uv run --with marimo marimo export .py -o .html"

# random cli
run wos download: "node .\download_wos_fast5k.js --base-name 'savedrecs'"