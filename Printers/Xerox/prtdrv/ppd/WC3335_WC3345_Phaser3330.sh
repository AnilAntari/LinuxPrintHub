#!/bin/bash

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/3330/drivers/win10/ar/WorkCentre3335_5.499.0.0_PPD_English.exe
mkdir WC3335_WC3345_Phaser3330_ppd
unrar x WorkCentre3335_5.499.0.0_PPD_English.exe r *.ppd o WC3335_WC3345_Phaser3330_ppd -y
cp WC3335_WC3345_Phaser3330_ppd/*.ppd /usr/share/ppd/xerox
