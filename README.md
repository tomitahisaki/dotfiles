# wezterm, starship, asdf を使用した環境構築

## Mac の環境構築

このリポジトリは、Mac の初回環境構築を行うためのスクリプトと設定ファイルを提供します。以下の手順に従って環境を構築してください。

---

### 1. Homebrew のインストール

Homebrew は、Mac でソフトウェアをインストールするためのパッケージマネージャーです。

```shell
./homebrew_install.sh
```

---

### 2. 必要なパッケージのインストール

Homebrew を使用して必要なパッケージをインストールします。インストールするパッケージは `.Brewfile` に記述されています。

追加でパッケージが必要な場合は、以下のリンクから必要なパッケージを検索し、 `.Brewfile` に追加で記述してください

- [Homebrew Formulae](https://formulae.brew.sh/formula/) でインストールしたいパッケージを検索
- [Homebrew Cask](https://formulae.brew.sh/cask/) でインストールしたいアプリを検索

```shell
./install_brew_packages.sh
```

---

### 3. Peco の設定

[Peco](https://github.com/peco/peco) は、コマンドラインでインタラクティブに検索を行うためのツールです。

必要な方はインストールしてください

```shell
./peco_set_up.sh
```

---

### 4. 各種設定ファイルのコピー

以下のスクリプトを実行して、設定ファイルを適切な場所にコピーします。

#### Starship の設定

[Starship](https://starship.rs/) は、カスタマイズ可能なシェルプロンプトです。

```shell
sh ./setup_starship.sh
```

#### WezTerm の設定

[WezTerm](https://wezfurlong.org/wezterm/) は、高性能なターミナルエミュレータです。

```shell
sh ./setup_wezterm.sh
```

---

### 5. 設定ファイルの詳細

#### `wezterm.lua`

- WezTerm のカスタム設定を記述しています。
- カスタムキーバインドは `keybinds.lua` から読み込まれます。

#### `keybinds.lua`

デフォルトの設定からカスマイズしています。適宜、カスマイズしてください。

---

### 実行権限がない場合

スクリプトに実行権限がない場合は、以下のコマンドで権限を追加してください。

```shell
chmod +x <<ファイル名>>.sh
```

---

### 注意事項

- **LazyVim の環境で Copilot を使用する場合**:
  - Node.js が必要です。`asdf` を使用して Node.js をインストールしてください。

```shell
asdf install nodejs latest
```
