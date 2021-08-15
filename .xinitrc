# source Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# source xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

# start window manager
exec i3
