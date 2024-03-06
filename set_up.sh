set -e

echo "Macの初回環境構築を行います"

read -p "Homebrewをインストールしますか？ (yes/no)" Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    echo "Homebrewをインストールします"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Homebrewをインストール完了しました";;

  n|N|no)
    echo "インストールをスキップしました" ;;
esac

read -p "rbenvをインストールしますか？ (yes/no)" Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    echo "rbenvをインストールします"
    brew install rbenv
    echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc
    echo "rbenvをインストールしました"
    echo "現在のrbenvのバージョン: $(rbenv --version)";;

  n|N|no)
    echo "インストールをスキップしました" ;;
esac

read -p "最新版rubyバージョンをglobalに設定しますか？ (yes/no)" Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    ruby_latest=$(rbenv install -l | grep -v '[a-z]' | tail -1 | sed 's/ //g')
    rbenv install ${ruby_latest}
    rbenv global ${ruby_latest}
    rbenv rehash
    echo "globalのRubyバージョン: $(ruby -v)";;

  n|N)
    echo "インストールをスキップしました" ;;
esac

read -p "nodenvをインストールしますか？ (yes/no)" Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    echo "nodenvをインストールします"
    brew install nodenv
    echo 'eval "$(nodenv init -)"' >> ~/.zshrc
    echo "nodenvをインストールしました"
    echo "現在のnodenvのバージョン: $(nodenv --version)";;

  n|N|no)
    echo "インストールをスキップしました" ;;
esac
