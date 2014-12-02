#!/bin/bash

portlist=($(ls ports))
FOLDER="vm-$1"

if [ ! -d $FOLDER ]
then
    if [ ${#portlist[@]} -ge 0 ]
    then
	PORT=${portlist[0]}
	mkdir $FOLDER
	rm ports/$PORT 
	cd $FOLDER
	echo $PORT > port
	ln ../Vagrantfile ../bootstrap.sh .
	PARAMS="$PORT,$2,$3" vagrant up
	echo "ssh ${1}@proliant.noip.me -p $PORT"
    else
	echo "No free slots, try later"
    fi
else
    echo "VM already running. Can be destroyed with !dvm"
fi
