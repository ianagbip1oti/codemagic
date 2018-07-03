. ${POWERLINE_REPOSITORY_ROOT}/powerline/bindings/bash/powerline.sh

alias ls="ls --color"

for file in /etc/bash_completion.d/* ; do
  source "$file"
done
