. ~/.bash-powerline/bash-powerline.sh

set -o vi

alias ls="ls --color"
alias gl='git log --graph --oneline --decorate --all'

export PATH="$HOME/.local/bin:$PATH"

export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git'
source "/usr/local/src/fzf/shell/completion.bash"
source "/usr/local/src/fzf/shell/key-bindings.bash"
source "$HOME/.emoji-log"
