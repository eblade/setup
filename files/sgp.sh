#!/bin/bash

function pass {
    PYTHONPATH="$HOME/git/supergenpass/core" python $HOME/git/supergenpass/core/sgp -q $1 | xclip -selection clipboard
}
