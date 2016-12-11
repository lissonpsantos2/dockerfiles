##Dockerfiles to create complete images for software development

A debian:jessie based image with PHP5 and a ubuntu:16.04 based image with PHP7.0

#Installed Packages

* APACHE2
* COMPOSER
* NPM
* BOWER
* GULP
* PHONEGAP
* GIT
* NODE

#Installed Tools

* CURL
* WGET
* NANO
* VIM
* HTOP
* CURL

#Setup

Use with Docker http://www.docker.io

To build an image with docker is pretty simple:

```
docker build -t="image-name:version" /path/to/the/dockerfile
```

#Run

To run the created image and attach to it at the same time:

```
docker run -p ports:ports -v /local/"project-path":/home/project-folder -it image-name-id
```

Or to run it in the background

```
docker run -d -p ports:ports -v /local/"project-path":/home/project-folder image-name-id
```
