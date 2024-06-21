FROM lissonpsantos2/ubuntu-20.04-basic:latest

LABEL authors="Alisson Pereira dos Santos <lissonpsantos2@gmail.com>, Esron Silva <esron.dtamar@gmail.com>"

#IMAGE VARIABLES
ENV PROJECT_FOLDER /home/project-folder
ENV IMAGE_ALIAS PHPs
ENV SEPARATOR -
ENV INFO_IMAGE "RUN selectphp <PHP_VERSION> to choose the desired PHP version {5.6, 7.1, 7.2, 7.3, 7.4, 8.0, 8.1, 8.2} \r\n RUN apachelinker <PROJECT_PUBLIC_FOLDER> to start the apache server"
ENV TZ=America/Fortaleza

#ADD PHP REPO
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install -y language-pack-en-base
RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php

#INSTALL PHP VERSIONS
RUN apt-get update && apt-get upgrade -y
RUN apt -y install php5.6
RUN apt -y install php7.1
RUN apt -y install php7.2
RUN apt -y install php7.3
RUN apt -y install php7.4
RUN apt -y install php8.0
RUN apt -y install php8.1
RUN apt -y install php8.2
RUN apt -y install php8.3

#INSTALL PHP5.6 PACKAGES
RUN apt-get -y install php5.6-mbstring
RUN apt-get -y install php5.6-xml
RUN apt-get -y install php5.6-curl
RUN apt-get -y install php5.6-mysql
RUN apt-get -y install php5.6-pgsql
RUN apt-get -y install php5.6-imagick
RUN apt-get -y install php5.6-mcrypt
RUN apt-get -y install php5.6-zip
RUN apt-get -y install php5.6-gd
RUN apt-get -y install php5.6-gmp

#INSTALL PHP7.1 PACKAGES
RUN apt-get -y install php7.1-mbstring
RUN apt-get -y install php7.1-xml
RUN apt-get -y install php7.1-curl
RUN apt-get -y install php7.1-mysql
RUN apt-get -y install php7.1-pgsql
RUN apt-get -y install php7.1-imagick
RUN apt-get -y install php7.1-mcrypt
RUN apt-get -y install php7.1-zip
RUN apt-get -y install php7.1-gd
RUN apt-get -y install php7.1-gmp
RUN apt-get -y install php7.1-mongodb

#INSTALL PHP7.2 PACKAGES
RUN apt-get -y install php7.2-mbstring
RUN apt-get -y install php7.2-xml
RUN apt-get -y install php7.2-curl
RUN apt-get -y install php7.2-mysql
RUN apt-get -y install php7.2-pgsql
RUN apt-get -y install php7.2-imagick
RUN apt-get -y install php7.2-zip
RUN apt-get -y install php7.2-gd
RUN apt-get -y install php7.2-gmp
RUN apt-get -y install php7.2-mongodb

#INSTALL PHP7.3 PACKAGES
RUN apt-get -y install php7.3-mbstring
RUN apt-get -y install php7.3-xml
RUN apt-get -y install php7.3-curl
RUN apt-get -y install php7.3-mysql
RUN apt-get -y install php7.3-pgsql
RUN apt-get -y install php7.3-imagick
RUN apt-get -y install php7.3-zip
RUN apt-get -y install php7.3-gd
RUN apt-get -y install php7.3-gmp
RUN apt-get -y install php7.3-mongodb

#INSTALL PHP7.4 PACKAGES
RUN apt-get -y install php7.4-mbstring
RUN apt-get -y install php7.4-xml
RUN apt-get -y install php7.4-curl
RUN apt-get -y install php7.4-mysql
RUN apt-get -y install php7.4-pgsql
RUN apt-get -y install php7.4-imagick
RUN apt-get -y install php7.4-zip
RUN apt-get -y install php7.4-gd
RUN apt-get -y install php7.4-gmp
RUN apt-get -y install php7.4-mongodb

#INSTALL PHP8.0 PACKAGES
RUN apt-get -y install php8.0-mbstring
RUN apt-get -y install php8.0-xml
RUN apt-get -y install php8.0-curl
RUN apt-get -y install php8.0-mysql
RUN apt-get -y install php8.0-pgsql
RUN apt-get -y install php8.0-imagick
RUN apt-get -y install php8.0-zip
RUN apt-get -y install php8.0-gd
RUN apt-get -y install php8.0-gmp
RUN apt-get -y install php8.0-mongodb
RUN apt-get -y install php8.0-redis

#INSTALL PHP8.1 PACKAGES
RUN apt-get -y install php8.1-mbstring
RUN apt-get -y install php8.1-xml
RUN apt-get -y install php8.1-curl
RUN apt-get -y install php8.1-mysql
RUN apt-get -y install php8.1-pgsql
RUN apt-get -y install php8.1-imagick
RUN apt-get -y install php8.1-zip
RUN apt-get -y install php8.1-gd
RUN apt-get -y install php8.1-gmp
RUN apt-get -y install php8.1-mongodb
RUN apt-get -y install php8.1-redis

#INSTALL PHP8.2 PACKAGES
RUN apt-get -y install php8.2-mbstring
RUN apt-get -y install php8.2-xml
RUN apt-get -y install php8.2-curl
RUN apt-get -y install php8.2-mysql
RUN apt-get -y install php8.2-pgsql
RUN apt-get -y install php8.2-imagick
RUN apt-get -y install php8.2-zip
RUN apt-get -y install php8.2-gd
RUN apt-get -y install php8.2-gmp
RUN apt-get -y install php8.2-mongodb
RUN apt-get -y install php8.2-redis

#INSTALL PHP8.3 PACKAGES
RUN apt-get -y install php8.3-mbstring
RUN apt-get -y install php8.3-xml
RUN apt-get -y install php8.3-curl
RUN apt-get -y install php8.3-mysql
RUN apt-get -y install php8.3-pgsql
RUN apt-get -y install php8.3-imagick
RUN apt-get -y install php8.3-zip
RUN apt-get -y install php8.3-gd
RUN apt-get -y install php8.3-gmp
RUN apt-get -y install php8.3-mongodb
RUN apt-get -y install php8.3-redis

RUN apt-get -y install libxrender1 libfontconfig1 libxtst6 php-mongo pngquant

#COMPOSER INSTALL
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"

RUN apt-get update

#INSTALL NPM
RUN apt-get install -y npm
RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN npm install -g n
RUN npm install -g npm@latest
RUN n latest

#SELECTPHP SCRIPT
RUN curl -o /usr/local/bin/selectphp https://raw.githubusercontent.com/lissonpsantos2/dockerfiles/master/ubuntu-PHPS/selectphp.sh #redo
RUN cd /usr/local/bin/ && chmod +x selectphp

#APACHELINKER SCRIPT
RUN curl -o /usr/local/bin/apachelinker https://raw.githubusercontent.com/lissonpsantos2/dockerfiles/master/ubuntu-PHPS/apachelinker.sh #redo
RUN cd /usr/local/bin/ && chmod +x apachelinker

# APACHE CONFIG
RUN a2enmod rewrite
RUN curl -o /etc/apache2/sites-enabled/000-default.conf https://raw.githubusercontent.com/lissonpsantos2/dockerfiles/master/ubuntu-PHPS/apache.conf #redo

# CUSTOM php5.6 .ini file
COPY ./ini/php5.6.ini /etc/php/5.6/apache2/php.ini

WORKDIR /
