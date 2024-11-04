#!/bin/bash

#  AltaLink C8030 / C8035 / C8045 / C8055 / C8070 Color Multifunction Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/ALC80XX/drivers/win10/ar/AltaLink_C8030-C8070_5.643.0.0_PPD_English.exe
mkdir AltaLink_C8030-C8070_ppd
unrar x AltaLink_C8030-C8070_5.643.0.0_PPD_English.exe r *.ppd o AltaLink_C8030-C8070_ppd -y
cp AltaLink_C8030-C8070_ppd/*.ppd /usr/share/ppd/xerox
