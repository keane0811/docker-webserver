FROM php:8.1-fpm-buster

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt-get update

## npm & yarn
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs \
    && npm config set registry=https://registry.npm.taobao.org \
    && npm install -g yarn \
    && yarn config set registry https://registry.npm.taobao.org

## Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

## 依赖
RUN apt-get install -y \
    git \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    zlib1g-dev \
    libzip-dev

RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
    && docker-php-ext-install gd \
    bcmath \
    pcntl \
    zip \
    pdo_mysql \
    mysqli \
    sockets