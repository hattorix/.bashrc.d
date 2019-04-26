#!/bin/bash

which rbenv >/dev/null 2>&1
if [ $? -eq 0 ]; then
    eval "$(rbenv init -)"
fi
