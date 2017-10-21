FROM hypriot/rpi-alpine:3.6

MAINTAINER Andreas Mahnke <mahnkong@gmx.de>

RUN apk update && \
    apk upgrade && \
    apk add borgbackup &&  \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["borg"]

