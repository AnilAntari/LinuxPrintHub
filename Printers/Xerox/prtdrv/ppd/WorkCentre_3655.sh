#!/bin/bash

# XeroxWorkCentre3655S XeroxWorkCentre3655X WorkCentre 3655i

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/WC3655/drivers/win10/ar/WC3655_5.482.0.0_PPD_en-US.exe

mkdir WC3655_ppd
unrar x WC3655_5.482.0.0_PPD_en-US.exe r *.ppd o WC3655_ppd -y
cp WC3655_ppd/*.ppd /usr/share/ppd/xerox
