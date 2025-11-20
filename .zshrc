autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
alias nv="nvim"
alias ff="clear; fastfetch"
alias bt="bluetoothctl connect 4A:58:16:6F:A2:54"
alias btd="bluetoothctl disconnect 4A:58:16:6F:A2:54"
alias wif="nmcli device wifi rescan && nmcli device wifi connect 'moto g45'"
alias px="perplexity"

export ANDROID_HOME="$HOME/android-sdk"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$ANDROID_HOME/platform-tools/"

export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$HOME/.local/bin:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"

alias wpg="cd ~/stuff/py/wallhaven && ./walls.py"

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$HOME/.local/share/zsh_history"

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#fortune | cowsay
