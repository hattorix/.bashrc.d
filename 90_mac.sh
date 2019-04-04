#!/bin/bash

if [[ "$(uname)" != 'Darwin' ]]; then
    return
fi

# completion があれば読み込む
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
