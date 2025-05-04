#!/bin/zsh

set -e

# settingのパスを指定
WEZTERM_SETTING="./setting/wezterm.lua"
KEYBIND_SETTING="./setting/keybinds.lua"

# 設定ファイルをコピーする関数
copy_setting() {
  local source_file=$1
  local target_file=$2
  local description=$3

  # ホームディレクトリの(~)をフルパス($HOME)にしないと正しくパスが解決されないため
  target_file=${target_file/#\~/$HOME}

  echo "${description} をコピーしますか？ (yes/no)"
  read Answer </dev/tty
  case ${Answer} in
  y | Y | yes)
    if [ -f "$source_file" ]; then
      cp "$source_file" "$target_file"
      echo "${description} をコピーしました: $target_file"
    else
      echo "${source_file} が存在しません"
    fi
    ;;
  n | N | no)
    echo "${description} のコピーをスキップしました"
    ;;
  *)
    echo "無効な入力です。スキップします。"
    ;;
  esac
}

# wezterm の設定をコピー
copy_setting "$WEZTERM_SETTING" "~/.config/wezterm/wezterm.lua" "wezterm の設定"

# キーバインドの設定をコピー
copy_setting "$KEYBIND_SETTING" "~/.config/wezterm/keybinds.lua" "キーバインドの設定"
