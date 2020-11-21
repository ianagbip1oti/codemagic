. ~/.bash-powerline/bash-powerline.sh

set -o vi

alias ls="ls --color"

git config --global credential.helper cache

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

source "$HOME/.emoji-log"
