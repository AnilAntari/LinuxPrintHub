#!/bin/bash

OS=''

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ -e /etc/astra_version ] && OS=deb
[ -e /etc/altlinux-release ] && OS=rpm
[ -z OS ] && echo 'only alt and astra supported' && exit 2

if [ $OS == "deb" ]; then
	wget https://drivers.pantum.ru/userfiles/files/download/drive/4020/linux%E5%85%B6%E4%BB%96%E7%B3%BB%E7%BB%9F%EF%BC%88ru%EF%BC%89/pantum_1_1_101-1astra1_amd64.zip
	unzip pantum_1_1_101-1astra1_amd64.zip
	apt-get install ./pantum_1.1.101-1astra1_amd64.deb -y
	
elif [ $OS == "rpm" ]; then
	wget http://altrepo.ru/local-p10/x86_64/RPMS.local-p10/pantum-106-1.1.106-alt1.x86_64.rpm
	apt-get install ./pantum-106-1.1.106-alt1.x86_64.rpm system-config-printer -y
fi
