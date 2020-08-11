FROM php:7.0-apache  
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite
COPY . /var/www/
RUN chown -R www-data:www-data /var/www
