FROM php:7.0-apache
MAINTAINER Miguel Vargas "miguelchico14@gmail.com"

COPY bookmedik/ /var/www/html/

RUN docker-php-ext-install mysqli

ADD run.sh /run.sh
RUN chmod +x /run.sh


CMD ["/run.sh"]

