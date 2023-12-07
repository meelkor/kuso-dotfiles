#!/usr/bin/env bash
# toggle sticky for focused window
# requires xdotool

state=enabled
mywindow=$(xdotool getactivewindow)
if [[ $state == 'enabled' ]]; then
    i3-msg "[id=$mywindow] sticky disable"
    sed -i '5s/.*/state=disabled/' $0
else
    i3-msg "[id=$mywindow] sticky enable"
    sed -i '5s/.*/state=enabled/' $0
fi