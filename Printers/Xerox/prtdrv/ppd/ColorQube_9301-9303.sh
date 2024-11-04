#!/bin/bash

# ColorQube 9301/9302/9303

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/CQ930X/drivers/win7/en_GB/CQ930X_PPD_en-US.exe
mkdir CQ930X_PPD_ppd
unrar x CQ930X_PPD_en-US.exe r *.ppd o CQ930X_PPD_ppd -y
cp CQ930X_PPD_ppd/*.ppd /usr/share/ppd/xerox
