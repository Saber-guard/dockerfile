FROM registry.cn-hangzhou.aliyuncs.com/codingwork/centos7-php7-nginx:latest
MAINTAINER zzh

#执行初始化脚本
WORKDIR /mnt/
ADD init/ /init/
RUN /bin/bash /init/init.sh

#必须需挂载一个docker-space到/mnt/docker-space

#启动命令
ENTRYPOINT ["/usr/sbin/init"]