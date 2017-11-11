FROM hypriot/rpi-alpine:3.6

RUN set -xe &&\
    apk add --update --no-cache dnscrypt-proxy tini

ENTRYPOINT ["/sbin/tini","--"]
