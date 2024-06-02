#!/bin/zsh

set -e

echo "ruby,nodeの最新版と、nodenv-yarn-installのインストールを行います"

echo "最新版rubyバージョンをglobalに設定しますか？ (yes/no)"
read Answer < /dev/tty
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

echo  "最新版nodeバージョンをglobalに設定しますか？ (yes/no)"
read Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    node_latest=$(nodenv install -l | grep -v '[a-z]' | tail -1 | sed 's/ //g')
    nodenv install ${node_latest}
    nodenv global ${node_latest}
    nodenv rehash
    echo "globalのNodeバージョン: $(node -v)";;

  n|N)
    echo "インストールをスキップしました" ;;
esac

# nodenv-yarn-installをインストール(yarnを自動的にinstallするプラグイン) 
echo "nodenv-yarn-installをインストールしますか？ (yes/no)"
read Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    echo "nodenv-yarn-installをインストールします"
    git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)"/plugins/nodenv-yarn-install
    echo "nodenv-yarn-installをインストール完了しました";;

  n|N|no)
    echo "インストールをスキップしました" ;;
esac
