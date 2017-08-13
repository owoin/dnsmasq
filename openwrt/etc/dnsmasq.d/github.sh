#!/bin/sh
wget -P /etc -O /etc/pdnsd.conf --no-check-certificate https://raw.githubusercontent.com/owoin/dnsmasq/master/openwrt/etc/pdnsd.conf \
&& wget -P /etc -O /etc/resolv.dnsmasq.conf --no-check-certificate https://raw.githubusercontent.com/owoin/dnsmasq/master/openwrt/etc/resolv.dnsmasq.conf \
&& wget -P /etc -O /etc/dnsmasq.conf --no-check-certificate https://raw.githubusercontent.com/owoin/dnsmasq/master/openwrt/etc/dnsmasq.conf \
&& wget -P /etc/dnsmasq.d/conf -O /etc/dnsmasq.d/conf/gfw.conf --no-check-certificate https://raw.githubusercontent.com/owoin/dnsmasq/master/openwrt/etc/dnsmasq.d/conf/gfw.conf \
&& wget -P /etc/dnsmasq.d/conf -O /etc/dnsmasq.d/conf/isp.conf --no-check-certificate https://raw.githubusercontent.com/owoin/dnsmasq/master/openwrt/etc/dnsmasq.d/conf/isp.conf \
&& wget -P /etc/dnsmasq.d/conf -O /etc/dnsmasq.d/conf/ad.conf --no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/dnsmasq/union.conf \
&& cat /etc/dnsmasq.d/conf/isp.conf >> /etc/dnsmasq.conf \
&& rm /etc/dnsmasq.d/conf/isp.conf \
&& killall dnsmasq && /etc/init.d/dnsmasq start \
&& /etc/init.d/pdnsd restart
