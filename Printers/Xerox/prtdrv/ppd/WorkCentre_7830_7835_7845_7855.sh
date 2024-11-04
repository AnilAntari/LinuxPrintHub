#!/bin/bash

# Xerox WorkCentre 7830/7835/7845/7855, Xerox WorkCentre 7830i/7835i/7845i/7855i

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/WC780XI/drivers/win10/ar/WC78XX_5.482.0.0_PPD_English.exe

mkdir WC78XX_ppd
unrar x WC78XX_5.482.0.0_PPD_English.exe r *.ppd o WC78XX_ppd -y
cp WC78XX_ppd/*.ppd /usr/share/ppd/xerox
