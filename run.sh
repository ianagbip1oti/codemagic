#!/usr/bin/env bash

set -e

image="$1"
workspace=${2-~/codemagic}

docker build -f Dockerfile.base . -t codemagic:base
docker build -f Dockerfile.$image . -t codemagic:$image

docker run -it \
  -v $workspace:/workspace \
  -v $workspace/.m2:/home/hacker/.m2 \
  --user=hacker \
  codemagic:$image
