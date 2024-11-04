#!/bin/bash

# Xerox EC8036 / EC8056 Color Multifunction Printe

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/EC8036_EC8056/drivers/linux/ar/EC8036_EC8056_5.780.0.0_PPD.zip
mkdir EC8036_EC8056_ppd
unzip EC8036_EC8056_5.780.0.0_PPD.zip "Linux/English/*.ppd" -d EC8036_EC8056_ppd -y
cp EC8036_EC8056_ppd/Linux/English/*.ppd /usr/share/ppd/xerox
