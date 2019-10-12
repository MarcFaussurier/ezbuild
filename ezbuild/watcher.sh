daemon() {
    chsum1=""

    while [[ true ]]
    do
        if [[ "$OSTYPE" == "darwin"* ]]; then
            chsum2=`find src/ -type f -exec md5 {} \;`
        else
            chsum2=`find src/ -type f -exec md5sum {} \;`
        fi;
        if [[ $chsum1 != $chsum2 ]] ; then           
            compile
            chsum1=$chsum2
        fi
        sleep 2
    done
}