#!/bin/bash
picom --config ~/.config/picom/picom.conf &
setxkbmap fr
xfce4-power-manager &
$HOME/.config/polybar/launcher.sh &
~/.fehbg &
exec /usr/libexec/xdg-desktop-portal-gtk &
dunst &
nm-applet &
lxpolkit &
xgamma -gamma 0.8
brightnessctl s 472
