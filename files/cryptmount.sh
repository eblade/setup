#!/bin/bash

export PATH="$HOME/git/cryptmount/bin:$PATH"
export CRYPTMOUNT_PROFILES="$SETUP_PATH/files/cryptmount"

function _cryptmountComplete {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls $CRYPTMOUNT_PROFILES)" -- $cur) )
}

complete -F _cryptmountComplete csetup
complete -F _cryptmountComplete cmount
complete -F _cryptmountComplete cumount
