#!/bin/bash

#  Xerox B305/B310/B315 Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/B310/drivers/linux/ar/B305_B315_5.852.0.0_PPD.zip
mkdir B305_B315_ppd
unzip B305_B315_5.852.0.0_PPD.zip "Linux/English/*.ppd" -d B305_B315_ppd -y
cp B305_B315_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
