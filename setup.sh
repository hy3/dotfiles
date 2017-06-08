 #!/bin/bash

dotfiles=(.vimrc .vim)

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
