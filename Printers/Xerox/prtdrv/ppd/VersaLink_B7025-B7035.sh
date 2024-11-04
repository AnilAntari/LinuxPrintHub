#!/bin/bash

# VersaLink B7025/B7030/B7035 

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/VLB70XX/drivers/linux/ar/VersaLink_B7025-B7035_5.739.0.0_PPD.zip
mkdir VersaLink_B7025-B7035_ppd
unzip VersaLink_B7025-B7035_5.739.0.0_PPD.zip "Linux/English/*.ppd" -d VersaLink_B7025-B7035_ppd -y
cp VersaLink_B7025-B7035_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
