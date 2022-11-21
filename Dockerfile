FROM php:7.4-apache
WORKDIR /var/www/html

#Mod Rewrite
RUN a2enmod rewrite

RUN apt-get update -y && apt-get install -y libmariadb-dev libicu-dev unzip zip
RUN docker-php-ext-install gettext intl mysqli