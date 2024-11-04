#!/usr/bin/bash

apt update && apt install dpkg-dev devscripts equivs -y

chmod +x ppd/*.sh
cd ppd/
./AltaLink_B8045-B8090.
./AltaLink_B8145-B8170.sh
./AltaLink_C8030-C8070.sh
./AltaLink_C8130-C8170.sh
./B1022_B1025.sh
./B305-B310-B315.sh
./C310-C315.sh
./C7120-C7130.sh
./ColorQube_9301-9303.sh
./ColorQube.sh
./ColorQube_8580_8880.sh
./Color_C60_C70.sh
./EC8036-EC8056.sh
./ED95A-ED125.sh
./Phaser_3610DN_3610N_WorkCentre_3615.sh
./Phaser_4622.sh
./Phaser_6510_WorkCentre6515.sh
./PrimeLink_B9100-B91365.sh
./PrimeLink_C9065-C9070.sh
./VersaLinkB405.sh
./VersaLinkB600-B615.sh
./VersaLinkB7125-B7135.sh
./VersaLinkC500-C605.sh
./VersaLinkC7000-C7030.sh
./VersaLinkC8000-C9000.sh
./VersaLink_B7025-B7035.sh
./VersaLink_C400-C405.sh
./WC3335_WC3345_Phaser3330.sh
./WorkCentre_5845_5855_5865_5875_5890.sh
./WorkCentre_7220_7225.sh
./WorkCentre_3655.sh
./WorkCentre_4265.sh
./WorkCentre_5945_5955.sh
./WorkCentre_6655.sh
./WorkCentre_7830_7835_7845_7855.sh
./WorkCentre_7970.sh
./WorkCentree_EC7836_EC7856.sh
./Xerox_D136.sh

cd ../
mkdir -p xerox-prtdrv/usr/share/ppd/
cp -r /usr/share/ppd/xerox/ "$(pwd)/xerox-prtdrv/usr/share/ppd"
rm -r /usr/share/ppd/xerox
dpkg-deb --build ./xerox-prtdrv
