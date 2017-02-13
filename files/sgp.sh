#!/bin/bash

function sgp {
    read -srp 'Password: ' master
    local domain=$(echo $1 | tr A-Z a-z)
    local length=${2:-10}

    hash=$master:$domain

    >&2 echo ""
    >&2 bishop $(echo $master | sha512sum | cut -f1 -d ' ')

    i=0
    while true
    do
        hash=$(echo -n "$hash" | openssl md5 -binary | base64 | tr +/= 98A)
        i=$(($i + 1))
        if [ $i -lt 10 ]
        then
            continue
        fi
        valid=$(echo "${hash:0:$length}" | egrep '^[a-z]' | egrep '.[A-Z]' | egrep '.[0-9]' )
        if [ "$valid" != "" ]
        then
            break
        fi
    done
    echo ${hash:0:$length}
}

function pass {
    local domain="$1"
    local length=${2:-10}
    if [[ $(which xclip) ]]; then
        sgp $domain $length | xclip -selection clipboard
        echo "The password will be on the clipboard for 15 seconds..."
        sleep 15
        echo poff | xclip -selection clipboard
        echo "Poff!"
    else
        sgp $domain $length
    fi
}
