FROM alpine:3.8

ARG ALPINE_SERVER=dl-cdn.alpinelinux.org

RUN set -eux \
    &&  sed -i "s/dl-cdn.alpinelinux.org/${ALPINE_SERVER}/" /etc/apk/repositories \
    &&  apk add --no-cache nodejs-npm \
    &&  npm install npm-proxy-cache -g

VOLUME /npm

EXPOSE 8080

CMD ["npm-proxy-cache", "-h", "0.0.0.0", "-s", "/npm"]
