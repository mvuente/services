#!/bin/bash
chown -R www:www /var/lib/nginx
chmod 755 /var/lib/nginx
chmod 755 /var/lib/nginx/tmp
mkdir -p /run/nginx
mkdir -p /var/run/php
/usr/bin/supervisord -c /etc/supervisord.conf