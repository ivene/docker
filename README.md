centos

docker build -t ivene/centos .


docker build -t ivene/php-fpm .


docker build -t ivene/mysql .


#Created Container
docker run --name webdatabases -p 3308:3306 -d  -v /Users/yaoyao/.webdatabases/mysql:/var/lib/mysql ivene/mysql

#
docker exec -it ID  /bin/bash

#本地连接Container 数据库
mysql -uyaoyao -h127.0.0.1 -P3308 -p123456




###源码编辑PHP太大 达到1.3G
cd docker/php7 
docker build --build-arg VER='7.1.14' -t yaoyao/php  .  

docker images

REPOSITORY          TAG                 IMAGE ID            CREATED              SIZE
yaoyao/php          latest              910b76aced2a        About a minute ago   1.3GB


docker run --name php7 -p 9001:9000 -v /Volumes/MAC-Data/DWorkSpace/wwwroot:/usr/local/nginx/html -d  -it yaoyao/php
