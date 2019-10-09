#!/bin/bash

dotfiles=(.vimrc .vim)

if [ $SHELL == '/bin/zsh' ]; then
    dotfiles+=(.zshrc)
elif [ $SHELL == '/bin/bash' ]; then
    dotfiles+=(.bash_profile)
    dotfiles+=(.bashrc)
fi

if [ "$(uname)" != 'Darwin' ]; then
    dotfiles+=(.dir_colors)
fi

basedir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

for file in ${dotfiles[@]}
do
    basefile=$basedir/$file
    targetfile=$HOME/$file
    if [ ! -e $targetfile ]; then
        ln -s $basefile $targetfile
    else
        echo "'$targetfile' already exists."
    fi
done
