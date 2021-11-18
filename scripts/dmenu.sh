#!/bin/bash

#dmenu_run -o 0.7 -dim 0.1 -l 16 -h 36 -nb '#336699' -nf '#333333' -nb '#ffffff' -dc '#ffffff' -fn "Roboto Mono Light for Powerline-14" -y 340 -sf '#000000' -sb '#8dc4ff'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

rofi -no-lazy-grab -show combi -combi-modi drun,run -modi combi,drun,run -theme $SCRIPT_DIR/dmenu/launchpad.rasi
