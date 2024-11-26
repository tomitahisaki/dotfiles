# iterm prezto anyenv を使う人の Mac 環境構築

# Macの環境構築

このリポジトリは、Macの初回環境構築を行うためのスクリプトを提供します。以下のスクリプトを順番に実行してください。(必要のないものは飛ばしてください)

1. `prezto_set_up.sh`：Preztoを設定します。ターミナルのUIを変更するための設定です。

下記を42行目付近の`prompt`の前に追加すること！！

* `prompt`の前に追加しないと正しく動作しない

```
  'git' \
  'syntax-highlighting' \
  'autosuggestions' \
```

```shell
./prezto_set_up.sh
```

2. `homebrew_install.sh`：Homebrewをインストールします。Homebrewは、Macでソフトウェアをインストールするためのパッケージマネージャーです。

```shell
./homebrew_install.sh
```

3. `install_brew_packages.sh`：Homebrewを使用して必要なパッケージをインストールします。インストールするパッケージは、このスクリプトと同じディレクトリにある`.Brewfile`に記述されています。

<https://formulae.brew.sh/formula/> インストールしたいパッケージを検索

<https://formulae.brew.sh/cask/> でインストールしたいアプリを検索

```shell
./install_brew_packages.sh
```

4. `envs_set_up.sh`：anyenvからrbenv,nodenvをインストールします。

```shell
./envs_set_up.sh
```

5. `peco_set_up.sh`：Pecoを設定します。Pecoは、コマンドラインでインタラクティブに検索を行うためのツールです。

```shell
./peco_set_up.sh
```

6. `install_latest_versions.sh`：RubyとNodeの最新版をインストールし、globalに設定します。また、nodenv-yarn-install（yarnを自動的にインストールするプラグイン）もインストールします。
Macの環境によっては、最新版をインストールできない可能性があるので、注意してください。

```shell
./install_latest_versions.sh
```

各スクリプトは、それぞれ独立して実行できますが、上記の順番で実行することを推奨します。これにより、必要なソフトウェアが適切にインストールされ、設定されます。

## 実行権限がない場合

下記のコマンドで権限を追加してください

```shell
chmod +x  <<ファイル名>>.sh
```
