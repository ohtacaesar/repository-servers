FROM alpine:3.8

ARG ALPINE_SERVER=dl-cdn.alpinelinux.org

RUN set -eux \
    &&  sed -i "s/dl-cdn.alpinelinux.org/${ALPINE_SERVER}/" /etc/apk/repositories \
    &&  apk add --no-cache python3 \
    &&  apk add --no-cache --virtual .build-deps gcc python3-dev musl-dev libffi-dev \
    &&  pip3 install devpi-server \
    &&  apk del .build-deps \
    &&  rm -rf /root/.cache

ADD entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

VOLUME /pip

WORKDIR /pip

EXPOSE 3141

CMD ["devpi-server", "--serverdir", "/pip", "--host", "0.0.0.0", "--port", "3141"]
