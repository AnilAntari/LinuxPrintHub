#!/usr/bin/bash

apt update && apt install dpkg-dev devscripts equivs -y

wget https://download.support.xerox.com/pub/drivers/3020/drivers/linux/en_GB/Xerox_Phaser_3020_Linux-Driver.tar.gz

tar -zxvf Xerox_Phaser_3020_Linux-Driver.tar.gz

mkdir -p xerox-phaser-3020/usr/share/ppd/xerox
mkdir -p xerox-phaser-3020/usr/lib/cups/backend
mkdir -p xerox-phaser-3020/usr/lib/cups/filter

cp uld/x86_64/libscmssc.so xerox-phaser-3020/usr/lib/
cp uld/x86_64/smfpnetdiscovery xerox-phaser-3020/usr/lib/cups/backend
cp uld/x86_64/pstosecps xerox-phaser-3020/usr/lib/cups/filter/
cp uld/x86_64/rastertospl xerox-phaser-3020/usr/lib/cups/filter

cp uld/noarch/share/ppd/*.ppd xerox-phaser-3020/usr/share/ppd/xerox/
rm xerox-phaser-3020/usr/share/ppd/xerox/*_fr.ppd
dpkg-deb --build ./xerox-phaser-3020
