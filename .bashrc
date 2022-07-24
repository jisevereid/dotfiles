#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use bash alias file
source ~/.bash_aliases

export SUDO_EDITOR=nvim
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=brave
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color
export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/Programs/SimplicityStudio_v5/developer/adapter_packs/commander
export PATH=$PATH:~/Programs/flutter/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/snap/bin

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

