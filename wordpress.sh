#!/bin/bash
# Wordpress install in LAMP
echo "Much run with root!"
sudo apt update
sudo apt upgrade -y
sudo apt install -y apache2
sudo apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
sudo apt install -y mysql-server
sudo mysql_secure_installation
sudo mkdir /root/wordpressdownload
cd /root/wordpressdownload
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xzf latest.tar.gz
rm -rf /var/www/html/*
cp -r wordpress/* /var/www/html/

