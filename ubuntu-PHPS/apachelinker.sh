#!/bin/bash

PUBLIC_FOLDER=$1

ln -sf $1 /var/www/dev
service apache2 start