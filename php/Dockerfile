FROM php:7.3-fpm

RUN apt-get update && apt-get install -y zlib1g-dev libzip-dev \
    && docker-php-ext-install zip \
    && docker-php-ext-install pdo_mysql

# Xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

# Supervisor
RUN apt-get install -y supervisor
CMD ["/usr/bin/supervisord",'-c','/etc/supervisor/conf.d/supervisord.conf']
