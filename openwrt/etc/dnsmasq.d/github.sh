#!/bin/sh
wget -P /etc -O /etc/pdnsd.conf --no-check-certificate https://raw.githubusercontent.com/owoin/OpenWrt/master/etc/pdnsd.conf & \
wget -P /etc -O /etc/resolv.dnsmasq.conf --no-check-certificate https://raw.githubusercontent.com/owoin/OpenWrt/master/etc/resolv.dnsmasq.conf & \
wget -P /etc -O /etc/dnsmasq.conf --no-check-certificate https://raw.githubusercontent.com/owoin/OpenWrt/master/etc/dnsmasq.conf & \
wget -P /etc/dnsmasq.d/conf -O /etc/dnsmasq.d/conf/gfw.conf --no-check-certificate https://raw.githubusercontent.com/owoin/OpenWrt/master/etc/dnsmasq.d/conf/gfw.conf
/etc/init.d/dnsmasq stop & /etc/init.d/dnsmasq start
/etc/init.d/pdnsd restart
