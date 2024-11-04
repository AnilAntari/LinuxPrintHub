#!/bin/bash

#  WorkCentre 4265

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/WC4265/drivers/win7/en_GB/WC4265_PPD_en-US.exe
mkdir WC4265_ppd
unrar x WC4265_PPD_en-US.exe r *.ppd o WC4265_ppd -y
cp WC4265_ppd/*.ppd /usr/share/ppd/xerox
