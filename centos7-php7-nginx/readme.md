## 创建网络
docker network create -d bridge my_net

## 构建镜像
docker build -t registry.cn-hangzhou.aliyuncs.com/codingwork/centos7-php7-nginx:latest .

## 实例化容器
winpty docker run -itd --rm --name centos7.php7.nginx -h centos7.php7.nginx --privileged --network my_net registry.cn-hangzhou.aliyuncs.com/codingwork/centos7-php7-nginx:latest
