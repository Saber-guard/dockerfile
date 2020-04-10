FROM registry.cn-hangzhou.aliyuncs.com/codingwork/centos7-php7-nginx:latest
MAINTAINER zzh

#执行初始化脚本
WORKDIR /mnt/
ADD init/ /init/
RUN /bin/bash /init/init.sh

#挂载项目目录
VOLUME "f:/project/:/mnt/project/"

ENTRYPOINT ["/usr/sbin/init"]