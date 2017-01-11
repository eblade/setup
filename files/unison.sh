#!/bin/bash

_unisonComplete() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(for F in $HOME/.unison/*.prf; do echo $(basename ${F%.prf}); done)" -- $cur) )
}

complete -F _unisonComplete unison
