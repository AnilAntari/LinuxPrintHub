#!/bin/bash

# Xerox D136 Copier/Printer and D136 Printer

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/D136/drivers/win2000/en_GB/D136_PPD_en-US.exe
mkdir D136_ppd
unrar x D136_PPD_en-US.exe r *.ppd o D136_ppd -y
cp D136_ppd/*.ppd /usr/share/ppd/xerox
