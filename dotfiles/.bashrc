. ~/.bash-powerline/bash-powerline.sh

set -o vi

alias ls="ls --color"
alias gl='git log --graph --oneline --decorate --all'

git config --global credential.helper cache

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
source "/usr/share/doc/fzf/examples/completion.bash"
source "/usr/share/doc/fzf/examples/key-bindings.bash"
source "$HOME/.emoji-log"
