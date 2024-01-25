#!/bin/bash

OS=''

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ -e /etc/astra_version ] && OS=deb
[ -e /etc/altlinux-release ] && OS=rpm
[ -z OS ] && echo 'only alt and astra supported' && exit 2

apt-get update
apt-get install sane-airscan

wget https://download.support.xerox.com/pub/drivers/CQ8580/drivers/linux/pt_BR/XeroxOfficev5Pkg-Linuxx86_64-5.20.661.4684.$OS
apt-get install ./XeroxOfficev5Pkg-Linuxx86_64-5.20.661.4684.$OS

cat  << 'EOF'
The driver is installed. For further configuration, use the command:

sudo xeroxofficeprtmgr
EOF
