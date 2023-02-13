#!/bin/bash

# --user=root ---> podmanuser actually
# /usr/bin/mysqld_safe --user=root &
/usr/bin/mysqld_safe --user=root --skip-grant-tables &

cd /var/www/html/public
nohup php -S 0.0.0.0:9000 &
