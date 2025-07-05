#!/bin/sh
set -eu

SOURCE_FILE="$HOME/.zshrc"
DEST_DIR="$PWD/shell"

mkdir -p "$DEST_DIR"

ln -sf "$SOURCE_FILE" "$DEST_DIR/zshrc"

echo "✅ .zshrc を $DEST_DIR にリンクしました"
