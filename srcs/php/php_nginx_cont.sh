#!/bin/bash
chown -R www:www /var/lib/nginx

mkdir -p /run/nginx
chmod 755 /var/lib/nginx
chmod 755 /var/lib/nginx/tmp
/usr/bin/supervisord -c /etc/supervisord.conf
