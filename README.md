# dotfiles 環境構築

このリポジトリは、Mac の初回環境構築を行うための設定ファイルとスクリプトを提供します。

## 📁 リポジトリ構成

```
dotfiles/
├── .Brewfile                # Homebrew パッケージ定義
├── .gitconfig              # Git 設定
├── Makefile                # タスク実行用
├── setup_dotfiles.sh       # dotfiles セットアップスクリプト
├── homebrew_install.sh     # Homebrew インストールスクリプト
├── lazyvim_setup.sh        # LazyVim セットアップスクリプト
├── config/
│   ├── starship.toml       # Starship プロンプト設定
│   ├── nvim/              # Neovim 設定（LazyVim）
│   └── wezterm/           # WezTerm 設定
├── shell/
│   ├── zshrc              # Zsh 設定
│   └── dump.sh            # Shell 設定ダンプ
└── vscode/
    ├── settings.json       # VS Code 設定
    ├── keybindings.json   # VS Code キーバインド
    ├── sync.sh            # VS Code 設定同期
    └── dump.sh            # VS Code 設定ダンプ
```

## 🚀 セットアップ手順

### 1. リポジトリのクローン

```bash
git clone https://github.com/tomitahisaki/dotfiles.git
cd dotfiles
```

### 2. Homebrew のインストール（初回のみ）

```bash
make homebrew-install
```

### 3. dotfiles のセットアップ

```bash
make setup-dotfiles
```

### 4. LazyVim のセットアップ

```bash
make lazyvim-setup
```

### 5. Homebrew パッケージのインストール

```bash
make brew-bundle
```

### 6. VS Code 設定の同期

```bash
make setup-vscode
```

## 📋 利用可能なコマンド

### 初期セットアップ
- `make homebrew-install` - Homebrew をインストール
- `make setup-dotfiles` - dotfiles をセットアップ
- `make lazyvim-setup` - LazyVim をセットアップ

### 設定管理
- `make shell-dump` - 現在のシェル設定をダンプ

### VS Code 関連
- `make setup-vscode` - VS Code 設定を同期
- `make vscode-dump` - 現在の VS Code 設定をダンプ

### Homebrew 関連
- `make brew-bundle` - .Brewfile からパッケージをインストール
- `make brew-bundle-dump` - 現在の環境を .Brewfile にダンプ

## 🔧 主な設定内容

### ターミナル・シェル
- **Zsh** - シェル設定
- **Starship** - クロスシェルプロンプト
- **WezTerm** - ターミナルエミュレータ設定

### エディタ
- **Neovim** - LazyVim 設定
- **VS Code** - 設定とキーバインド

### 開発ツール
- **Git** - 基本設定
- **各種開発ツール** - .Brewfile で管理

## 🛠 個別セットアップ

### macOS 設定の調整

```bash
# キーリピートを有効化
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
defaults write com.googlecode.iterm2 ApplePressAndHoldEnabled -bool false
defaults write org.vim.MacVim ApplePressAndHoldEnabled -bool false
```
