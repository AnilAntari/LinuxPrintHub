#!/bin/bash

# VersaLink B7125/B7130/B7135 Multifunction Printer 

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/C310/drivers/linux/ar/VersaLink_B7125_B7135_5.846.0.0_PPD.zip
mkdir VersaLink_B7125_B7135_ppd
unzip VersaLink_B7125_B7135_5.846.0.0_PPD.zip "Linux/English/*.ppd" -d VersaLink_B7125_B7135_ppd -y
cp VersaLink_B7125_B7135_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
