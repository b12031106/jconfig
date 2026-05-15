# jconfig

Personal dotfiles for shell, git, tmux, and the Joe text editor.

## What's Included

| File | Description |
|------|-------------|
| `bash_profile` | Bash config — aliases, PS1 prompt with git branch, git-completion |
| `gitconfig` | Git aliases (`co`, `ci`, `st`, `br`, `lo`, `l2`), pretty log formats, Joe as editor |
| `tmux.conf` | tmux config — prefix remapped to `Ctrl+A`, vi-style keys, custom status bar |
| `joerc` | Joe editor config (default) |
| `joerc-4.0` | Joe editor config for v4.0 |
| `joerc-4.6` | Joe editor config for v4.6 |
| `lib/git-completion.bash` | Git bash completion script |
| `install.sh` | Symlink installer script |

## Installation

```bash
git clone git@github.com:b12031106/jconfig.git
cd jconfig
./install.sh
```

The install script creates symlinks from the repo into your home directory, backing up any existing files.

## Manual Setup

For configs not yet covered by `install.sh`, copy or symlink manually:

```bash
ln -s $(pwd)/bash_profile ~/.bash_profile
ln -s $(pwd)/gitconfig ~/.gitconfig
ln -s $(pwd)/joerc ~/.joerc
```
