#!/bin/sh
wget -P /etc -O /etc/pdnsd.conf --no-check-certificate https://gitlab.com/owoin/dnsmasq/raw/master/openwrt/etc/pdnsd.conf \
&& wget -P /etc -O /etc/resolv.dnsmasq.conf --no-check-certificate https://gitlab.com/owoin/dnsmasq/raw/master/openwrt/etc/resolv.dnsmasq.conf \
&& wget -P /etc -O /etc/dnsmasq.conf --no-check-certificate https://gitlab.com/owoin/dnsmasq/raw/master/openwrt/etc/dnsmasq.conf \
&& wget -P /etc/dnsmasq.d/conf -O /etc/dnsmasq.d/conf/gfw.conf --no-check-certificate https://gitlab.com/owoin/dnsmasq/raw/master/openwrt/etc/dnsmasq.d/conf/gfw.conf \
&& wget -P /etc/dnsmasq.d/conf -O /etc/dnsmasq.d/conf/ad.conf --no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/dnsmasq/union.conf \
&& wget -P /etc/dnsmasq.d/conf -O /etc/dnsmasq.d/conf/ip.conf --no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/dnsmasq/ip.conf \
\
&& /etc/init.d/dnsmasq stop & /etc/init.d/dnsmasq start \
&& /etc/init.d/pdnsd restart
