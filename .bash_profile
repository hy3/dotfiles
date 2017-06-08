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

export PATH