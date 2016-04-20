#/bin/bash

mem() {
    local PID=$1
    
    printf "[%s] %s" "$PID" $(cat /proc/$PID/cmdline)
    printf "%-20s %s\n" "Type" "kB"
    for TYPE in Rss Shared Private Swap Pss Size Referenced; do
        MEM=$(echo 0 $(awk "/$TYPE/ {print \"+\", \$2}" /proc/$PID/smaps) | bc)
        printf "%-20s %s\n" "$TYPE" "$MEM"
    done
}
