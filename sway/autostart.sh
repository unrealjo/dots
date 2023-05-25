#!/bin/sh
dbus-update-activation-environment --all  &
dunst &
nm-tray &
lxpolkit &
/usr/libexec/xdg-desktop-portal-gtk &
wl-paste -t text --watch clipman store --no-persist &
brightnessctl s 570
