#!/bin/bash

function pass {
    if (system("which xclip")==0); then
        PYTHONPATH="$HOME/git/supergenpass/core" python2 $HOME/git/supergenpass/core/sgp -q $1 | xclip -selection clipboard
    else
        PYTHONPATH="$HOME/git/supergenpass/core" python2 $HOME/git/supergenpass/core/sgp -q $1
    fi
}

function pass15 {
    if (system("which xclip")==0); then
        PYTHONPATH="$HOME/git/supergenpass/core" python2 $HOME/git/supergenpass/core/sgp -q -l 15 $1 | xclip -selection clipboard
    else
        PYTHONPATH="$HOME/git/supergenpass/core" python2 $HOME/git/supergenpass/core/sgp -q -l 15 $1
    fi
}
