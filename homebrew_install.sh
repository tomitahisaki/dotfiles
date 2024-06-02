#!/bin/zsh

set -e

echo "Macの初回環境構築を行います"

echo "Homebrewをインストールしますか？ (yes/no)"
read Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    echo "Homebrewをインストールします"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    echo "Homebrewをインストール完了しました"
    ;;

  n|N|no)
    echo "インストールをスキップしました"
    ;;
esac
