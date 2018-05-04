#!/bin/bash

# 清除已有的
docker stop nginx
docker rm nginx
docker rmi yaoyao/nginx

# 重新生成
docker build -t yaoyao/nginx ./
