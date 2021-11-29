#!/bin/bash

# set the screen
~/.screenlayout/w3.sh
~/.scripts/setbg.sh

# compositor
picom &

# start some util
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
xss-lock --transfer-sleep-lock -- i3lock --nofork &
unclutter &

# status bar
slstatus &

# bar applets
pa-applet &
nm-applet &

# start window manager
exec dbus-launch --exit-with-session dwm
