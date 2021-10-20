# source Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# source xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

# start window manager
exec dbus-launch --exit-with-session i3
