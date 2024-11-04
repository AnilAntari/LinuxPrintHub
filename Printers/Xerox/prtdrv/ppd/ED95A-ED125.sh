#!/bin/bash

# Xerox ED95A-ED125 Copier/Printer, Xerox D95/D110/D125 Copier/Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/D95_D110_D125/drivers/win2000/en_GB/GMAH_Win-PPD_5.310.0.0_English.zip
mkdir GMAH_Win-PPD_ppd
unzip GMAH_Win-PPD_5.310.0.0_English.zip "*.ppd" -d GMAH_Win-PPD_ppd -y
cp GMAH_Win-PPD_ppd/*.ppd /usr/share/ppd/xerox
