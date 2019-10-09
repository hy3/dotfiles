# Source global definitions
if [ -f /etc/zshrc ]; then
	source /etc/zshrc
fi

# PATH settings
PATH=$PATH:$HOME/bin

GOPATH=$HOME/go
if [ -d $GOPATH ]; then
    export GOPATH
    PATH=$PATH:$GOPATH/bin
fi

NODEBREW_ROOT=$HOME/.nodebrew
if [ -d $NODEBREW_ROOT ]; then
    export NODEBREW_ROOT
    PATH=$NODEBREW_ROOT/current/bin:$PATH
fi

YARN_ROOT=$HOME/.yarn
if [ -d $YARN_ROOT ]; then
    export YARN_ROOT
    export YARN_CONFIG_ROOT=$HOME/.config/yarn
    PATH=$YARN_ROOT/bin:$YARN_CONFIG_ROOT/global/node_modules/.bin:$PATH
fi

PYENV_ROOT=$HOME/.pyenv
if [ -d $PYENV_ROOT ]; then
    export PYENV_ROOT
    PATH=$PATH:$PYENV_ROOT/shims
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

export PATH

# User specific aliases and functions
if [ "$(uname)" = 'Darwin' ]; then
    export LSCOLORS=gxfxcxdxbxegedabagacad
    alias ls='ls -G'
else
    eval `dircolors ~/.dir_colors`
    alias ls='ls --color=auto'
fi

[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local
