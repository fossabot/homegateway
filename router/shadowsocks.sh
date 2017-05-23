#!/bin/sh

iptables -tnat -N shadowsocks
iptables -A shadowsocks -p tcp -m set --match-set china dst -j RETURN
iptables -A shadowsocks -p tcp -m set --match-set local dst -j RETURN
iptables -A shadowsocks -p tcp -m set --match-set vps dst -j RETURN
iptables -A shadowsocks -p tcp -j REDIRECT --to-port 1080