#!/bin/bash
apt-get install nginx php5-fpm

cat /etc/nginx/nginx.conf
ls /etc/nginx

cp .travis_nginx.conf /etc/nginx/nginx.conf
sed -i '' "s/%%HOME_DIRECTORY/`pwd`/" /etc/nginx/nginx.conf
cat /etc/nginx/nginx.conf
/etc/init.d/nginx restart
