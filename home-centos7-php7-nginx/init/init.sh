#!/bin/bash

set -ex

#cron任务

#nginx配置
rm -rf /etc/nginx/conf.d
ln -s /mnt/docker-space/domain /etc/nginx/conf.d

#php配置

