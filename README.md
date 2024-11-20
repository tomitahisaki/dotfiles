# Macの環境構築

このリポジトリは、Macの初回環境構築を行うためのスクリプトを提供します。以下のスクリプトを順番に実行してください。(必要のないものは飛ばしてください)

1. `homebrew_install.sh`：Homebrewをインストールします。Homebrewは、Macでソフトウェアをインストールするためのパッケージマネージャーです。

```shell
./homebrew_install.sh
```

2. `install_brew_packages.sh`：Homebrewを使用して必要なパッケージをインストールします。インストールするパッケージは、このスクリプトと同じディレクトリにある`.Brewfile`に記述されています。

<https://formulae.brew.sh/formula/> インストールしたいパッケージを検索

<https://formulae.brew.sh/cask/> でインストールしたいアプリを検索

```shell
./install_brew_packages.sh
```

3. `peco_set_up.sh`：Pecoを設定します。Pecoは、コマンドラインでインタラクティブに検索を行うためのツールです。

```shell
./peco_set_up.sh
```

4. 各セッテイングファイルのコピー

```shell script
sh ./setup_starship.sh

sh ./setup_wezterm.sh
```shell `
```

各スクリプトは、それぞれ独立して実行できますが、上記の順番で実行することを推奨します。これにより、必要なソフトウェアが適切にインストールされ、設定されます。

## 実行権限がない場合

下記のコマンドで権限を追加してください

```shell
chmod +x  <<ファイル名>>.sh
```
