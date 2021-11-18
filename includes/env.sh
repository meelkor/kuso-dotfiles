# should be sourced in the ~/.zshenv file after all KUSO env
# variables are defined according to the install script

alias vim=nvim
export EDITOR="nvim"
export CHROME_BIN=/usr/bin/chromium

PATH+=":$KUSO_BACKEND/devtools"
PATH+=":$KUSO/bin"

export PYTHONPATH
export PATH

PYTHONPATH+=":$KUSO_BACKEND/python"

