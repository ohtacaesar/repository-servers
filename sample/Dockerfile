FROM alpine:3.8

ARG ALPINE_SERVER=""

ARG PIP_TRUSTED_HOST
ARG PIP_INDEX_URL

ARG NPM_PROXY=""

RUN set -eux \
    &&  if [[ -n "${ALPINE_SERVER}" ]]; then \
          sed -i "s/dl-cdn.alpinelinux.org/${ALPINE_SERVER}/" /etc/apk/repositories; \
        fi \
    &&  apk add python3 nodejs-npm \
    &&  pip3 install --no-cache-dir requests \
    &&  if [[ -n "${NPM_PROXY}" ]]; then \
          npm config set proxy       $NPM_PROXY; \
          npm config set https-proxy $NPM_PROXY; \
          npm config set strict-ssl  false; \
        fi \
    &&  npm install -g vue webpack
