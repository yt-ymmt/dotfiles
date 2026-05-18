# dotfiles

MacBook の環境構築用 dotfiles

## セットアップ手順

1. Homebrew のインストール

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. dotfiles のクローン

```bash
git clone https://github.com/yt-ymmt/dotfiles.git ~/dotfiles
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

5. シークレット環境変数の設定

```bash
# install.sh が ~/.secrets を自動作成するので、実際の値を設定する
vim ~/.secrets
```

## インストールされる主なツール

### CLI ツール

- git: バージョン管理
- starship: カスタマイズ可能なプロンプト
- eza: モダンな ls 代替
- bat: モダンな cat 代替
- ripgrep: 高速な検索
- fzf: ファジーファインダー
- direnv: ディレクトリ単位の環境変数管理
- tmux: ターミナルマルチプレクサ

### 開発ツール

- Node.js (nodenv)
- Python (pyenv)
- Ruby (rbenv)
- mise: ユニバーサルバージョンマネージャー
- MySQL
- PostgreSQL
- Docker (Colima)
- Terraform / OpenTofu

### アプリケーション

- Visual Studio Code
- Cursor
- Ghostty
- Google Chrome
- Firefox
- Arc
- Discord
- Notion
- 1Password
- Raycast
- Claude

## 注意事項

- インストールには時間がかかる場合があります
- App Store アプリケーションのインストールには、事前に App Store へのログインが必要です
- 一部のアプリケーションは初回起動時に追加の設定が必要な場合があります
- `.secrets` ファイルにトークン等の機密情報を設定してください（git管理対象外）
