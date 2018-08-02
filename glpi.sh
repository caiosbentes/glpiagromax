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

read -sp "Qual a senha do root do banco de dados? " ROOTDBPWD
echo
debconf-set-selections <<< "mariadb-server-10.0 mariadb-server/root_password password $ROOTDBPWD"
debconf-set-selections <<< "mariadb-server-10.0 mariadb-server/root_password_again password $ROOTDBPWD"
debconf-set-selections <<< "mariadb-server-10.0 mariadb-server/oneway_migration boolean true"
echo "create database glpi;" | mysql -uroot
echo "create user glpi@localhost identified by '123456';" | mysql -uroot
echo "grant all on glpi.* to glpi identified by '123456';" | mysql -uroot
mysql -h localhost -u glpi -p glpi < glpi.sql

cp -r glpi /var/www/html/
chown -R www-data:www-data /var/www/html/
chmod -Rf 775 /var/www/html

cat <<EOF > /etc/apache2/sites-enabled/000-default.conf
<VirtualHost *:80>
        # The ServerName directive sets the request scheme, hostname and port that
        # the server uses to identify itself. This is used when creating
        # redirection URLs. In the context of virtual hosts, the ServerName
        # specifies what hostname must appear in the request's Host: header to
        # match this virtual host. For the default virtual host (this file) this
        # value is not decisive as it is used as a last resort host regardless.
        # However, you must set it for any further virtual host explicitly.
        #ServerName www.example.com

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html/glpi

        # Available loglevels: trace8, ..., trace1, debug, info, notice, warn,
        # error, crit, alert, emerg.
        # It is also possible to configure the loglevel for particular
        # modules, e.g.
        #LogLevel info ssl:warn

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

        # For most configuration files from conf-available/, which are
        # enabled or disabled at a global level, it is possible to
        # include a line for only one particular virtual host. For example the
        # following line enables the CGI configuration for this host only
        # after it has been globally disabled with "a2disconf".
        #Include conf-available/serve-cgi-bin.conf
        Alias /log/ "/var/log/"
   	<Directory "/var/log/">
	       Options Indexes MultiViews FollowSymLinks
	       AllowOverride None
	       Order deny,allow
	       Deny from all
	       Allow from all
	        Require all granted
   	</Directory>
</VirtualHost>
EOF
