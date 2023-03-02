#!/bin/sh
dbus-update-activation-environment --all  &
#picom --config ~/.config/picom/picom.conf &
dunst &
nm-applet &
/usr/libexec/xfce-polkit &
lxpolkit &
/usr/libexec/xdg-desktop-portal-wlr &
wl-paste -t text --watch clipman store --no-persist &
brightnessctl 472
