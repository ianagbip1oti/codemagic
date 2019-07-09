. ~/.bash-powerline/bash-powerline.sh

set -o vi

alias ls="ls --color"

git config --global credential.helper cache

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

source "/usr/local/src/fzf/shell/completion.bash"
source "/usr/local/src/fzf/shell/key-bindings.bash"

