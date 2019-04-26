eval $(ssh-agent)
xrdb ~/.Xresources
.screenlayout/nolaptop.sh
pgrep redshift &> /dev/null || redshift &> /dev/null &
numlockx on
export LD_PRELOAD=/usr/lib/libwcwidth-icons.so
PATH+=":/home/merumeru/.bin"
PYTHONPATH+=":/home/merumeru/projects/spaceknow/backend/python"
PATH+=":/home/merumeru/trash/em/emsdk"
EMSDK="/home/merumeru/trash/em/emsdk"
EM_CONFIG="/home/merumeru/.emscripten"

meru-input

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec i3
