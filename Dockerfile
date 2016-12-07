FROM debian:jessie

MAINTAINER Alisson Pereira dos Santos - lissonpsantos2@gmail.com: 0.0

#CREATE PROJECT FOLDER
RUN mkdir /home/sysvale

#UPDATE IMAGE
RUN apt-get update
#RUN apt-get upgrade -y

#INSTALL PACKAGES
RUN apt-get install -y php5
RUN apt-get install -y php5-mcrypt
RUN apt-get install -y php5-curl
RUN apt-get install -y php5-imagick
RUN apt-get install -y php5-mysql
RUN apt-get install -y php5-cli

RUN apt-get install -y apache2
RUN apt-get install -y libapache2-mod-php5

RUN apt-get install -y nano
RUN apt-get install -y vim
RUN apt-get install -y htop

RUN apt-get clean -y

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"


#ENV VARIABLES
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

ENV PATH /sbin:$PATH
ENV PATH /bin:$PATH
ENV PATH /usr/sbin:$PATH
ENV PATH /usr/bin:$PATH
ENV PATH /usr/local/sbin:$PATH
ENV PATH /usr/local/bin:$PATH


#APACHE CONFIGS
RUN a2enmod rewrite
RUN php5enmod mcrypt
RUN service apache2 restart


EXPOSE 8000

#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
