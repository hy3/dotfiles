# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ "$(uname)" = 'Darwin' ]; then
    alias ls='ls -G'
    alias vi='vim'
else
    eval `dircolors ~/.dir_colors`
    alias ls='ls --color=auto'
fi
