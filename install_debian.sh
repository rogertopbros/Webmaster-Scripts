#!/usr/bin bash

#This script helps automate the LAMP install process. Script has php modules required for WordPress. Also we install Certbot for Free SSL Certificates. 

#Run Apt updates and upgrades
apt-get update -y && apt-get update -y

sleep1

#Install Apache + PHP + PHP Modules for WordPress
apt-get install apache2 php php-curl libapache2-mod-php php-mysql php-xml php-date php-exif php-gd php-imagick php-json php-mbstring php-zip -y

#Install MYSQL Server - Replaced by MariaDB-Server
apt-get install mariadb-server -y

#Enable Apache Mod_SSL
a2enmod ssl

#Restart Apache Service
service apache2 restart

#Install Certbot
apt install certbot python3-certbot-apache

#Done
echo "Apache, Mysql, PHP, and Certbot is now installed.";
echo "Now go setup your Virtualhost in /etc/apache/sites-available/ then run 'a2ensite newconfigname.conf' -> Restart Apache2 -> Then run certbot to get an ssl for your domain.";