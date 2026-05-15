#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$REPO_DIR/$1"
  local dst="$HOME/$2"

  if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then
    echo "  skip  $dst (already linked)"
    return
  fi

  if [ -e "$dst" ] || [ -L "$dst" ]; then
    mv "$dst" "${dst}.bak"
    echo "  backup $dst -> ${dst}.bak"
  fi

  ln -s "$src" "$dst"
  echo "  link  $src -> $dst"
}

echo "==> Installing tmux config"
link tmux.conf .tmux.conf

echo "Done."
