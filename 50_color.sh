#!/bin/bash

RPROMPT='\[\e[$[COLUMNS-$(echo -n " (\t)" | wc -c)]C\e[1;35m(\t)\e[0m\e[$[COLUMNS]D\]'
FIRST_PS1=${RPROMPT}'\[\e[0;33m\][\h:\w]\[\e[0m\]'${SCM_PS1}'\n'

if [ "${COLORTERM}" = "gnome-terminal" ]; then
    PS1=${FIRST_PS1}'${debian_chroot:+($debian_chroot)}\[\e[1;32m\]\u\[\e[0m\]\$ '
elif [ "${COLORTERM}" = "Terminal" -o "${COLORTERM}" = "truecolor" -o "${COLORTERM}" = "xfce4-terminal" ]; then
    PS1=${FIRST_PS1}'\[\e[0;32m\]\u\[\e[0m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

if [ -n "$EMACS" ]; then
    export TERM=eterm-color
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\[\033[00;32m\]$(git_branch)$(hg_branch)\[\033[00m\]\$ '
elif [ -f /usr/share/terminfo/x/xterm+256color ]; then
    # ターミナルの 256 色対応化
    export TERM=xterm-256color
fi
