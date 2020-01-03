#!/bin/bash
 
TMDIR=/tmp/ovpn
mkdir $TMDIR
cd $TMDIR
 
apt-get install -y wget
wget --no-check-certificate $1 -O - | tar -x
mv  $TMDIR/*.ovpn /etc/openvpn/client.conf
service openvpn restart
echo OK
