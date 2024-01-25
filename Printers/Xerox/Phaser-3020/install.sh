#!/bin/bash

wget https://download.support.xerox.com/pub/drivers/3020/drivers/linux/en_GB/Xerox_Phaser_3020_Linux-Driver.tar.gz

tar -zxvf Xerox_Phaser_3020_Linux-Driver.tar.gz

cp uld/x86_64/libscmssc.so /usr/lib/
cp uld/x86_64/smfpnetdiscovery /usr/lib/cups/backend
cp uld/x86_64/pstosecps /usr/lib/cups/filter/
cp uld/x86_64/rastertospl /usr/lib/cups/filter

mkdir /usr/share/ppd/xerox/
cp uld/noarch/share/ppd/*.ppd /usr/share/ppd/xerox/
rm /usr/share/ppd/xerox/*_fr.ppd
