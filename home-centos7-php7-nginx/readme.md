## 创建网络
docker network create -d bridge my_net

## 构建镜像
docker build -t registry.cn-hangzhou.aliyuncs.com/codingwork/home-centos7-php7-nginx:latest .

## 实例化容器
winpty docker run -itd --name home.project.space -h home.project.space --privileged -v f:/project/:/mnt/project/ -p 80:80 --network my_net registry.cn-hangzhou.aliyuncs.com/codingwork/home-centos7-php7-nginx
