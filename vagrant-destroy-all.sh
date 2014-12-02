#!/bin/bash

MACHINES=($(ls -d vm-*))
if [ ${#MACHINES[@]} -ge 0 ]; then
    for vm in ${MACHINES[@]}; do
	cd $vm
	echo "Destroying $vm"
	PORT=`cat port`
	touch ../ports/$PORT
	PARAMS="" vagrant destroy --force
#	screen -dm PARAMS="" vagrant destroy --force > /dev/null
	cd ..
	rm -rf $vm
    done
    echo "Destroyed ${#MACHINES[@]} VMs"
else
    echo "There's no VMs to destroy"
fi
