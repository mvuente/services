#!/bin/bash
rc default
/etc/init.d/mariadb setup
rc-service mariadb start

#mysql
# mariadb operations
echo "CREATE DATABASE mybase;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON mybase.* TO 'root'@'%' IDENTIFIED BY 'password';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
mysql --user=root --password=password mybase < /tmp/mybase.sql
rc-service mariadb stop

cd /usr ; /usr/bin/mysqld_safe --datadir='/var/lib/mysql'
