#!/bin/bash

set -e

echo "Setting up LazyVim with dotfiles management..."

TARGET_DIR="$PWD/config/nvim"

# clone lazyvim starter if directory does not exist
if [ ! -d "$TARGET_DIR" ]; then
  echo "Cloning LazyVim starter to $TARGET_DIR..."
  git clone https://github.com/LazyVim/starter "$TARGET_DIR"
  rm -rf "$TARGET_DIR/.git"
else
  echo "Directory $TARGET_DIR already exists. Skipping clone."
fi

# Create symbolic link from ~/.config/nvim to dotfiles
echo "Creating symbolic link..."
mkdir -p ~/.config
ln -sf "$TARGET_DIR" ~/.config/nvim

echo "LazyVim setup complete!"
echo "Neovim config is now managed in: $TARGET_DIR"
echo "Symbolic link created: ~/.config/nvim -> $TARGET_DIR"
