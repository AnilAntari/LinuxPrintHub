#!/bin/bash

# VersaLink C8000 Color Printer, VersaLink C9000 Color Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/VLC8000/drivers/linux/ar/VersaLink_C8000_C9000_5.739.0.0_PPD.zip
mkdir VersaLink_C7000VersaLink_C8000_C9000_ppd
unzip VersaLink_C8000_C9000_5.739.0.0_PPD.zip "Linux/English/*.ppd" -d VersaLink_C8000_C9000_ppd -y
cp VersaLink_C8000_C9000_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
