#!/bin/bash
#
# glpi.sh
#
# Autor     : Caio Bentes <caio.bentes@solustecnologia.com.br>
#
#  -------------------------------------------------------------
#   Este programa instala o glpi 9.3.0 em um servidor Debian 9.X
#

#Muda o mirror do SO
echo "deb http://ftp.br.debian.org/debian/ stretch main" > /etc/apt/sources.list
echo "deb-src http://ftp.br.debian.org/debian/ stretch main" >> /etc/apt/sources.list

#Atualiza lista de pacotes e atualiza os pacotes
apt-get update && apt-get upgrade -y
#Instala pacotes nescessários
apt-get install -y 	ca-certificates \
				apache2 \
				libapache2-mod-php7.0 \
				php7.0-fpm \
				php7.0-apcu \
				php7.0-xmlrpc \
				php7.0-xmlrpc \
				php7.0-mbstring \
				php7.0-xml \
				php7.0-xmlrpc \
				php7.0-dev \
				php7.0-gd \
				php7.0-cli \
				php7.0-curl \
				php7.0 \
				php7.0-gd \
				php7.0-imap \
				php7.0-ldap \
				php7.0-mysql \
				php-soap \
				php7.0-mbstring \
				php7.0-xml \
				php7.0-xmlrpc \
				php-cas \
				mariadb-server

chown -R www-data:www-data /var/www/html/
chmod -Rf 775 /var/www/html
read -sp "Qual a senha do root do banco de dados? " ROOTDBPWD
echo
debconf-set-selections <<< "mariadb-server-10.0 mariadb-server/root_password password $ROOTDBPWD"
debconf-set-selections <<< "mariadb-server-10.0 mariadb-server/root_password_again password $ROOTDBPWD"
debconf-set-selections <<< "mariadb-server-10.0 mariadb-server/oneway_migration boolean true"


