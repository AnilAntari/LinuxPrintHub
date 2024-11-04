#!/bin/bash

# Phaser 6510, WorkCentre 6515

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/6510/drivers/win10/ar/Phaser_6510_5.662.0.0_PPD_English.exe
mkdir Phaser_6510_ppd
unrar x Phaser_6510_5.662.0.0_PPD_English.exe r *.ppd o Phaser_6510_ppd -y
cp Phaser_6510_ppd/*.ppd /usr/share/ppd/xerox
