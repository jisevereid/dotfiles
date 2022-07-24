#!/bin/bash

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

# remap caps to esq
run ~/.scripts/remap.sh

run xscreensaver --no-splash

# start polkit
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

# disable screen blank
run xset s off
run xset s noblank
run xset -dpms
run xset dpms 0 0 0

run picom
run pa-applet
run nm-applet

