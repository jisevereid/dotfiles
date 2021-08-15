#!/bin/bash

[ -f "$1" ] && cp "$1" ~/.config/wall.png

xwallpaper --stretch ~/.config/wall.png
