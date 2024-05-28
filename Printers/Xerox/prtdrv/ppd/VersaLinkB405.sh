#!/bin/bash

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/VLB400/drivers/win10/ar/VersaLink_B400_5.662.0.0_PPD_English.exe
mkdir VersaLinkB405_ppd
unrar x VersaLink_B400_5.662.0.0_PPD_English.exe r *.ppd o VersaLinkB405_ppd   -y
cp VersaLinkB405_ppd/*.ppd /usr/share/ppd/xerox
