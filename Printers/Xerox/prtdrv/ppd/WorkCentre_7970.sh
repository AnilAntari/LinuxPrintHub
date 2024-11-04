#!/bin/bash

# Xerox WorkCentre 7970, Xerox WorkCentre 7970i

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/WC7970/drivers/win10/bg/WC7970_5.482.0.0_PPD_en-US.exe
mkdir WC7970_ppd
unrar x WC7970_5.482.0.0_PPD_en-US.exe r *.ppd o WC7970_ppd -y
cp WC7970_ppd/*.ppd /usr/share/ppd/xerox
