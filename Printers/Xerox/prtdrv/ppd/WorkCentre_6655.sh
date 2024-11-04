#!/bin/bash

# WorkCentre 6655 WorkCentre 6655i

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/WC6655/drivers/win10/ar/WC6655_5.451.0.0_PPD_en-US.exe
mkdir WC6655_ppd
unrar x WC6655_5.451.0.0_PPD_en-US.exe r *.ppd o WC6655_ppd -y
cp WC6655_ppd/*.ppd /usr/share/ppd/xerox
