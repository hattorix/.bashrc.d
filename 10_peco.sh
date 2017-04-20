#!/bin/bash

which --tty-only peco >/dev/null 2>&1
if [ $? -eq 0 ]; then
    # history を便利にする
    # - 参考: http://qiita.com/comutt/items/f54e755f22508a6c7d78
    peco-select-history() {
        declare l=$(HISTTIMEFORMAT= history | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$READLINE_LINE")
        READLINE_LINE="$l"
        READLINE_POINT=${#l}
    }
    bind -x '"\C-r": peco-select-history'
fi
