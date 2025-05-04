#!/bin/zsh

set -e

# asdfから利用可能なプラグインを取得
available_plugins=$(asdf plugin list all --urls | awk '{print $1}')

echo "インストールしたいプラグイン名を入力してください (例: ruby):"
read plugin_name </dev/tty

# 入力されたプラグイン名が利用可能か確認
matched_plugin=$(echo "$available_plugins" | grep -w "$plugin_name")
git_url=$(echo "$matched_plugin" | awk '{print $2}')

if [[ -n "$matched_plugin" ]]; then
  read -p "インストールする $plugin_name のバージョンを入力してください: " version </dev/tty
  echo "$plugin_name をインストールします (バージョン: $version)..."
  asdf plugin-add "$plugin_name" "$git_url" || echo "$plugin_name プラグインは既に追加されています"
  asdf install "$plugin_name" "$version"
  asdf global "$plugin_name" "$version"
else
  echo "プラグイン '$plugin_name' は見つかりませんでした。"
fi

echo "処理が完了しました。"
