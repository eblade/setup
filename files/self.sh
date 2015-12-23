#!/bin/bash

PATH="$SETUP_PATH:$PATH"

function _profComplete {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls $SETUP_PATH/profiles/)" -- $cur) )
}

complete -F _profComplete prof

function _requireComplete {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls $SETUP_PATH/components/)" -- $cur) )
}

complete -F _requireComplete require
complete -F _requireComplete require-sudo
