#!/bin/bash
FIRST=$1
LAST=$2
PORTS_DIR="ports"

mkdir $PORTS_DIR && cd $PORTS_DI$PORTS_DIR
for (( i=$FIRST; i<$LAST; i++ ))
do
    touch $i
done
