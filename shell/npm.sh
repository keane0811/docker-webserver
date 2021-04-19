#!/bin/bash

docker run --rm -it \
    -v $PWD:/home/node/app \
    -v ${COMPOSER_HOME:-$HOME/.npm}:/root \
    -w /home/node/app \
    node npm $@