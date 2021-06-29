FROM php:7.2-apache

####################################################
############ Instalar extensiones php  #############
####################################################
# Más información ver en: https://hub.docker.com/_/php
# Buscar el apartado: How to install more PHP extensions
# Abajo se coloca un ejemplo de la instalacion de mysqli
RUN docker-php-ext-install mysqli

####################################################
############### Intalamos java 1.8 #################
####################################################
# Copiamos esl archivo de scripst dentro del docker
COPY ./scripts/instalaciones.sh /tmp
# Nos movemos a la carpeta tempora
WORKDIR /tmp
# Ejecutamos el script que intala java 1.8
RUN sh ./instalaciones.sh
# Nos movemos a la carpeta /var/www/html
WORKDIR /var/www/html
# Configuramos el php.ini
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
