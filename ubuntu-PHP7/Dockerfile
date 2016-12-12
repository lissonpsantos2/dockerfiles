FROM ubuntu:16.04

MAINTAINER Alisson Pereira dos Santos <lissonpsantos2@gmail.com>, Denisson Leal <denissonleal@gmail.com>

#CREATE PROJECT FOLDER
RUN mkdir /home/project-folder

#UPDATE IMAGE
RUN apt-get update
RUN apt-get upgrade -y

#INSTALL PACKAGES
RUN apt-get install -y php7.0 \
  php7.0-mcrypt \
  php7.0-curl \
  php-imagick \
  php7.0-mysql \
  php7.0-dev \
  php7.0-zip \
  php7.0-mbstring \
  php-mongodb \
  apache2 \
  libapache2-mod-php7.0 \
  git \
  wget \
  npm \
  nano \
  vim \
  htop

  RUN npm cache clean -f
  RUN npm install n -g
  RUN n stable
  RUN npm install bower -g
  RUN echo '{ "allow_root": true }' > /root/.bowerrc
  RUN npm install gulp -g
  RUN npm install phonegap -g

  #COMPOSER INSTALL
  RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
  RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
  RUN php -r "unlink('composer-setup.php');"

  #ENV VARIABLES
  ENV PATH /sbin:$PATH
  ENV PATH /bin:$PATH
  ENV PATH /usr/sbin:$PATH
  ENV PATH /usr/bin:$PATH
  ENV PATH /usr/local/sbin:$PATH
  ENV PATH /usr/local/bin:$PATH
