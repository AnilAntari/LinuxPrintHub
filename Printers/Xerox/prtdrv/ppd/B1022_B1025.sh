#!/bin/bash

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/B1022_B1025/drivers/win10/ar/B1022_B1025_5.620.0.0_PPD_English.exe
mkdir B1022_B1025_ppd
unrar x B1022_B1025_5.620.0.0_PPD_English.exe r *.ppd o B1022_B1025_ppd -y
cp B1022_B1025_ppd/*.ppd /usr/share/ppd/xerox
