# codemagic

This provides docker containers that will run a development environment.
It is highly opinionated towards what I like.

To run:
```bash
  > ./run.sh <environment> [<workspace>]
 ```
 
 `workspace` is optional, and will default to `~/codemagic`.
 This folder is mounted in the image under `/workspace` and should be where you store projects being worked on.
 
Supported environments can be found by checking what `Dockerfile`'s are available. e.g., `Dockerfile.java8` is used
when the environment is given as `java8`
