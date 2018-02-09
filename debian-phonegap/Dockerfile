FROM debian:jessie

MAINTAINER Alisson Pereira dos Santos <lissonpsantos2@gmail.com>

#CREATE PROJECT FOLDER
RUN mkdir /home/phonegap
RUN mkdir /home/phonegap/Android

#UPDATE IMAGE
RUN apt-get update
RUN apt-get upgrade -y

#INSTALL NODE
#RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#RUN sudo apt-get install -y nodejs
RUN ln -s /usr/bin/nodejs /usr/bin/node

#INSTALL PACKAGES
RUN apt-get install -y git \
  curl \
  wget \
  npm \
  nano \
  vim \
  htop \
  bash-completion \
  sudo \
#  default-jre \
#  default-jdk

RUN npm cache clean -f
RUN npm install -g n
RUN npm install -g bower
RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN npm install -g gulp
RUN npm install -g phonegap

ENV ANDROID_HOME /home/phonegap/Android
ENV PATH /sbin:$PATH
ENV PATH /bin:$PATH
ENV PATH /usr/sbin:$PATH
ENV PATH /usr/bin:$PATH
ENV PATH /usr/local/sbin:$PATH
ENV PATH /usr/local/bin:$PATH
ENV PATH $ANDROID_HOME/tools:$PATH
ENV PATH $ANDROID_HOME/platform-tools:$PATH

