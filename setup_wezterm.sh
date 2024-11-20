#!/bin/zsh

set -e

# settingのパスを指定
WEZTERM_SETTING = "./setting/wezterm.lua"
KEYBIND_SETTING = "./setting/keybinds.lua"

echo "wezterm の設定をコピーしますか？ (yes/no)"
read Answer </dev/tty
case ${Answer} in
y | Y | yes)
  if [ -f "$WEZTERM_SETTING" ]; then
    cp $WEZTERM_SETTING ~/.config/wezterm/wezterm.lua
    cp
  else
    echo "${WEZTERM_SETTING} が存在しません"
  fi
  ;;

n | N | no)
  echo "設定の コピーをスキップしました"
  ;;
esac

echo "キーバインドの設定をコピーしますか？ (yes/no)"
read Answer </dev/tty
case ${Answer} in
y | Y | yes)
  if [ -f "$KEYBIND_SETTING" ]; then
    cp $KEYBIND_SETTING ~/.config/wezterm/keybinds.lua
  else
    echo "${KEYBIND_SETTING} が存在しません"
  fi
  ;;

n | N | no)
  echo "設定の コピーをスキップしました"
  ;;
esac
