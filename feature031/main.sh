#! /bin/bash

sudo apt-get update
sudo apt-get install nginx
sudo nginx
sudo ufw enable
sudo ufw allow 'Nginx full'
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx HTTPS'
sudo nginx
sudo apt install curl

curl --silent --head http://localhost