# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
eval "$(fzf --bash)"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk"
export PATH="$PATH:$JAVA_HOME/bin"
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/emulator"
export ANDROID_AVD_HOME="$HOME/.config/.android/avd"

# Make an alias for invoking commands you use constantly
# alias p='python'
alias fastfetch="clear; ~/.config/fastfetch/ffetch_wrapper.sh"
alias lv='nvim $(fzf -m --preview="bat --color=always {}")'
alias expac="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20"
alias icat="clear; kitty +kitten icat"
alias bashrc="clear; source ~/.bashrc"
alias duf="clear; duf"
alias update="sudo pacman -Syu -y; yay -y"
alias jmeterShutdown="/opt/jmeter/bin/shutdown.sh"

. "$HOME/.local/share/../bin/env"

fastfetch
