#!/bin/sh
xrandr --output HDMI1 --off 
bspc monitor eDP1 -d 1 2 3 4 5 6 7 8 9 0
$HOME/.config/polybar/launch.sh
