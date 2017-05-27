#!/bin/sh

iptables -t nat -N shadowsocks &>/dev/null
iptables -t nat -A shadowsocks -p tcp -m set --match-set china dst -j RETURN
iptables -t nat -A shadowsocks -p tcp -m set --match-set local dst -j RETURN
iptables -t nat -A shadowsocks -p tcp -m set --match-set vps dst -j RETURN
iptables -t nat -A shadowsocks -p tcp -j REDIRECT --to-port 1080

iptables -tnat -A zone_lan_prerouting -j shadowsocks