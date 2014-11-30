#!/bin/sh

USERNAME=$1
PASSWORD=$2

sudo useradd $USERNAME
sudo passwd  $USERNAME <<EOF
$PASSWORD
$PASSWORD
EOF
gpasswd -a $USERNAME sudo
