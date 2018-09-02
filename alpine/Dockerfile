FROM alpine:3.8

ADD alpine-mirror /etc/periodic/hourly/alpine-mirror

RUN set -eux \
    &&  apk add --no-cache rsync apk-cron \
    &&  chmod +x /etc/periodic/hourly/alpine-mirror

VOLUME  /alpine

WORKDIR /alpine

CMD ["crond", "-l", "2", "-f"]
