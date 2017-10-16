#!/usr/bin/env bash

IFS="," read -ra PARAMS <<< "$1"
DIRDATE=`date '+%Y-%m-%d'`

if [ ! -d "$DIRDATE" ]; then
    mkdir results/$DIRDATE
fi

for i in ${PARAMS[@]}; do
    RUNDATE=`date '+%Y-%m-%d-%H%M%S'`
    bin/behat -p $i  --format-settings='{"paths": false}' >> "results/$DIRDATE/$i-$RUNDATE.txt" &
    echo "Running tests in $i"
done

