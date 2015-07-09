#!/bin/bash

echo "AddType application/x-httpd-php .php" >> /etc/apache2/apache2.conf
sed -i "s/Options Indexes FollowSymLinks/Options Indexes FollowSymLinks MultiViews/g" /etc/apache2/apache2.conf

service apache2 start
tail -F /var/log/apache2/*
