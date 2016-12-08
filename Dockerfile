FROM debian:jessie

MAINTAINER Alisson Pereira dos Santos - lissonpsantos2@gmail.com: 0.0

#CREATE PROJECT FOLDER
RUN mkdir /home/project-folder

#UPDATE IMAGE
RUN apt-get update
RUN apt-get upgrade -y

#INSTALL PACKAGES
RUN apt-get install -y php5 \
  php5-mcrypt \
  php5-curl \
  php5-imagick \
  php5-mysql \
  php5-cli \
  apache2 \
  libapache2-mod-php5 \
  curl

RUN apt-get install -y npm

RUN npm cache clean -f
RUN npm install n -g
RUN n stable
RUN npm install bower -g
RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN npm install gulp -g
RUN npm install phonegap -g


RUN apt-get install -y nano
RUN apt-get install -y vim
RUN apt-get install -y htop

RUN apt-get clean -y

#COMPOSER INSTALL
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"



#ENV VARIABLES
#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2

ENV PATH /sbin:$PATH
ENV PATH /bin:$PATH
ENV PATH /usr/sbin:$PATH
ENV PATH /usr/bin:$PATH
ENV PATH /usr/local/sbin:$PATH
ENV PATH /usr/local/bin:$PATH


#APACHE CONFIGS
#RUN a2enmod rewrite
#RUN php5enmod mcrypt
#RUN service apache2 restart


EXPOSE 8000
EXPOSE 3000

#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
