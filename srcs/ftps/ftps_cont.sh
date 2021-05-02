#!bin/bash
touch /var/log/vsftpd.log
mkdir /etc/vsftpd/ssl
openssl req -newkey rsa:2048 -x509 -days 365 -nodes -out /etc/vsftpd/ssl/mvuente.pem -keyout /etc/vsftpd/ssl/mvuente.key -subj "/C=RU/ST=TATARSTAN/L=Kazan/O=21School/OU=mvuente/CN=mvuente.ru"
./usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf