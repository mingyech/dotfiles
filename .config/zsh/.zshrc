HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}"/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt notify
unsetopt autocd beep extendedglob nomatch
bindkey -v
autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}"/zsh/zcompdump-$ZSH_VERSION
autoload -Uz promptinit
promptinit
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache

#lfcd
LFCD="/home/user/.config/lf/lfcd.sh"                                #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
bindkey -s '^o' 'lfcd\n'  # zsh


export BEMENU_OPTS='--nb "#002b36" --nf "#586e75" --hb "#073642" --hf "#839496" --tb "#002b36" --tf "#839496" --fb "#002b36" --ff "#839496"'

alias dotfiles='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

setopt no_complete_aliases

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

eval "$(starship init zsh)"

