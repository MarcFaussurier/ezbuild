#!/usr/bin/env bash
chsum1=""
while [[ true ]]
do
    if [[ "$OSTYPE" == "darwin"* ]]; then
        chsum2=`find $2 $3 -type f -exec md5 {} \;`
    else
        chsum2=`find $2 $3 -type f -exec md5sum {} \;`
    fi;
    if [[ $chsum1 != $chsum2 ]] ; then
        $1
        chsum1=$chsum2
    fi
    sleep 2
done
