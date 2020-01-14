FROM nginx:alpine

ADD rootfs/ /

WORKDIR /var/www
