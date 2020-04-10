#!/bin/bash

set -ex

mkdir -p /mnt/data/php
mkdir -p /mnt/data/nginx
chmod -R 777 /mnt/data

#cron任务
cp /init/crontab.conf /var/spool/cron/root
chmod 644 /var/spool/cron/root
#nginx配置
rm -f /etc/nginx/nginx.conf
cp  /init/nginx.conf /etc/nginx/nginx.conf

#php配置
rm -f /etc/php.ini
cp  /init/php.ini /etc/php.ini
rm -f /etc/php-fpm.conf
cp  /init/php-fpm.conf /etc/php-fpm.conf