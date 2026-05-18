# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## リポジトリ概要

- macOSの開発環境を管理するdotfilesリポジトリ
- シンボリックリンクで各設定ファイルをホームディレクトリに配置

## セットアップ

- `./install.sh` — リポジトリのクローン、シンボリックリンク作成、`brew bundle` の実行
- install.sh は `~/dotfiles` に配置されることを前提としている

## シェル環境

- メインシェルは **zsh**（Starship プロンプト使用）
- Starship設定: `.config/starship.toml`
- zsh-completions, zsh-autosuggestions を Homebrew 経由で利用
- fzf シェル統合有効（Ctrl+R, Ctrl+T, Alt+C）

## パッケージ管理

- `Brewfile` でHomebrew tap/formula/cask/VS Code拡張を一括管理
- パッケージ追加・削除は Brewfile を編集し `brew bundle` を実行

## 設定ファイルの追加方法

- 新しいdotfileをリポジトリルートに配置し、install.sh が自動でシンボリックリンクを作成
- `.config/` 配下の設定はディレクトリ構造ごと管理

## シークレット管理

- `~/.secrets` にトークン等の機密情報を格納（`.gitignore` 対象）
- `.zshrc` から `source ~/.secrets` で読み込み
- `.secrets.example` がテンプレートとして同梱

## セキュリティ上の注意

- `.aws/`, `.ssh/` ディレクトリは管理対象外（.gitignore + install.shで除外済み）
- 認証情報やシークレットを `.zshrc` や他の管理対象ファイルに直接記載しないこと

## バージョン管理ツール

- Node.js: nodenv
- Python: pyenv
- Ruby: rbenv
- mise: ユニバーサルバージョンマネージャー
