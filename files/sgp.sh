#!/bin/bash

function pass {
    PYTHONPATH="$HOME/git/supergenpass/core" python2 $HOME/git/supergenpass/core/sgp -q $1 | xclip -selection clipboard
    echo "This password will self-destruct in 10 seconds..."
    sleep 10
    echo "pooff" | xclip -selection clipboard
    echo "Pooff"
}
