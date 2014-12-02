#!/bin/bash

UUID=$1
USER=$2
PASS=$3
DOMAIN="proliant.noip.me"
PORTLIST=($(ls ports))
FOLDER="vm-$1"

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
	screen -dm PARAMS="$PORT,$USER,$PASS" vagrant up > /dev/null
	echo "$(./vagrant-info.sh) - VM available in a minute with: ssh -p $PORT ${USER}@${DOMAIN}"
    else
	echo "No free slots, try later"
    fi
else
    echo "VM already running. Can be destroyed with !dvm"
fi
