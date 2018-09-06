FROM alpine:3.8

ARG ALPINE_SERVER=dl-cdn.alpinelinux.org

ARG PIP_TRUSTED_HOST
ARG PIP_INDEX_URL

RUN set -eux \
    &&  sed -i "s/dl-cdn.alpinelinux.org/${ALPINE_SERVER}/" /etc/apk/repositories \
    &&  apk add python3 \
    &&  pip3 install --no-cache-dir requests
