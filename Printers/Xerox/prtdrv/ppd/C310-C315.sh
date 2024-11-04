#!/bin/bash

# Xerox C310 Color Printer, Xerox C315 Color Multifunction Printer 

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/B310/drivers/linux/ar/C310_C315_5.852.0.0_PPD.zip
mkdir C310_C315_ppd
unzip C310_C315_5.852.0.0_PPD.zip "Linux/English/*.ppd" -d C310_C315_ppd -y
cp C310_C315_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
