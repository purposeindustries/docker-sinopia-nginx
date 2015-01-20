#!/bin/bash

# generate cert
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/nginx.key -out /etc/nginx/nginx.crt -subj "/C=/ST=/L=/O=/CN=/"

# link to sinopia container
echo "upstream sinopia { server $SINOPIA_PORT_4873_TCP_ADDR:$SINOPIA_PORT_4873_TCP_PORT; }"> /etc/nginx/sinopia.conf

# start nginx
nginx -c /etc/nginx/nginx.conf
