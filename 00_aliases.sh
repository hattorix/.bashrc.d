#!/bin/bash

IS_MAC=
[[ "`uname`" = "Darwin" ]] && IS_MAC=1

# list directory
if [[ -z "$IS_MAC" ]]; then
    # for Linux
    alias ls='ls -h --color=auto --group-directories-first'
    alias ll='ls -lh'
    alias la='ll -Ah'
else
    # for Mac OS X
    alias ls='ls -hG'
    alias ll='ls -lh'
    alias la='ll -Ah'
fi
alias dir='dir -Fh'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#
alias screen='screen -R'

# move parrent directory
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# job
alias j='jobs'
alias 1='fg %1'
alias 2='fg %2'
alias 3='fg %3'
alias 4='fg %4'
alias 5='fg %5'

# 安全なファイル操作
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
