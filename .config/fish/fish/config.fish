# tree
alias tree "tree -NC"

# Git
alias g 'git'

alias ga 'git add'
alias gaa 'git add --all'

alias gb 'git branch'
alias gba 'git branch -a'
alias gbd 'git branch -d'

alias gc 'git commit -v'
alias gc! 'git commit -v --amend'

alias gcb 'git checkout -b'
alias gcm 'git checkout master'
alias gcd 'git checkout develop'
alias gcmsg 'git commit -m'
alias gco 'git checkout'

alias gcp 'git cherry-pick'
alias gcpa 'git cherry-pick --abort'
alias gcpc 'git cherry-pick --continue'

alias gd 'git diff'
alias gdca 'git diff --cached'
alias gdct 'git describe --tags `git rev-list --tags --max-count=1`'
alias gdt 'git diff-tree --no-commit-id --name-only -r'
alias gdw 'git diff --word-diff'

alias gf 'git fetch'
alias gfa 'git fetch --all --prune'
alias gfo 'git fetch origin'

alias ggpull 'git pull origin (git_current_branch)'
alias ggpush 'git push origin (git_current_branch)'

alias gl 'git pull'
alias glg 'git log --stat'
alias glgp 'git log --stat -p'
alias glgg 'git log --graph'
alias glgga 'git log --graph --decorate --all'
alias glgm 'git log --graph --max-count=10'
alias glo 'git log --oneline --decorate'
alias glol "git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola "git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog 'git log --oneline --decorate --graph'
alias gloga 'git log --oneline --decorate --graph --all'
alias glp "_git_log_prettily"

alias grh 'git reset HEAD'
alias grhh 'git reset HEAD --hard'

alias gss 'git status -s'
alias gst 'git status'
alias gsta 'git stash save'
alias gstaa 'git stash apply'
alias gstc 'git stash clear'
alias gstd 'git stash drop'
alias gstl 'git stash list'
alias gstp 'git stash pop'
alias gsts 'git stash show --text'


