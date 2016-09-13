
# Alias
alias l='ls -CF'

# Alt-Shift-Q = To parent directory
bind '"\eQ":"\C-a\C-k cd ..\C-j\C-l l\C-j\C-y"'

# Alt-Shift-W = Auto-complete and go to sub-directory
bind '"\eW":"\C-k\C-a cd ./\C-e\t\C-a\C-j\C-l l\C-j\C-y"'
