#!/bin/bash

# VersaLink B605/B615 Multifunction Printer, VersaLink B600/B610 Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/VLB600_VLB610/drivers/win10/ar/VersaLink_B600_B610_5.662.0.0_PPD_English.exe
mkdir VersaLink_B600_B610_ppd
unrar x VersaLink_B600_B610_5.662.0.0_PPD_English.exe r *.ppd o VersaLink_B600_B610_ppd -y
cp VersaLink_B600_B610_ppd/*.ppd /usr/share/ppd/xerox
