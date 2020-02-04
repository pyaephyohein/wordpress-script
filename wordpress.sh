#!/bin/bash
# Wordpress install in LAMP
echo "Much run with root!"
sudo apt update
sudo apt upgrade -y
sudo apt install -y  apache2
sudo apt install -y php*
sudo apt install -y mysql*
sudo mkdir /root/wordpressdownload
cd /root/wordpressdownload
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xzf latest.tar.gz
rm -rf /var/www/html/index.html
cp wordpress/* /var/www/html/

