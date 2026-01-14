# CLAUDE.md - Development Context

## Project Overview

**codemagic** is a personal Docker-based development environment builder. It provides consistent, containerized dev environments across different tech stacks. Highly opinionated and built for personal use.

## Architecture

Two-layer Docker approach:

1. **Base Layer** (`Dockerfile.base`)
   - Core tools and utilities useful across all environments
   - Shell configuration and dotfiles
   - General development tooling
   - **Rule of thumb**: If it's useful everywhere regardless of language/framework, it belongs here

2. **Environment Layers** (`Dockerfile.<env>`)
   - Language or framework-specific tools and runtimes
   - Built on top of the base image
   - No strict conventions - whatever feels right for that environment

## Usage

Run with `./run.sh <env> [workspace]`. The workspace directory (default `~/codemagic`) mounts to `/workspace` in the container where project code lives.
