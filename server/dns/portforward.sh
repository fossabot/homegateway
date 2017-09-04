#!/bin/sh
DNS_IP=
VPS_IP=

echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -F
iptables -t nat -F
iptables -X
iptables -P FORWARD ACCEPT

iptables -t nat -A PREROUTING -p udp --dport 15353 -j DNAT --to-destination $DNS_IP:53
iptables -t nat -A POSTROUTING -p udp -d $DNS_IP --dport 53 -j SNAT --to-source $VPS_IP