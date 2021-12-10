FROM php:7.4-apache
RUN apt-get update && apt-get install -y libmcrypt-dev \
    mariadb-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install gd \
    && docker-php-ext-install mysqli \
    && a2enmod rewrite \
    && service apache2 restart