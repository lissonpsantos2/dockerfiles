FROM debian:jessie

MAINTAINER Alisson Pereira dos Santos <lissonpsantos2@gmail.com>

#BASIC ENV VARIABLES
ENV PATH ${PATH}:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin

#UPDATE IMAGE
RUN apt-get update
RUN apt-get upgrade -y

#INSTALL PACKAGES
RUN apt-get install -y wget \
  bash-completion \
  apache2 \
  unzip \
  curl \
  htop \
  nano \
  sudo \
  git \
  vim \
  npm \

#BASIC STYLE
RUN curl -o /root/.bashrc https://raw.githubusercontent.com/lissonpsantos2/dockerfiles/master/debian-BASIC/bashrc #redo

WORKDIR /
