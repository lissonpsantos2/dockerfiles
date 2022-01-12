FROM php:7.4.11-apache-buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y unzip git libxrender1 libfontconfig1 nano

ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/
RUN chmod uga+x /usr/local/bin/install-php-extensions && sync

RUN install-php-extensions gd mbstring pdo_mysql zip opcache mongodb curl json intl xml bz2

RUN apt-get update
RUN apt-get install -y supervisor
RUN apt-get install -y cron
RUN apt-get install -y tzdata
RUN apt-get install -y pngquant
RUN apt-get install -y envsubst