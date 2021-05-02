#!/bin/bash
mkdir /www
chown -R www:www /var/lib/nginx
chown -R www:www /www

# ssl
mkdir /etc/nginx/ssl
openssl req -newkey rsa:2048 -x509 -days 365 -nodes -out /etc/nginx/ssl/mvuente.pem -keyout /etc/nginx/ssl/mvuente.key -subj "/C=RU/ST=TATARSTAN/L=Kazan/O=21School/OU=mvuente/CN=mvuente.ru"
mkdir -p /run/nginx

/usr/bin/supervisord -c /etc/supervisord.conf
