source /home/jean/.profile
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
feh --randomize --bg-fill $HOME/wallpapers/720p --randomize --bg-fill $HOME/wallpapers/1080p
exec bspwm
