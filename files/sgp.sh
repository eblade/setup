#!/bin/bash

function pass {
    PYTHONPATH="$HOME/git/supergenpass/core" python2 $HOME/git/supergenpass/core/sgp -q $1
}

function pass15 {
    PYTHONPATH="$HOME/git/supergenpass/core" python2 $HOME/git/supergenpass/core/sgp -q -l 15 $1
}
