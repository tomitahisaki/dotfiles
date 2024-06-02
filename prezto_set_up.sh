#!/bin/zsh

set -e

echo "preztoのインストールをしますか？ (yes/no)"
read Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    echo "preztoのインストールをします"
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    echo "preztoのインストールが完了しました"
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
    ;;

  n|N|no)
    echo "インストールをスキップしました"
    ;;
esac

