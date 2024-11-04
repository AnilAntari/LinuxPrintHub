#!/bin/bash

# AltaLink B8145 / B8155 / B8170 Multifunction Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/ALB81XX/drivers/win10/en_GB/AltaLink_B8145-B8170_5.709.0.0_PPD.zip
mkdir AltaLink_B8145-B8170_ppd
unzip AltaLink_B8145-B8170_5.709.0.0_PPD.zip "Linux/English/*.ppd" -d AltaLink_B8145-B8170_ppd -y
cp AltaLink_B8145-B8170_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
