#!/bin/bash
FOLDER="vm-$1"
if [ -d $FOLDER ]; then
    cd $FOLDER
    PORT=`cat port`
    touch ../ports/$PORT
    PARAMS="" vagrant destroy --force
    cd ..
    rm -rf $FOLDER
fi
