#!/bin/bash

#  VersaLink C7000 Printer, VersaLink C7020/C7025/C7030 Multifunction Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/VLC7000/drivers/linux/ar/VersaLink_C7000_5.739.0.0_PPD.zip
mkdir VersaLink_C7000_ppd
unzip VersaLink_C7000_5.739.0.0_PPD.zip "Linux/English/*.ppd" -d VersaLink_C7000_ppd -y
cp VersaLink_C7000_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
