FROM nginx:alpine

ADD rootfs/ /

WORKDIR /opt/app
