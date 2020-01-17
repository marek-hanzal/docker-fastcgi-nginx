#!/usr/bin/env sh
set -eu

envsubst '${FASTCGI}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf
cat /etc/nginx/conf.d/default.conf
exec nginx -g "daemon off;"
