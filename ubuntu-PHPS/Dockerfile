from lissonpsantos2/ubuntu-16.04-basic:latest

MAINTAINER Alisson Pereira dos Santos <lissonpsantos2@gmail.com>

#IMAGE VARIABLES
ENV PROJECT_FOLDER /home/project-folder
ENV IMAGE_ALIAS PHPs
ENV SEPARATOR -
ENV INFO_IMAGE "RUN selectphp <PHP_VERSION> to choose the desired PHP version {5.6, 7.0, 7.1} \r\n RUN apachelinker <PROJECT_PUBLIC_FOLDER> to start the apache server"

#ADD PHP REPO
RUN apt-get install -y language-pack-en-base
RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php

#INSTALL PHP VERSIONS
RUN apt-get update && apt-get upgrade -y
RUN apt -y install php5.6
RUN apt -y install php7.0
RUN apt -y install php7.1

#INSTALL PHP5.6 PACKAGES
RUN apt-get -y install php5.6-mbstring
RUN apt-get -y install php5.6-xml
RUN apt-get -y install php5.6-curl
RUN apt-get -y install php5.6-mysql
RUN apt-get -y install php5.6-pgsql
RUN apt-get -y install php5.6-imagick
RUN apt-get -y install php5.6-mcrypt

#INSTALL PHP7.0 PACKAGES
RUN apt-get -y install php7.0-mbstring
RUN apt-get -y install php7.0-xml
RUN apt-get -y install php7.0-curl
RUN apt-get -y install php7.0-mysql
RUN apt-get -y install php7.0-pgsql
RUN apt-get -y install php7.0-imagick
RUN apt-get -y install php7.0-mcrypt

#INSTALL PHP7.1 PACKAGES
RUN apt-get -y install php7.1-mbstring
RUN apt-get -y install php7.1-xml
RUN apt-get -y install php7.1-curl
RUN apt-get -y install php7.1-mysql
RUN apt-get -y install php7.1-pgsql
RUN apt-get -y install php7.1-imagick
RUN apt-get -y install php7.1-mcrypt

RUN apt-get -y install libxrender1
RUN apt-get -y install libfontconfig1
RUN apt-get -y install libxtst6
RUN apt-get -y install php-mongodb
RUN apt-get -y install php-mongo

#COMPOSER INSTALL
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"

#INSTALL NPM
RUN apt-get install -y npm
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN npm install -g n
RUN npm install -g gulp
RUN n 8.*

#SELECTPHP SCRIPT
RUN curl -o /usr/local/bin/selectphp https://raw.githubusercontent.com/lissonpsantos2/dockerfiles/master/ubuntu-PHPS/selectphp.sh #redo
RUN cd /usr/local/bin/ && chmod +x selectphp

#APACHELINKER SCRIPT
RUN curl -o /usr/local/bin/apachelinker https://raw.githubusercontent.com/lissonpsantos2/dockerfiles/master/ubuntu-PHPS/apachelinker.sh #redo
RUN cd /usr/local/bin/ && chmod +x apachelinker

# APACHE CONFIG
RUN a2enmod rewrite
RUN curl -o /etc/apache2/sites-enabled/000-default.conf https://raw.githubusercontent.com/lissonpsantos2/dockerfiles/master/ubuntu-PHPS/apache.conf #redo

WORKDIR /
