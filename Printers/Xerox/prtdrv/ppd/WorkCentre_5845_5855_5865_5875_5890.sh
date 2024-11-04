#!/bin/bash

#  Xerox WorkCentre 5845/5855,  Xerox WorkCentre 5865/5875/5890, Xerox WorkCentre 5865i/5875i/5890i

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/WC58XA/drivers/win10/en_GB/WC58XX_5.482.0.0_PPD_English.exe
mkdir WC58XX_ppd
unrar x WC58XX_5.482.0.0_PPD_English.exe r *.ppd o WC58XX_ppd -y
cp WC58XX_ppd/*.ppd /usr/share/ppd/xerox
