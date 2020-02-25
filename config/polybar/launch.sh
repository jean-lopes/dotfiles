#!/bin/sh
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --config=$HOME/.config/polybar/config --reload mybar &
  done
else
  polybar --config=$HOME/.config/polybar/config --reload mybar &
fi

echo "Polybar launched..."
