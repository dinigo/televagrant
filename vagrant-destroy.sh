#!/bin/bash
FOLDER="vm-$1"
if [ -d $FOLDER ]; then
    cd $FOLDER
    PORT=`cat port`
    touch ../ports/$PORT
    PARAMS="" vagrant destroy --force > /dev/null
    cd ..
    rm -rf $FOLDER
    echo "Destroyed ${1}'s vm"
else
    echo "VM not found"
fi
