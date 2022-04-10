#! /bin/bash
printf "Installing kali ... " >&2

echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
apt-get -y update 
apt-get -y --allow-unauthenticated install kali-archive-keyring
apt-get -y update

apt-get -y install kali-linux-everything

apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y autoremove

printf "Installing kali  Done... " >&2

shutdown now -rf
