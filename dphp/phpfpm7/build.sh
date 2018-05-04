#!/bin/bash

# 清除已有的
docker stop phpfpm7
docker rm phpfpm7
docker rmi yaoyao/phpfpm7 

# 重新生成
docker build -t yaoyao/phpfpm7 ./
