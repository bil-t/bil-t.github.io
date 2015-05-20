#!/bin/bash -x
apt-get update

if [ ! -d "/usr/local/p4root" ]; then
	mkdir /usr/local/p4root
	cd /usr/local/bin/
	wget -q ftp://ftp.perforce.com/perforce/r15.1/bin.linux26x86_64/p4d
	wget -q ftp://ftp.perforce.com/perforce/r15.1/bin.linux26x86_64/p4
	chmod +x p4d
	chmod +x p4
	echo 'P4PORT=tcp4:127.0.0.1:1666' >> /etc/environment
fi

