#!/bin/bash

set -e

echo "Setting up LazyVim with dotfiles management..."

TARGET_DIR="$PWD/config/nvim"

# Check if customized config exists in dotfiles
if [ -d "$TARGET_DIR/lua" ]; then
  echo "✓ Using existing customized config from dotfiles"
else
  # First time setup: clone LazyVim starter
  # Upstream: https://github.com/LazyVim/starter
  echo "First time setup: Cloning LazyVim starter..."
  rm -rf "$TARGET_DIR"  # Remove empty directory if exists
  git clone https://github.com/LazyVim/starter "$TARGET_DIR"
  rm -rf "$TARGET_DIR/.git"
  echo ""
  echo "⚠️  IMPORTANT: Customize config/nvim and commit to dotfiles!"
  echo "   After customization, run: git add config/nvim && git commit"
fi

# Create symbolic link from ~/.config/nvim to dotfiles
echo "Creating symbolic link..."
mkdir -p ~/.config
ln -sf "$TARGET_DIR" ~/.config/nvim

echo ""
echo "✓ LazyVim setup complete!"
echo "  Config location: $TARGET_DIR"
echo "  Symbolic link: ~/.config/nvim -> $TARGET_DIR"
