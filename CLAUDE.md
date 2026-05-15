# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal dotfiles repository containing configuration files for shell, git, tmux, and the Joe text editor. Files are meant to be symlinked or copied to `~/` on target machines.

## Repository Structure

- `bash_profile` — Bash shell config (aliases, PS1 prompt with git branch, git-completion loading)
- `gitconfig` — Git config (aliases: co/ci/st/br/lo/l2, pretty log formats, Joe as core editor)
- `tmux.conf` — tmux config (prefix remapped to `Ctrl+A`, vi-style keys, custom status bar)
- `joerc`, `joerc-4.0`, `joerc-4.6` — Joe editor configs for different versions
- `lib/git-completion.bash` — Git bash completion script

## Conventions

- Git commit messages use `[tool]` prefix format, e.g. `[tmux] modify ...`, `[joe] add ...`, `[git] ...`, `[bash] ...`.
- Newer Joe configs use version-suffixed filenames (`joerc-4.0`, `joerc-4.6`).
