#!/bin/bash

alias pt="tree -I \"__pycache__|*.pyc|__pycache__\""
alias p.="PYTHONPATH=\$(pwd) python"
alias sa="source activate"

function _saComplete {
    local cur=${COMP_WORDS[COMP_CWORD]}
    if [[ -d "$HOME/miniconda3" ]]; then
        COMPREPLY=( $(compgen -W "$(ls $HOME/miniconda3/envs/)" -- $cur) )
    elif [[ -d "$HOME/miniconda2" ]]; then
        COMPREPLY=( $(compgen -W "$(ls $HOME/miniconda2/envs/)" -- $cur) )
    fi
}

complete -F _saComplete sa

