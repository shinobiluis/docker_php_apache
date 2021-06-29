FROM php:7.2-apache

RUN docker-php-ext-install mysqli
# RUN apt-get -y install update
# RUN apt-get -y upgrade
# # se debe agregar el repositorio de sid deb http://deb.debian.org/debian/ sid main
# RUN mkdir -p /usr/share/man/man1

# intalamos java 1.8
COPY ./scripts/instalaciones.sh /tmp
WORKDIR /tmp
RUN sh ./instalaciones.sh
