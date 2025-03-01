# dotfiles

MacBook の環境構築用 dotfiles

## セットアップ手順

1. Homebrew のインストール

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. dotfiles のクローン

```bash
git clone https://github.com/[ユーザー名]/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

3. Brewfile からパッケージをインストール

```bash
brew bundle
```

4. dotfiles のシンボリックリンクを作成

```bash
./install.sh
```

## インストールされる主なツール

### CLI ツール

- git: バージョン管理
- fish: モダンシェル
- starship: カスタマイズ可能なプロンプト
- exa: モダンな ls 代替
- bat: モダンな cat 代替
- ripgrep: 高速な検索
- fzf: ファジーファインダー

### 開発ツール

- Node.js (nodenv)
- Python (pyenv)
- Ruby (rbenv)
- MySQL
- PostgreSQL
- Docker

### アプリケーション

- Visual Studio Code
- iTerm2
- Google Chrome
- Firefox
- Slack
- Discord
- Notion
- 1Password
- Raycast
- Rectangle

## 注意事項

- インストールには時間がかかる場合があります
- App Store アプリケーションのインストールには、事前に App Store へのログインと MAS CLI ツールのインストールが必要です
- 一部のアプリケーションは初回起動時に追加の設定が必要な場合があります
