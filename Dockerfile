FROM php:5.5-apache

COPY . /var/www/html/

CMD ["apache2-foreground"]
