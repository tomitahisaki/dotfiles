#!/bin/zsh

set -e

# settingのパスを指定
STARSHIP_SETTING="setting/starship.toml"

echo "setting/starship.toml から設定をコピーしますか？ (yes/no)"
read Answer </dev/tty
case ${Answer} in
y | Y | yes)
  if [ -f "$STARSHIP_SETTING" ]; then
    cp $STARSHIP_SETTING ~/.config/starship.toml
  else
    echo "${STARSHIP_SETTING} が存在しません"
  fi
  ;;

n | N | no)
  echo "設定の コピーをスキップしました" 
  ;;
esac
