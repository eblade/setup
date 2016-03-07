#!/bin/bash

PATH="$HOME/bzr/python-tools/trunk/bin:$PATH"

function _zapComplete {
    local cur=${COMP_WORDS[COMP_CWORD]}
    if [[ -d "build" ]]; then
        COMPREPLY=( $(compgen -W "$(ls build)" -- $cur) )
    fi
}

complete -F _zapComplete zap

