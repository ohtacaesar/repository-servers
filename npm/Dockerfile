FROM alpine:3.8

ARG ALPINE_SERVER=""

ARG NPM_PROXY=""

RUN set -eux \
    &&  if [[ -n "${ALPINE_SERVER}" ]]; then \
          sed -i "s/dl-cdn.alpinelinux.org/${ALPINE_SERVER}/" /etc/apk/repositories; \
        fi \
    &&  apk add --no-cache nodejs-npm \
    &&  if [[ -n "${NPM_PROXY}" ]]; then \
          npm config set proxy       $NPM_PROXY; \
          npm config set https-proxy $NPM_PROXY; \
          npm config set strict-ssl  false; \
        fi \
    &&  npm install npm-proxy-cache -g

VOLUME /npm

EXPOSE 8080

CMD ["npm-proxy-cache", "-h", "0.0.0.0", "-s", "/npm"]
