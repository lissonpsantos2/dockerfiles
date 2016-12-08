##A default debian dockerfile

A default dockerfile to build a complete image for development

#Installed Packages

* PHP5
* APACHE2
* COMPOSER
* NPM
* NODE
* BOWER
* GULP
* PHONEGAP


* NANO
* VIM
* HTOP
* CURL

#Setup

Use with Docker http://www.docker.io

To build an image with docker is pretty simple:

```
docker build -t="image-name" /path/to/the/dockerfile
```

#RUN

To run the created image and attach to it at the same time:

```
docker run -p ports:ports -v /local/project/path:/home/project-folder -it image-name-id
```

Or to run it in the background

```
docker run -d -p ports:ports -v /local/project/path:/home/project-folder image-name-id
```

#Credits

Apache2 configuration script: https://github.com/denissonleal/configure-apache
