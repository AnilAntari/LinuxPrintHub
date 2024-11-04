#!/bin/bash 

# XeroxColorQube8700S.ppd  XeroxColorQube8700X.ppd  XeroxColorQube8700XF.ppd  XeroxColorQube8900S.ppd  XeroxColorQube8900X.ppd

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ ! -e /usr/share/ppd/xerox ] && mkdir /usr/share/ppd/xerox

wget https://download.support.xerox.com/pub/drivers/CQ8700/drivers/win7x64/en_GB/CQ8700-8900_PPD_en.exe
mkdir ColorQube_ppd

unrar x CQ8700-8900_PPD_en.exe r *.ppd o ColorQube_ppd -y

cp ColorQube_ppd/*.ppd /usr/share/ppd/xerox
