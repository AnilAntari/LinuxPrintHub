#!/bin/bash

# Xerox WorkCentre 7220/7225, Xerox WorkCentre 7220i/7225i

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/WC7220_WC7225/drivers/win10/en_GB/WC72XX_5.482.0.0_PPD_en-US.exe

mkdir WC72XX_ppd
unrar x WC72XX_5.482.0.0_PPD_en-US.exe r *.ppd o WC72XX_ppd -y
cp WC72XX_ppd/*.ppd /usr/share/ppd/xerox
