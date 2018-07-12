from lissonpsantos2/ubuntu-16.04-basic:latest

MAINTAINER Alisson Pereira dos Santos <lissonpsantos2@gmail.com>

#IMAGE VARIABLES
ENV PROJECT_FOLDER /home/project-folder
ENV IMAGE_ALIAS PHPs
ENV SEPARATOR -
ENV INFO_IMAGE "RUN selectphp <PHP_VERSION> to choose the desired PHP version {5.6, 7.0, 7.1, 7.2} \r\n RUN apachelinker <PROJECT_PUBLIC_FOLDER> to start the apache server"

#ADD PHP REPO
RUN apt-get install -y language-pack-en-base
RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php

#INSTALL PHP VERSIONS
RUN apt-get update && apt-get upgrade -y
RUN apt -y install php5.6
RUN apt -y install php7.0
RUN apt -y install php7.1
RUN apt -y install php7.2

#INSTALL PHP5.6 PACKAGES
RUN apt-get -y install php5.6-mbstring
RUN apt-get -y install php5.6-xml
RUN apt-get -y install php5.6-curl
RUN apt-get -y install php5.6-mysql
RUN apt-get -y install php5.6-pgsql
RUN apt-get -y install php5.6-imagick
RUN apt-get -y install php5.6-mcrypt
RUN apt-get -y install php5.6-zip

#INSTALL PHP7.0 PACKAGES
RUN apt-get -y install php7.0-mbstring
RUN apt-get -y install php7.0-xml
RUN apt-get -y install php7.0-curl
RUN apt-get -y install php7.0-mysql
RUN apt-get -y install php7.0-pgsql
RUN apt-get -y install php7.0-imagick
RUN apt-get -y install php7.0-mcrypt
RUN apt-get -y install php7.0-zip

#INSTALL PHP7.1 PACKAGES
RUN apt-get -y install php7.1-mbstring
RUN apt-get -y install php7.1-xml
RUN apt-get -y install php7.1-curl
RUN apt-get -y install php7.1-mysql
RUN apt-get -y install php7.1-pgsql
RUN apt-get -y install php7.1-imagick
RUN apt-get -y install php7.1-mcrypt

#INSTALL PHP7.2 PACKAGES
RUN apt-get -y install php7.2-mbstring
RUN apt-get -y install php7.2-xml
RUN apt-get -y install php7.2-curl
RUN apt-get -y install php7.2-mysql
RUN apt-get -y install php7.2-pgsql
RUN apt-get -y install php7.2-imagick
RUN apt-get -y install php7.2-zip

RUN apt-get -y install libxrender1
RUN apt-get -y install libfontconfig1
RUN apt-get -y install libxtst6
RUN apt-get -y install php-mongodb
RUN apt-get -y install php-mongo

#COMPOSER INSTALL
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"

RUN apt-get update

#INSTALL NPM
RUN apt-get install -y npm
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN npm install -g n
RUN npm install -g gulp
RUN npm install -g npm@latest
RUN n 8.*

#SELECTPHP SCRIPT
ADD selectphp.sh /usr/local/bin/selectphp
RUN cd /usr/local/bin/ && chmod +x selectphp

#APACHELINKER SCRIPT
ADD apachelinker.sh /usr/local/bin/apachelinker
RUN cd /usr/local/bin/ && chmod +x apachelinker

# APACHE CONFIG
RUN a2enmod rewrite
ADD apache.conf /etc/apache2/sites-enabled/000-default.conf

WORKDIR /
