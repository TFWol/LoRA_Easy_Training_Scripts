@echo off
cd /d %~dp0

git pull
git submodule init
git submodule update

cd sd_scripts
call venv\Scripts\activate
pip install -U -r requirements.txt
cd ..
pip install -U -r requirements_ui.txt
pip install -U LyCORIS\.
pip install "https://github.com/jllllll/bitsandbytes-windows-webui/raw/main/bitsandbytes-0.38.1-py3-none-any.whl"
pause