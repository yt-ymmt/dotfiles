# =====================================================
# エイリアス設定
# =====================================================

alias tree="tree -NC"

# Git エイリアス
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gc="git commit -v"
alias gc!="git commit -v --amend"
alias gcmsg="git commit -m"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gcm="git checkout master"
alias gcd="git checkout develop"
alias gcp="git cherry-pick"
alias gcpa="git cherry-pick --abort"
alias gcpc="git cherry-pick --continue"
alias gd="git diff"
alias gdca="git diff --cached"
alias gdct="git describe --tags $(git rev-list --tags --max-count=1)"
alias gdt="git diff-tree --no-commit-id --name-only -r"
alias gdw="git diff --word-diff"
alias gf="git fetch"
alias gfa="git fetch --all --prune"
alias gfo="git fetch origin"

# Git ログ系エイリアス
alias gl="git pull"
alias glg="git log --stat"
alias glgp="git log --stat -p"
alias glgg="git log --graph"
alias glgga="git log --graph --decorate --all"
alias glgm="git log --graph --max-count=10"
alias glo="git log --oneline --decorate"
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog="git log --oneline --decorate --graph"
alias gloga="git log --oneline --decorate --graph --all"
alias glp="_git_log_prettily"

alias grh="git reset HEAD"
alias grhh="git reset HEAD --hard"

alias gss="git status -s"
alias gst="git status"
alias gsta="git stash save"
alias gstaa="git stash apply"
alias gstc="git stash clear"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gstp="git stash pop"
alias gsts="git stash show --text"

alias gsw="git switch"
alias gswc="git switch -c"

alias rbf="git diff staging --name-only -- \*.rb | xargs bundle exec rubocop -A"

# =====================================================
# 関数定義
# =====================================================

git_current_branch() {
  git branch --show-current
}

alias ggpull="git pull origin $(git_current_branch)"
alias ggpush="git push origin $(git_current_branch)"

# =====================================================
# PATH / 環境変数 & 初期化
# =====================================================

# Homebrew
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# hanica
export DISABLE_SPRING=true

# oke
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Hari / Warp CA
export NODE_EXTRA_CA_CERTS="$HOME/.local/share/warp/cloudflare.crt"

# =====================================================
# zsh 補完 & プラグイン
# =====================================================
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  autoload -Uz compinit && compinit
fi

# =====================================================
# バージョン管理ツール
# =====================================================

# nodenv
if command -v nodenv >/dev/null 2>&1; then
  eval "$(nodenv init - zsh)"
fi

# rbenv
if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init - zsh)"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init - zsh)"
fi

# direnv
eval "$(direnv hook zsh)"

# =====================================================
# Claude Code: Homebrew版を使う（nodenv shimに負けないように）
# =====================================================
if [ -x /opt/homebrew/bin/claude ]; then
  alias claude="/opt/homebrew/bin/claude"
elif [ -x /usr/local/bin/claude ]; then
  alias claude="/usr/local/bin/claude"
fi

# fzf シェル統合（Ctrl+R: 履歴検索, Ctrl+T: ファイル検索, Alt+C: ディレクトリ移動）
source <(fzf --zsh)

# Starship プロンプト
eval "$(starship init zsh)"

hash -r

# =====================================================
# シークレット環境変数（.secrets は .gitignore 対象）
# =====================================================
[ -f ~/.secrets ] && source ~/.secrets
