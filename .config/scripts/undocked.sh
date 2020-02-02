#!/bin/sh
xrandr --output HDMI1 --off 
bspc monitor eDP1 -d 1 2 3 4 5 6 7 8 9 0
feh --randomize --bg-fill $HOME/wallpapers/1080p
/bin/sh $HOME/.config/polybar/launch.sh
