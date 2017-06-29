FROM php:5-apache

COPY .htaccess words.gz wpoison.php /var/www/html/

RUN \
  a2enmod rewrite && \
  gunzip words.gz
