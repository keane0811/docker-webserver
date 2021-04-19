#!/bin/bash

# 启用持久性缓存或共享全局配置
docker run --rm -it \
    -v $PWD:/app \
    -v ${COMPOSER_HOME:-$HOME/.composer}:/tmp \
    composer $@