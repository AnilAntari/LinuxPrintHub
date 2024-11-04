#!/bin/bash

# PrimeLink B9100/B9110/B9125/B9136

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/B410/drivers/linux/ar/PrimeLink_B9100-B9136_5.957.0.0_PPD.zip
mkdir PrimeLink_B9100-B91365_ppd
unzip PrimeLink_B9100-B9136_5.957.0.0_PPD.zip "Linux/English/*.ppd" -d PrimeLink_B9100-B9136_ppd -y
cp PrimeLink_B9100-B9136_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
