#!/bin/sh
set -eu

SOURCE_DIR="$HOME/Library/Application Support/Code/User"
DEST_DIR="$PWD/vscode"

mkdir -p "$DEST_DIR"

ln -sf "$SOURCE_DIR/settings.json" "$DEST_DIR/settings.json"
ln -sf "$SOURCE_DIR/keybindings.json" "$DEST_DIR/keybindings.json"

echo "✅ VSCode 設定を $DEST_DIR にコピーしました"
