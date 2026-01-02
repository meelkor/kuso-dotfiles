# should be sourced in the ~/.zshenv file after all KUSO env
# variables are defined according to the install script

alias vim=nvim
export EDITOR="nvim"
export CHROME_BIN=/usr/bin/chromium
export TERM=kitty
export ELECTRON_OZONE_PLATFORM_HINT=auto
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export SDL_VIDEODRIVER="wayland,x11"

PATH+=":$KUSO_BACKEND/devtools"
PATH+=":$KUSO/bin"

export PYTHONPATH
export PATH

PYTHONPATH+=":$KUSO_BACKEND/python"

