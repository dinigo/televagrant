#!/bin/bash
MACHINES=($(ls -d vm-*))
PORTS=($(ls ports))
echo "used: ${#MACHINES[@]}, available: ${#PORTS[@]}"
