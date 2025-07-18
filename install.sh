#!/bin/bash

set -e

echo "Setting up dotfiles..."

# シンボリックリンクを作成
ln -sf "$PWD/shell/zshrc" ~/.zshrc
ln -sf "$PWD/config/starship.toml" ~/.config/starship.toml
ln -sf "$PWD/config/wezterm/wezterm.lua" ~/.config/wezterm/wezterm.lua
ln -sf "$PWD/config/wezterm/keybinds.lua" ~/.config/wezterm/keybinds.lua
ln -sf "$PWD/config/nvim/lua/config/autocmds.lua" ~/.config/nvim/lua/config/autocmds.lua
ln -sf "$PWD/.gitconfig" ~/.gitconfig

# Homebrew パッケージのインストール
if command -v brew >/dev/null 2>&1; then
  brew bundle --file=.Brewfile
else
  echo "Homebrew not found. Please install Homebrew first."
fi

echo "Dotfiles setup complete!"
