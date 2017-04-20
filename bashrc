#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d "${HOME}/.bashrc.d" ] ; then
    for f in "${HOME}"/.bashrc.d/*.sh; do
        [[ -r "$f" ]] && . "$f"
    done
    unset f
fi
