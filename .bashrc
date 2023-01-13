# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=2000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [[ $OSTYPE == darwin* ]]; then
  . ~/.bashrc_mac
else
  . ~/.bashrc_ubuntu
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

export NO_PRY="true"

export PATH="./.binstubs:./bin:$PATH"

export EDITOR="vim"
#source ~/.bash-powerline.sh
export USER=akliuchnikau
eval $(/usr/libexec/path_helper -s)
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home'

# better put rbenv last
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

. ~/.bashrc_gitignored

export LC_ALL=en_US.UTF-8

export BASH_SILENCE_DEPRECATION_WARNING=1

# Homebrew path
export PATH="/opt/homebrew/bin:$PATH"
