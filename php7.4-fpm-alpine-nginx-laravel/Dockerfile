FROM php:8.1.20-fpm-alpine

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions

RUN apk update --no-cache
RUN apk upgrade
RUN apk add nano tzdata pngquant supervisor zip unzip nginx

RUN install-php-extensions gd pdo_mysql mysqli zip opcache mongodb intl bz2

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

COPY zz-docker.conf /usr/local/etc/php-fpm.d/
RUN mkdir -p /run/php
RUN touch /run/php/php8.1-fpm.sock
ENV TZ=America/Bahia
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN rm -rf /var/cache/apk/*
