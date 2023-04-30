#!/usr/bin/env bash

set -e

image="$1"
workspace=${2-~/codemagic}

docker build -f Dockerfile.base . -t codemagic:base
docker build -f Dockerfile.$image . -t codemagic:$image

config_args="-v $workspace/.config:/home/hacker/.config"

case $image in 
  java*)
    extra_args="-v $workspace/.m2:/home/hacker/.m2 -v $workspace/.gradle:/home/hacker/.gradle"
    ;;
  tox*)
    extra_args="-v $workspace/.pyenv/versions:/home/hacker/.pyenv/versions"
    ;;
  ruby*)
    extra_args="-v $workspace/.rbenv/versions:/home/hacker/.rbenv/versions"
    ;;
  mkdocs)
    extra_args="-p 8000:8000"
    ;;
  docker)
    extra_args="-v /var/run/docker.sock:/var/run/docker.sock"
    ;;
esac

docker run -it \
  -v $workspace:/workspace \
  -e "TERM=xterm-256color" \
  $config_args \
  $extra_args \
  --user=hacker \
  --hostname="$image.codemagic" \
  codemagic:$image
