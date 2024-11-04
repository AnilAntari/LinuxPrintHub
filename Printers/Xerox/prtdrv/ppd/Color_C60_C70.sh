#!/bin/bash

# Xerox Color C60/C70 Integrated Color Server

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/C60_C70_DCP/drivers/win10/ar/ColorC60FFPS_5.515.0.0_PPD_English.exe
mkdir ColorC60FFPS_ppd
unrar x ColorC60FFPS_5.515.0.0_PPD_English.exe r *.ppd o ColorC60FFPS_ppd -y
cp ColorC60FFPS_ppd/*.ppd /usr/share/ppd/xerox
