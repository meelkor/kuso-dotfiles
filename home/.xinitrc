eval $(ssh-agent)
xrdb ~/.Xresources
.screenlayout/nolaptop.sh
pgrep redshift &> /dev/null || redshift &> /dev/null &
numlockx on
export LD_PRELOAD=/usr/lib/libwcwidth-icons.so
PATH+=":/home/merumeru/.bin"

meru-input

exec i3
