#!/bin/bash

set -e

echo "Setting up LazyVim with dotfiles management..."

# Clone LazyVim starter into dotfiles
echo "Cloning LazyVim starter to dotfiles..."
git clone https://github.com/LazyVim/starter "$PWD/config/nvim"

# Remove .git folder so you can add it to your own repo later
echo "Removing .git folder..."
rm -rf "$PWD/config/nvim/.git"

# Create symbolic link from ~/.config/nvim to dotfiles
echo "Creating symbolic link..."
mkdir -p ~/.config
ln -sf "$PWD/config/nvim" ~/.config/nvim

echo "LazyVim setup complete!"
echo "Neovim config is now managed in: $PWD/config/nvim"
echo "Symbolic link created: ~/.config/nvim -> $PWD/config/nvim"
