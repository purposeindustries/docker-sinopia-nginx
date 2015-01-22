#!/bin/bash

# link to sinopia container
echo "upstream sinopia { server $SINOPIA_PORT_4873_TCP_ADDR:$SINOPIA_PORT_4873_TCP_PORT; }"> /etc/nginx/sinopia.conf

# start nginx
nginx -c /opt/sinopia/nginx.conf
