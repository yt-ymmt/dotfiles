#!/bin/bash

set -eu

THIS_DIR=$HOME/dotfiles

if [ ! -d "$THIS_DIR" ]; then
    git clone https://github.com/yt-ymmt/dotfiles.git "$THIS_DIR"
else
    echo "$THIS_DIR already downloaded. Updating..."
    cd "$THIS_DIR"
    git stash
    git checkout master
    git pull origin master
    echo
fi

cd "$THIS_DIR"

echo "start setup..."

for f in .??*
do
    [[ "$f" == ".DS_Store" ]] && continue
    [[ "$f" == ".aws" ]] && continue
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".ssh" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".secrets" ]] && continue
    [[ "$f" == ".secrets.example" ]] && continue
    [[ "$f" == ".claude" ]] && continue
    [[ "$f" == ".config" ]] && continue

    ln -snfv "$THIS_DIR/$f" ~/
done

# .config 配下のファイルを個別にリンク（~/.config 自体は置換しない）
mkdir -p ~/.config
for f in .config/*; do
    ln -snfv "$THIS_DIR/$f" ~/"$f"
done

# シークレットファイルの初期設定
if [ ! -f ~/.secrets ]; then
    cp "$THIS_DIR/.secrets.example" ~/.secrets
    echo "Created ~/.secrets from template. Please edit it with your actual tokens."
fi

# install homebrew
if ! command -v brew > /dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo
fi
brew bundle
echo

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
