#!/usr/bin/env bash
set -euo pipefail

target="$HOME/.config/nvim"
source_dir="$PWD/.config/nvim"

if ! git -C "$PWD" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Run this script from the dotfiles repo root." >&2
  exit 1
fi

if [ -e "$target" ] && [ ! -L "$target" ]; then
  ts=$(date +%Y%m%d-%H%M%S)
  mv "$target" "${target}-backup-$ts"
  echo "Existing ~/.config/nvim moved to ~/.config/nvim-backup-$ts"
fi

mkdir -p "$HOME/.config"
ln -sfn "$source_dir" "$target"
echo "Symlink created → $target"

if command -v nvim >/dev/null; then
  echo "Launching Neovim to install plugins…"
  nvim --headless "+Lazy! sync" +qa
fi

