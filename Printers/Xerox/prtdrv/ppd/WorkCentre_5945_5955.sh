#!/bin/bash

# WorkCentre 5945/5955 WorkCentre 5945i/5955i 

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/WC5945_WC5955/drivers/win10/ar/WC59XX_5.482.0.0_PPD_English.exe
mkdir WC59XX_ppd
unrar x WC59XX_5.482.0.0_PPD_English.exe r *.ppd o WC59XX_ppd -y
cp WC59XX_ppd/*.ppd /usr/share/ppd/xerox
