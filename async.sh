#!/bin/sh
RETURN=""
KILLED_ID=();
FAIL=0;

# Run the passed callback asynchronous and return its generated pid
function async() {
    # run the given function using its param
    "$@" <&0 &
    # return pid
    RETURN=$!;
};

# Pause the current thread until the given callback id finish
function await() {
    FAIL=0;
    RETURN=0;
    if [[ ! " ${KILLED_ID[@]} " =~ " ${1} " ]]; then
        echo "Now awaiting $1 ...";
        wait $1 || let "FAIL+=1";
    fi;
    if [[ ! "$FAIL" == "0" ]]; then
        RETURN=1;
    fi;
};

# Wait for all jobs to finish
function awaitAll() {
    FAIL=0;
    RETURN=0;
    for job in `ps -ax | grep " " | awk '{$1=$1};1' | cut -d' ' -f1`; do
        if [[ ! " ${KILLED_ID[@]} " =~ " ${job} " ]]; then
            echo "Now awaiting ${job} ...";
            wait ${job} || let "FAIL+=1";
        fi;
    done;
    if [[ ! "$FAIL" == "0" ]]; then
        RETURN=1;
    fi;
}

# Kill a job using its id
function killJob() {
    if [ -d "/proc/$pid" ]; then
        printf "Now killing ${1} ... \n";
        kill ${1}
    fi;
}
