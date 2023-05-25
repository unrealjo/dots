#!/bin/bash
setxkbmap fr
~/.fehbg 
picom --config ~/.config/picom/picom.conf &
xfce4-power-manager &
$HOME/.config/polybar/launcher.sh &
exec /usr/libexec/xdg-desktop-portal-gtk &
diodon &
dunst &
nm-applet &
xiccd &
lxpolkit &
syncthing serve --no-browser &
#xgamma -gamma 0.8
brightnessctl s 300
