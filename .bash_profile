# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
GOPATH=$HOME/go

if [ -d $GOPATH ]; then
    PATH=$PATH:$GOPATH/bin
    export GOPATH
fi

export NODEBREW_ROOT=$HOME/.nodebrew
if [ -d $NODEBREW_ROOT ]; then
    export PATH=$NODEBREW_ROOT/current/bin:$PATH
fi

export YARN_ROOT=$HOME/.yarn

if [ -d $YARN_ROOT ]; then
    export YARN_CONFIG_ROOT=$HOME/.config/yarn
    export PATH=$YARN_ROOT/bin:$YARN_CONFIG_ROOT/global/node_modules/.bin:$PATH
fi

export PYENV_ROOT=$HOME/.pyenv
if [ -d $PYENV_ROOT ]; then
    export PATH=$PATH:$PYENV_ROOT/shims
    eval "$(pyenv init -)"
fi

export PATH
