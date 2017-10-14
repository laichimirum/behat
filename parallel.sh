#!/usr/bin/env bash

IFS="," read -ra PARAMS <<< "$1"

for i in ${PARAMS[@]}; do
    d=`date '+%Y-%m-%d-%H%M%S'`
    bin/behat -p $i  --format-settings='{"paths": false}' >> "results/$i-$d.txt" &
    echo "Running tests in $i"
done

