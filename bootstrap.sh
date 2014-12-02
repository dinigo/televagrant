#!/bin/sh
USERNAME=$1
PASSWORD=$2
sudo useradd $USERNAME -m -G sudo
echo "$USERNAME:$PASSWORD" | sudo chpasswd
