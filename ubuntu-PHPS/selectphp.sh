#!/bin/bash

SELECTED=$1

if [ "$SELECTED" = "5.6" ]; then
  update-alternatives --set php /usr/bin/php5.6
  a2enmod php5.6
  a2dismod php7.1
  a2dismod php7.2
  a2dismod php7.3
  a2dismod php7.4
  a2dismod php8.0
  a2dismod php8.1
  service apache2 restart
	echo "PHP 5.6 ACTIVATED!"
  exit 0
fi

if [ "$SELECTED" = "7.1" ]; then
  update-alternatives --set php /usr/bin/php7.1
  a2dismod php5.6
  a2enmod php7.1
  a2dismod php7.2
  a2dismod php7.3
  a2dismod php7.4
  a2dismod php8.0
  a2dismod php8.1
  service apache2 restart
	echo "PHP 7.1 ACTIVATED!"
  exit 0
fi

if [ "$SELECTED" = "7.2" ]; then
  update-alternatives --set php /usr/bin/php7.2
  a2dismod php5.6
  a2dismod php7.1
  a2enmod php7.2
  a2dismod php7.3
  a2dismod php7.4
  a2dismod php8.0
  a2dismod php8.1
  service apache2 restart
	echo "PHP 7.2 ACTIVATED!"
  exit 0
fi

if [ "$SELECTED" = "7.3" ]; then
  update-alternatives --set php /usr/bin/php7.3
  a2dismod php5.6
  a2dismod php7.1
  a2dismod php7.2
  a2enmod php7.3
  a2dismod php7.4
  a2dismod php8.0
  a2dismod php8.1
  service apache2 restart
	echo "PHP 7.3 ACTIVATED!"
  exit 0
fi

if [ "$SELECTED" = "7.4" ]; then
  update-alternatives --set php /usr/bin/php7.4
  a2dismod php5.6
  a2dismod php7.1
  a2dismod php7.2
  a2dismod php7.3
  a2enmod php7.4
  a2dismod php8.0
  a2dismod php8.1
  service apache2 restart
	echo "PHP 7.4 ACTIVATED!"
  exit 0
fi

if [ "$SELECTED" = "8.0" ]; then
  update-alternatives --set php /usr/bin/php8.0
  a2dismod php5.6
  a2dismod php7.1
  a2dismod php7.2
  a2dismod php7.3
  a2dismod php7.4
  a2enmod php8.0
  a2dismod php8.1
  service apache2 restart
	echo "PHP 8.0 ACTIVATED!"
  exit 0
fi

if [ "$SELECTED" = "8.1" ]; then
  update-alternatives --set php /usr/bin/php8.1
  a2dismod php5.6
  a2dismod php7.1
  a2dismod php7.2
  a2dismod php7.3
  a2dismod php7.4
  a2dismod php8.0
  a2enmod php8.1
  service apache2 restart
	echo "PHP 8.1 ACTIVATED!"
  exit 0
fi
