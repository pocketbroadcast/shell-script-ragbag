#!/bin/bash
# repeat - mimicks csh's repeat

function usage(){
    echo "Usage: $0 n command"
}

if [ $# -le 1 ]; then
    usage;
    exit;
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]] ; then
    usage;
    exit;
fi

n=$1

shift

for i in `seq 1 $n`
do
    eval $@
done
