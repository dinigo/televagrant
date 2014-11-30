#!/bin/bash
portlist=($(ls ports))
PORT=${portlist[0]}
FOLDER="vm-$1"
if [ ! -d $FOLDER ]; then
    mkdir $FOLDER
    rm ports/$PORT 
    cd $FOLDER
    echo $PORT > port
    ln ../Vagrantfile ../bootstrap.sh .
    PARAMS="$PORT,$1,$2" vagrant up
fi
