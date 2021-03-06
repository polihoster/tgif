#!/bin/bash
 
TMDIR=/tmp/ovpn
mkdir $TMDIR
cd $TMDIR

service openvpn stop
apt-get install -y wget
wget --no-check-certificate $1 -O - | tar -x
mv  $TMDIR/*.ovpn /etc/openvpn/client.conf
service openvpn start
service tgif restart
echo OK
