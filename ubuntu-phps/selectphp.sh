#!/bin/bash

SELECTED=$1

if [ "$SELECTED" = "7.1" ]; then
  update-alternatives --set php /usr/bin/php7.1
  a2dismod php7.0
  a2dismod php5.6
  a2enmod php7.1
  system apache2 restart
	echo "PHP 7.1 ACTIVATED!"
  exit 0
fi

if [ "$SELECTED" = "7.0" ]; then
  update-alternatives --set php /usr/bin/php7.0
  a2dismod php7.1
  a2dismod php5.6
  a2enmod php7.0
  system apache2 restart
	echo "PHP 7.0 ACTIVATED!"
  exit 0
fi

if [ "$SELECTED" = "5.6" ]; then
  update-alternatives --set php /usr/bin/php5.6
  a2dismod php7.1
  a2dismod php7.0
  a2enmod php5.6
  system apache2 restart
	echo "PHP 5.6 ACTIVATED!"
  exit 0
fi
