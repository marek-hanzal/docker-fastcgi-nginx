FROM nginx:alpine

ENV \
    FASTCGI=fastcgi

RUN apk update && \
    apk add gettext dumb-init

ADD rootfs/ /
RUN chmod +x -R /usr/local/bin

WORKDIR /var/www

ENTRYPOINT ["dumb-init", "--"]
CMD ["docker-entrypoint.sh"]
