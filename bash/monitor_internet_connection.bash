#!/bin/bash


LOGFILE=$HOME/offline.csv



printf "Logging to $LOGFILE\n" 

while true; do
    wget -q --tries=2 --timeout=20 -O - http://www.google.com > /dev/null

    if [[ $? -eq 0 ]]; then :
        else echo $(date) "offline" | tee -a $HOME/offline.csv
    fi

    sleep 10
done
