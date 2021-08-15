#!/bin/bash

# make sure we're in the home dir
cd ~

pacman -Sys

# add arch repos to config
pacman -S artix-archlinux-support
cp .rice/pacman.conf /etc/pacman.conf

pacman -S man
pacman -S xorg-server xorg-init
pacman -S i3-gaps i3status i3blocks rxvt-unicode rofi
pacman -S terminus-font
pacman -S noto-fonts
pacman -S noto-fonts-emoji
pacman -S git
pacman -S ranger
pacman -S pulseaudio pavucontrol
pacman -S picom
pacman -S xdg-utils
pacman -S openntpd
pacman -S bluez
pacman -S htop
pacman -S arc-gtk-theme
pacman -S lxappearance-gtk3

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# install pa-applet
yay -S pa-applet-git

# install wallpaper util
yay -S xwallpaper

git clone https://github.com/jisevereid/dotfiles.git
