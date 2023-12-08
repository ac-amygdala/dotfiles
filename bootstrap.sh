#!/usr/bin/env bash

cd "$(dirname "$0")"

OHMYZSH=".oh-my-zsh/"
FZF=".fzf/"


if [ ! -d "$OHMYZSH" ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git $OHMYZSH
fi

if [ ! -d "$FZF" ]; then
    git clone git@github.com:junegunn/fzf.git $FZF
fi

git pull
for f in `find . -maxdepth 1 -name '\.*' -exec basename {} \; | grep -v '\(git\|\.\|gitignore\)$'`
do
    ln -fns $PWD/$f ~/$f
done
