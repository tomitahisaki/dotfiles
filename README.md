# dotfiles 環境構築

## Mac の環境構築

このリポジトリは、Mac の初回環境構築を行うための Makefile を提供します。以下の手順に従って環境を構築してください。

---

### 1. dotfiles のセットアップ

以下のコマンドを実行して、dotfiles をセットアップします。

```shell
make setup-dotfiles
```

---

### 2. VSCode の設定同期

VSCode の設定を同期するには、以下のコマンドを実行します。

```shell
make setup-vscode
```

---

### 3. VSCode の設定をダンプ

現在の VSCode の設定をダンプするには、以下のコマンドを実行します。

```shell
make vscode-dump
```

---

### 4. Homebrew のバンドル

Homebrew を使用して必要なパッケージをインストールします。以下のコマンドを使用してください。

#### 通常のバンドル

```shell
make brew-bundle
```

#### MAS アプリのバンドル

```shell
make brew-bundle-mas
```

#### Cask アプリのバンドル

```shell
make brew-bundle-cask
```

#### Taps のバンドル

```shell
make brew-bundle-taps
```

#### VSCode 用のバンドル

```shell
make brew-bundle-vscode
```

---

### 5. Homebrew の設定をダンプ

現在の Homebrew の設定をダンプするには、以下のコマンドを使用します。

#### VSCode 用の設定をダンプ

```shell
make brew-bundle-vscode-dump
```

#### 全体の設定をダンプ

```shell
make brew-bundle-dump
```
