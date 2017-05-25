FROM hypriot/rpi-alpine-scratch:v3.4

MAINTAINER cola <colachg@gmail.com>

RUN sed -i 's/nl.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
    echo 'http://mirrors.ustc.edu.cn/alpine/v3.4/community' >> /etc/apk/repositories && \
    apk add --update easy-rsa openvpn bash

ENV OPENVPN /etc/openvpn
ENV EASYRSA /usr/share/easy-rsa
ENV EASYRSA_PKI $OPENVPN/pki
ENV EASYRSA_VARS_FILE $OPENVPN/var

ADD https://github.com/kylemanna/docker-openvpn/tree/master/bin /usr/local/bin

RUN chmod a+x /usr/local/bin/* && \
    ln -sf /usr/share/easy-rsa/easyrsa /usr/local/bin/easyrsa

EXPOSE 1194/udp

CMD ["ovpn_run"]