# Macの環境構築

このリポジトリは、Macの初回環境構築を行うためのスクリプトを提供します。以下のスクリプトを順番に実行してください。

1. `homebrew_install.sh`：Homebrewをインストールします。Homebrewは、Macでソフトウェアをインストールするためのパッケージマネージャーです。
```shell
./homebrew_install.sh
```

2. `install_brew_packages.sh`：Homebrewを使用して必要なパッケージをインストールします。インストールするパッケージは、このスクリプトと同じディレクトリにある`.Brewfile`に記述されています。
```shell
./install_brew_packages.sh
```

3. `envs_set_up.sh`：anyenvからrbenv,nodenvをインストールします。
```shell
./envs_set_up.sh
```

4. `install_latest_versions.sh`：RubyとNodeの最新版をインストールし、globalに設定します。また、nodenv-yarn-install（yarnを自動的にインストールするプラグイン）もインストールします。
```shell
./install_latest_versions.sh
```

5. `prezto_set_up.sh`：Preztoを設定します。Preztoは、Zshの設定フレームワークで、シェルの体験を向上させます。
```shell
./prezto_set_up.sh
```

6. `peco_set_up.sh`：Pecoを設定します。Pecoは、コマンドラインでインタラクティブに検索を行うためのツールです。
```shell
./peco_set_up.sh
```

各スクリプトは、それぞれ独立して実行できますが、上記の順番で実行することを推奨します。これにより、必要なソフトウェアが適切にインストールされ、設定されます。


## 実行権限がない場合
下記のコマンドで権限を追加してください

```shell
chmod +x  sample.sh
```
