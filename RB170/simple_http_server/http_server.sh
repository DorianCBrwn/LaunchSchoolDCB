#!/bin/bash

function server () {
    while true; do
        read message path version
        if [ "$message" == "GET" ]
        then
            echo "HTTP/1.1 200 OK"
        else
            echo "HTTP/1.1 400 Bad Request"
        fi
    done
}

coproc SERVER_PROCESS { server; }

netcat -lvp 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]}