#!/bin/bash

OS=''

[ $EUID -ne 0 ] && echo 'need root' && exit 1
[ -e /etc/altlinux-release ] && OS=rpm
[ -z OS ] && echo 'only alt supported' && exit 2
	
elif [ $OS == "rpm" ]; then
	wget http://altrepo.ru/local-p10/x86_64/RPMS.local-p10/pantum-106-1.1.106-alt1.x86_64.rpm
	apt-get install ./pantum-106-1.1.106-alt1.x86_64.rpm system-config-printer -y
fi
