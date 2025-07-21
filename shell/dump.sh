#!/bin/sh
set -eu

SOURCE_FILE="$HOME/.zshrc" DEST_DIR="$(cd "$(dirname "$0")" && pwd)"
DEST_FILE="$DEST_DIR/zshrc"

mkdir -p "$DEST_DIR"

# 既存のシンボリックリンクを削除
if [ -L "$DEST_FILE" ]; then
  rm "$DEST_FILE"
fi

if [ -f "$SOURCE_FILE" ]; then
  if cmp -s "$SOURCE_FILE" "$DEST_FILE"; then
    echo "ℹ️ 変更なし: コピーをスキップしました"
  else
    cp "$SOURCE_FILE" "$DEST_FILE"
    echo "✅ .zshrc を $DEST_FILE にコピーしました"
  fi
else
  echo "❌ $SOURCE_FILE が見つかりません"
  exit 1
fi
