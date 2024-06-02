#!/bin/zsh

set -e

echo "anyenv,rbenv,nodenvを行います"

echo "anyenvをインストールしますか？ (yes/no)"
read Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    echo "anyenvをインストールします"
    brew install anyenv
    echo 'eval "$(anyenv init -)"' >> ~/.zshrc
    anyenv install --init
    echo "exec $SHELL -l"
    echo "anyenvをインストール完了しました anyenv init で初期化してください"
    ;;

  n|N|no)
    echo "インストールをスキップしました" ;;
esac

echo "rbenvをインストールしますか？ (yes/no)"
read Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    echo "rbenvをインストールします"
    anyenv install rbenv
    echo "rbenvをインストール完了しました"
    ;;

  n|N|no)
    echo "インストールをスキップしました"
    ;;
esac

echo "nodenvをインストールしますか？ (yes/no)"
read Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    echo "nodenvをインストールします"
    anyenv install nodenv
    echo "nodenvをインストール完了しました"
    ;;

  n|N|no)
    echo "インストールをスキップしました"
    ;;
esac
