#!/bin/bash

# VersaLink C500 Printer, VersaLink C600 Printer, VersaLink C505 Multifunction Printer, VersaLink C605 

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/VLC500/drivers/win10/ar/VersaLink_C500_C600_5.662.0.0_PPD_English.exe
mkdir VersaLink_C500_C600_ppd
unrar x VersaLink_C500_C600_5.662.0.0_PPD_English.exe r *.ppd o VersaLink_C500_C600_ppd -y
cp VersaLink_C500_C600_ppd/*.ppd /usr/share/ppd/xerox
