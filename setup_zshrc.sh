#!/bin/zsh

set -e

# settingのパスを指定
ZSHRC_SETTING="setting/zshrc"

echo "zshrc 設定をコピーしますか？ (yes/no)"
read Answer </dev/tty
case ${Answer} in
y | Y | yes)
  if [ -f "$ZSHRC_SETTING" ]; then
    cp $ZSHRC_SETTING ~/.zshrc
  else
    echo "${ZSHRC_SETTING} が存在しません"
  fi
  ;;

n | N | no)
  echo "設定の コピーをスキップしました"
  ;;
esac
