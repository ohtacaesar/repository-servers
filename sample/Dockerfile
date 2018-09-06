FROM alpine:3.8

ARG ALPINE_SERVER=dl-cdn.alpinelinux.org

ARG PIP_TRUSTED_HOST
ARG PIP_INDEX_URL

ARG NPM_PROXY=""

RUN set -eux \
    &&  sed -i "s/dl-cdn.alpinelinux.org/${ALPINE_SERVER}/" /etc/apk/repositories \
    &&  apk add python3 nodejs-npm \
    &&  pip3 install --no-cache-dir requests \
    &&  if [[ -n "${NPM_PROXY}" ]]; then npm config set proxy       $NPM_PROXY ; fi \
    &&  if [[ -n "${NPM_PROXY}" ]]; then npm config set https-proxy $NPM_PROXY ; fi \
    &&  if [[ -n "${NPM_PROXY}" ]]; then npm config set strict-ssl  false ; fi \
    &&  npm config list \
    &&  npm install vue
