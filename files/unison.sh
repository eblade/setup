#!/bin/bash

export UNISON_PROFILES="$SETUP_PATH/files/unison"

_unisonComplete() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(for F in $UNISON_PROFILES/*.prf; do echo $(basename ${F%.prf}); done)" -- $cur) )
}

complete -F _unisonComplete unison
