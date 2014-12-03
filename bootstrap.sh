#!/bin/sh
USERNAME=$1
PASSWORD=$2
sudo useradd --create-home --groups sudo --shell /bin/bash $USERNAME 
echo "$USERNAME:$PASSWORD" | sudo chpasswd
