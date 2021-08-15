#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# allow aliases when using sudo
alias sudo='sudo '

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

# Locale Settings
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Use bash alias file
source ~/.bash_aliases

export BROWSER=brave

