FROM alpine:3.8

RUN apk add --no-cache rsync apk-cron

ADD alpine-mirror /etc/periodic/hourly/alpine-mirror

RUN chmod +x /etc/periodic/hourly/alpine-mirror

CMD ["crond", "-l", "2", "-f"]

