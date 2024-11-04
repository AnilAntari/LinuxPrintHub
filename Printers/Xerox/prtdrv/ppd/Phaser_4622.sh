#!/bin/bash

#  Phaser 4622

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/4622/drivers/win7/en_GB/4622_PPD_Driver_en-US.exe

mkdir 4622_ppd
unrar x 4622_PPD_Driver_en-US.exe r *.ppd o 4622_ppd -y
cp 4622_ppd/*.ppd /usr/share/ppd/xerox
