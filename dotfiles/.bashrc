. ~/.bash-powerline/bash-powerline.sh

set -o vi

alias ls="ls --color"
alias gl='git log --graph --oneline --decorate --all'

git config --global credential.helper cache

export PATH="$HOME/.local/bin:$HOME/.npm-global/bin:$PATH"

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
source "/usr/local/src/fzf/shell/completion.bash"
source "/usr/local/src/fzf/shell/key-bindings.bash"
source "$HOME/.emoji-log"
