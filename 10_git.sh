#!/bin/bash

if [ -r /usr/share/git/completion/git-completion.bash ]; then
    . /usr/share/git/completion/git-completion.bash
    . /usr/share/git/completion/git-prompt.sh
elif [ -r /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    # for Mac OS
    . /usr/local/etc/bash_completion.d/git-completion.bash
    . /usr/local/etc/bash_completion.d/git-prompt.sh
fi

# プロンプトに git のブランチ名を表示させる
function git_branch() {
    __git_ps1 '(git:%s)'
}
SCM_PS1='\[\e[0;31m\]$(git_branch)\[\e[0m\]'
