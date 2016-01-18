#!/bin/bash

alias pt="tree -I __pycache__ -I \*.pyc -I __pycache__"
alias p.="PYTHONPATH=\$(pwd) python"
alias sa="source activate"

function _saComplete {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls $HOME/miniconda3/envs/)" -- $cur) )
}

complete -F _saComplete sa

