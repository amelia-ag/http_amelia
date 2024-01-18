#!/bin/bash

# Install apache2
sudo apt install apache2
sudo apt-get install -y curl

#crear arbre de directoris
cd /var/www
mkdir repartosexpress

sudo curl -0 /etc/apache2/sites-available/repartosexpress.conf https://raw.githubusercontent.com/amelia-ag/http_amelia/main/repartosexpress.conf
sudo curl -o /var/www/repartosexpress/index.html https://raw.githubusercontent.com/amelia-ag/http_amelia/main/indexcom.html

sudo a2ensite repartosexpress.conf
sudo a2dissite 000-default.conf

# Restart the apache server
systemctl reload apache2
sudo systemctl restart apache2
