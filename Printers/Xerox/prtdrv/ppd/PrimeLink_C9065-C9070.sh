#!/bin/bash

# PrimeLink C9065/C9070 Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/PLC9065_PLC9070/drivers/win10/ar/PrimeLink_C9065_C9070_5.699.0.0_PPD_English.exe
mkdir PrimeLink_C9065_C9070_ppd
unrar x PrimeLink_C9065_C9070_5.699.0.0_PPD_English.exe r *.ppd o PrimeLink_C9065_C9070_ppd -y
cp PrimeLink_C9065_C9070_ppd/*.ppd /usr/share/ppd/xerox
