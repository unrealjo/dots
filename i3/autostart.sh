#!/bin/sh
picom --config ~/.config/picom/picom.conf &
$HOME/.config/polybar/launcher.sh &
~/.fehbg &
dunst &
nm-applet &
lxpolkit &
xfce4-power-manager &
xgamma -gamma 0.8
