#!/bin/bash

#  WorkCentre EC7836/EC7856 

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/EC7836_EC7856/drivers/win10/en_GB/WorkCentreEC7836_5.560.0.0_PPD_English.exe
mkdir WorkCentreEC7836_ppd
unrar x WorkCentreEC7836_5.560.0.0_PPD_English.exe r *.ppd o WorkCentreEC7836_ppd -y
cp WorkCentreEC7836_ppd/*.ppd /usr/share/ppd/xerox
