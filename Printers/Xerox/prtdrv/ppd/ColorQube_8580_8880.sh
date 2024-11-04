#!/bin/bash

# ColorQube 8580DN ColorQube 8580N ColorQube 8880DN

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/CQ8580/drivers/win7/en_GB/CQ8580-CQ8880_PPD_en-US.exe
mkdir CQ8580-CQ8880_ppd
unrar x CQ8580-CQ8880_PPD_en-US.exe r *.ppd o CQ8580-CQ8880_ppd -y
cp CQ8580-CQ8880_ppd/*.ppd /usr/share/ppd/xerox
