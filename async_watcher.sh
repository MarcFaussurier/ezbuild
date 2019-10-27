#!/usr/bin/env bash
function asyncWatchFolders()
{
   chsum1=""
    while [[ true ]]
    do
        if [[ "$OSTYPE" == "darwin"* ]]; then
            chsum2=`find $2 -type f -exec md5 {} \;`
        else
            chsum2=`find $2 -type f -exec md5sum {} \;`
        fi;
        if [[ $chsum1 != $chsum2 ]] ; then
            killJob ${job1}
            async $1
            job1=${RETURN}
            chsum1=$chsum2
        fi
        sleep 2
    done
};
