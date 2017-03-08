#!/bin/bash

function contains() {
    target=$1
    paths=$2
    for ((i=1;i < $#;i++)) {
        if [[ $paths[$i]* == $target ]]; then
          return 0
        fi
    }
    return 1
}

if [ -z "$1" ]; then
    echo 'Usage: gitter [-h] [-e /exclusive path1/to,/exclusive path2/to,/exclusive path3/to ] /path/to'
    exit
fi

EXECUTING_PLACE=$PWD
trap "cd $EXECUTING_PLACE && exit" {1,2,3,15}

FLAG=true
origin=$HOME
exclude_paths=[]

if [ ${1:0:1} != "-" ]; then
    origin=$1
    shift 1
    FLAG=false
fi

while getopts ":e:h" OPT ;
do
    case $OPT in
    e)
        exclude_paths=( `echo $OPTARG | tr -s ',' ' '`)
        ;;
    h)
        echo 'Usage: gitter [-h] [-e /exclusive path1/to,/exclusive path2/to,/exclusive path3/to ] /path/to'
        exit
        ;;
    esac
done
shift $(($OPTIND - 2))

if $FLAG; then
    shift 1
    origin=$1
fi

if [ ${origin:0:1} != "/" ] && [ ${origin:0:1} != "~" ]; then
    origin="$PWD/$origin"
fi

echo "Start pulling all git project in $origin."
if [ -n $exclusive_path ]; then
    echo "Exclude path: $exclude_paths"
fi

find $origin -type d -name .git | xargs -n 1 dirname | sort | while read line; do echo $line && if [ `contains $line $exclude_paths` ]; then echo "Passing..."; continue; fi  && cd $line && git pull && cd $origin; done
