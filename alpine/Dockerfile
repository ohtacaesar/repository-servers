FROM alpine:3.8

ARG ALPINE_SERVER=""

ADD alpine-mirror /etc/periodic/hourly/alpine-mirror

RUN set -eux \
    &&  if [[ -n "${ALPINE_SERVER}" ]]; then \
          sed -i "s/dl-cdn.alpinelinux.org/${ALPINE_SERVER}/" /etc/apk/repositories; \
        fi \
    &&  apk add --no-cache rsync apk-cron \
    &&  chmod +x /etc/periodic/hourly/alpine-mirror

VOLUME  /alpine

WORKDIR /alpine

CMD ["crond", "-l", "2", "-f"]
