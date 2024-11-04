#!/bin/bash

# AltaLink C8130 / C8135 / C8145 / C8155 / C8170 Color Multifunction Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/ALC81XX/drivers/win10/en_GB/AltaLink_C8130-C8170_5.709.0.0_PPD.zip
mkdir AltaLink_C8130-C8170_ppd
unzip AltaLink_C8130-C8170_5.709.0.0_PPD.zip "Linux/English/*.ppd" -d AltaLink_C8130-C8170_ppd -y
cp AltaLink_C8130-C8170_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
