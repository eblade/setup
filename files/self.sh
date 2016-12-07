#!/bin/bash

PATH="$SETUP_PATH:$SETUP_PATH/tools:$HOME/bin:$PATH"

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

function _checkComplete {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls $SETUP_PATH/checks/)" -- $cur) )
}

complete -F _checkComplete check

publish() {
    local FILENAME="$1"
    curl -X POST --data-binary @"$FILENAME" "https://egneblad.se/publish/$FILENAME"
}

