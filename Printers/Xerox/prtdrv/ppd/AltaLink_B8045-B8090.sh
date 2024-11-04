#!/bin/bash

# AltaLink B8045 / B8055 / B8065 / B8075 / B8090 Multifunction Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/ALB80XX/drivers/win10/ar/AltaLink_B8045-B8090_5.643.0.0_PPD_English.exe
mkdir AltaLink_B8045-B8090_ppd
unrar x AltaLink_B8045-B8090_5.643.0.0_PPD_English.exe r *.ppd o AltaLink_B8045-B8090_ppd -y
cp AltaLink_B8045-B8090_ppd/*.ppd /usr/share/ppd/xerox
