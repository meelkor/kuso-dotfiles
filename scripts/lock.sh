#!/bin/bash

#scrot /tmp/screen.png
#convert /tmp/screen.png -scale 5% -scale 2000% /tmp/screen.png
#convert /tmp/screen.png ~/images/wallpapers/cirno.png -compose hardlight -define compose:args=10,10 -gravity South -composite -matte /tmp/screen.png
#playerctl pause 2>/dev/null
#
#revert() {
#    xset dpms 180 180 180
#}
#
#trap revert HUP INT TERM
#xset +dpms dpms 30 30 30
##export LD_PRELOAD="/usr/lib/libasan.so:$LD_PRELOAD"
##i3lock -n -i /tmp/screen.png -k --radius=40 --insidecolor=ffffff10 --ringcolor=449effb3 -r \
##	--timecolor=ffffffa0 --bshlcolor=000000a0 --separatorcolor=00000000 --keyhlcolor=ffffff60 \
##	--insidevercolor=60aeff77 --ringvercolor=70b2ffcc --timepos="x+(w/2)-(cw/2):y+80-(ch/2)" \
##	--veriftext=" " --wrongtext=" "
#i3lock -n -i /tmp/screen.png -k --radius=40 --insidecolor=ffffff10 --ringcolor=449effb3 -r \
#	--timecolor=ffffffa0 --bshlcolor=000000a0 --separatorcolor=00000000 --keyhlcolor=ffffff60 \
#	--insidevercolor=60aeff77 --ringvercolor=70b2ffcc \
#	--veriftext=" " --wrongtext=" "
#revert
#rm /tmp/screen.png

i3lock -i ~/Pictures/Wallpapers/i3lock.png
