#!/bin/zsh

set -e

# .Brewfileのパスを指定
BREWFILE_PATH=".Brewfile"

echo ".Brewfile からパッケージをインストールしますか？ (yes/no)"
read Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    if [ -f "$BREWFILE_PATH" ]; then
        brew bundle install --file="$BREWFILE_PATH"
    else
        echo "${BREWFILE_PATH} が存在しません"
    fi
    ;;

  n|N|no)
    echo "インストールをスキップしました" ;;
esac
