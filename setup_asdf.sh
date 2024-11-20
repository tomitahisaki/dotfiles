#!/bin/zsh

set -e

echo "asdfからrubyをインストールしますか？ (yes/no)"
read Answer </dev/tty
case ${Answer} in
y | Y | yes)
  asdf plugin-add ruby
  asdf install ruby latest
  asdf global ruby latest
  ;;

n | N | no)
  echo "asdfからrubyをインストールしません"
  ;;
esac

echo "asdfからnodejsをインストールしますか？ (yes/no)"
read Answer </dev/tty
case ${Answer} in
y | Y | yes)
  asdf plugin-add nodejs
  bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
  asdf install nodejs latest
  asdf global nodejs latest
  ;;

n | N | no)
  echo "asdfからnodejsをインストールしません"
  ;;
esac
