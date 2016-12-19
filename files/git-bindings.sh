#!\bin/bash

function git-setup-windows {
    git config --local core.fileMode false
    git config --local core.ignorecase true
    git config --local core.autocrlf false
    git config --local core.pager more
    git config --local core.eol crlf
    git config --local core.editor "vim --noplugin"
    git config --local core.mergetool "vimdiff2"
}
