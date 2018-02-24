FROM hypriot/rpi-alpine:3.6

RUN apk add --update --no-cache freeradius freeradius-mysql tini

ENTRYPOINT ["/sbin/tini","--"]
