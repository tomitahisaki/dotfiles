#!/bin/bash

set -e

echo "Setting up LazyVim with dotfiles management..."

TARGET_DIR="$PWD/config/nvim"

# clone lazyvim starter if directory does not exist
  echo "Cloning LazyVim starter to $TARGET_DIR..."
  git clone https://github.com/LazyVim/starter "$PWD/config/nvim"
  rm -rf "$PWD/config/nvim/.git"
else
  echo "Directory $TARGET_DIR already exists. Skipping clone."
fi

# Create symbolic link from ~/.config/nvim to dotfiles
echo "Creating symbolic link..."
mkdir -p ~/.config
ln -sf "$PWD/config/nvim" ~/.config/nvim

echo "LazyVim setup complete!"
echo "Neovim config is now managed in: $PWD/config/nvim"
echo "Symbolic link created: ~/.config/nvim -> $PWD/config/nvim"
