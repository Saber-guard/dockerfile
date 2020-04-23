FROM registry.cn-hangzhou.aliyuncs.com/codingwork/centos7:latest
MAINTAINER zzh

#替换yum源
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
RUN curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo
#RUN curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
#RUN curl -o /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo

#epel源
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
#RUN yum install -y epel-release 二选一

#php源
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum clean all
RUN yum makecache
RUN yum update -y

#安装依赖库
RUN yum install -y gcc gcc-c++ autoconf automake pcre pcre-devel make wget httpd-tools vim libtool openssl openssl-devel zlib zlib-devel glibc libxslt-devel gd gd-devel GeoIP GeoIP-devel epel-release libmcrypt-devel libxml2 libxml2-devel libjpeg-devel libpng-devel freetype-devel libicu.x86_64
#安装php nginx等工具
RUN yum install -y php71w php71w-bcmath php71w-cli php71w-common php71w-dba php71w-devel php71w-embedded php71w-enchant php71w-fpm php71w-gd php71w-imap php71w-interbase php71w-intl php71w-ldap php71w-mbstring php71w-mcrypt  php71w-mysqlnd php71w-odbc php71w-opcache php71w-pdo php71w-pdo_dblib php71w-pear.noarch php71w-pecl-apcu php71w-pecl-apcu-devel php71w-pecl-geoip php71w-pecl-igbinary php71w-pecl-igbinary-devel php71w-pecl-imagick php71w-pecl-imagick-devel php71w-pecl-memcached php71w-pecl-mongodb php71w-pecl-redis php71w-pecl-xdebug php71w-pgsql php71w-phpdbg php71w-process php71w-pspell php71w-recode php71w-snmp php71w-soap php71w-tidy php71w-xml php71w-xmlrpc
RUN yum install -y nginx crontabs
# supervisor

#加入开机启动
RUN systemctl enable crond
RUN systemctl enable nginx
RUN systemctl enable php-fpm

#执行初始化脚本
WORKDIR /mnt/
ADD init/ /init/
RUN /bin/bash /init/init.sh

ENTRYPOINT ["/usr/sbin/init"]
