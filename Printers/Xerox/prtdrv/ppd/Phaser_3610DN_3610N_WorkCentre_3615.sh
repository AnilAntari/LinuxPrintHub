#!/bin/bash

# Phaser 3610DN Phaser 3610N WorkCentre 3615 

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/3610/drivers/win7/en_GB/3610-3615.PPD.en-US.exe
mkdir 3610-3615_ppd
unrar x 3610-3615.PPD.en-US.exe r *.ppd o 3610-3615_ppd -y
cp 3610-36155_ppd/*.ppd /usr/share/ppd/xerox
