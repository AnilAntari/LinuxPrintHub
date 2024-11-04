#!/bin/bash

# VersaLink C405 Color Multifunction Printer, VersaLink C400 Color Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/VLC400/drivers/win10/ar/VersaLink_C400_5.662.0.0_PPD_English.exe
mkdir VersaLink_C400_ppd
unrar x VersaLink_C400_5.662.0.0_PPD_English.exe r *.ppd o VersaLink_C400_ppd -y
cp VersaLink_C400_ppd/*.ppd /usr/share/ppd/xerox
