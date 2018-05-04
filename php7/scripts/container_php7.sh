#!/bin/bash
docker run --name php7 -p 9001:9000 -v /var/www/html:/usr/local/nginx/html --link mysql:mysql -it addcn/php7