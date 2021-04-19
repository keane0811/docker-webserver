#!/bin/bash

docker run --rm -it \
    -v $PWD:/home/node/app \
    -v ${COMPOSER_HOME:-$HOME/.yarn}:/usr/local/share \
    -w /home/node/app \
    node yarn $@