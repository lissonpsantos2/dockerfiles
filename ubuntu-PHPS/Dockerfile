FROM lissonpsantos2/ubuntu-18.04-basic:latest

LABEL authors="Alisson Pereira dos Santos <lissonpsantos2@gmail.com>, Esron Silva <esron.dtamar@gmail.com>"

#IMAGE VARIABLES
ENV PROJECT_FOLDER /home/project-folder
ENV IMAGE_ALIAS PHPs
ENV SEPARATOR -
ENV INFO_IMAGE "RUN selectphp <PHP_VERSION> to choose the desired PHP version {5.6, 7.1, 7.2, 7.3} \r\n RUN apachelinker <PROJECT_PUBLIC_FOLDER> to start the apache server"
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

#INSTALL PHP5.6 PACKAGES
RUN apt-get -y install php5.6-mbstring
RUN apt-get -y install php5.6-xml
RUN apt-get -y install php5.6-curl
RUN apt-get -y install php5.6-mysql
RUN apt-get -y install php5.6-pgsql
RUN apt-get -y install php5.6-imagick
RUN apt-get -y install php5.6-mcrypt
RUN apt-get -y install php5.6-zip

#INSTALL PHP7.1 PACKAGES
RUN apt-get -y install php7.1-mbstring
RUN apt-get -y install php7.1-xml
RUN apt-get -y install php7.1-curl
RUN apt-get -y install php7.1-mysql
RUN apt-get -y install php7.1-pgsql
RUN apt-get -y install php7.1-imagick
RUN apt-get -y install php7.1-mcrypt
RUN apt-get -y install php7.1-zip

#INSTALL PHP7.2 PACKAGES
RUN apt-get -y install php7.2-mbstring
RUN apt-get -y install php7.2-xml
RUN apt-get -y install php7.2-curl
RUN apt-get -y install php7.2-mysql
RUN apt-get -y install php7.2-pgsql
RUN apt-get -y install php7.2-imagick
RUN apt-get -y install php7.2-zip

#INSTALL PHP7.3 PACKAGES
RUN apt-get -y install php7.3-mbstring
RUN apt-get -y install php7.3-xml
RUN apt-get -y install php7.3-curl
RUN apt-get -y install php7.3-mysql
RUN apt-get -y install php7.3-pgsql
RUN apt-get -y install php7.3-imagick
RUN apt-get -y install php7.3-zip

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
RUN curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN npm install -g n
RUN npm install -g gulp
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

WORKDIR /
