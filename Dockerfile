FROM yiisoftware/yii2-php:7.4-apache

COPY . /app

RUN apt-get update && apt-get install -y unzip git \
  && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
  && composer install