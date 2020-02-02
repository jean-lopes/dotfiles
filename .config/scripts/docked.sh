#!/bin/sh
xrandr --output HDMI1 --primary --auto --right-of eDP1
bspc monitor eDP1 -d 1
bspc monitor HDMI1 -d 2 3 4 5 6 7 8 9 0
feh --randomize --bg-fill $HOME/wallpapers/1080p
sh $HOME/.config/polybar/launch.sh
