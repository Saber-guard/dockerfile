#!/bin/bash

set -ex

mkdir -p /mnt/data/php
mkdir -p /mnt/data/nginx
chmod -R 777 /mnt/data

#cron任务
cp /mnt/init/crontab.conf /var/spool/cron/root
chmod 644 /var/spool/cron/root
#nginx配置
rm -rf /etc/nginx/conf.d
ln -s /mnt/init/domain /etc/nginx/conf.d

#php配置
rm -f /etc/php.ini
ln -s /mnt/init/php.ini /etc/php.ini
rm -f /etc/php-fpm.conf
ln -s /mnt/init/php-fpm.conf /etc/php-fpm.conf
