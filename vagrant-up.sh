#!/bin/bash

UUID=$1
USER=$2
PASS=$3
DOMAIN="proliant.noip.me"
PORTLIST=($(ls ports))
FOLDER="vm-$1"
info=$(./vagrant-info.sh) 
if [ ! -d $FOLDER ]
then
    if [ ${#PORTLIST[@]} -ge 0 ]
    then
	PORT=${PORTLIST[0]}
	mkdir $FOLDER
	rm ports/$PORT
	cd $FOLDER
	echo $PORT > port
	ln ../Vagrantfile ../bootstrap.sh .
        PARAMS="$PORT,$USER,$PASS" vagrant up > /dev/null
# 	screen -dmS "PARAMS=\"$PORT,$USER,$PASS\" vagrant up"
	cd ..
	echo "$info - ssh -p $PORT ${USER}@${DOMAIN}"
    else
	echo "No free slots, try later: $info"
    fi
else
    echo "VM already running. Can be destroyed with !dvm: $info"
fi
