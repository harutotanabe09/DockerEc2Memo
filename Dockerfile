FROM php:7.2-apache

RUN apt-get update && apt-get install -y \
        git

WORKDIR /var/www/html/

RUN git clone https://github.com/harutotanabe09/html_format.git