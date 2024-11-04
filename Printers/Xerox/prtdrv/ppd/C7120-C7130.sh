#!/bin/bash

# VersaLink C7120/C7125/C7130 Color Multifunction Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/C310/drivers/linux/ar/VersaLink_C7120_C7130_5.846.0.0_PPD.zip
mkdir VersaLink_C7120_C7130_ppd
unzip VersaLink_C7120_C7130_5.846.0.0_PPD.zip "Linux/English/*.ppd" -d VersaLink_C7120_C7130_ppd -y
cp VersaLink_C7120_C7130_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
