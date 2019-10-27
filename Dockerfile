
3
4
5
6
7
8
9
10
11
12
13
FROM php:7.3-apache
#Install git
RUN apt-get update \
    &amp;&amp; apt-get install -y git
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite
#Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=. --filename=composer
RUN mv composer /usr/local/bin/
COPY public/ /var/www/html/
EXPOSE 80
