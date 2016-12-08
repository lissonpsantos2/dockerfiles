#A default debian dockerfile

A default dockerfile to build a complete image for development

#Installed Packages

* PHP5
* APACHE2
* COMPOSER
* NPM


* NANO
* VIM
* HTOP

#Setup

Use with Docker http://www.docker.io

To build an image with docker is pretty simple:

```
docker build -t="image-name" /path/to/the/dockerfile
```

Then to run that image and attach to it at the same time:

```
docker run -i -t rethinkdb
```
Or to run it in the background
```
docker run -d rethinkdb
```
