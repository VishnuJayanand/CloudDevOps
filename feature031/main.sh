#! /bin/bash

sudo apt-get update
apt-get install nginx
nginx
systemctl start nginx
curl --silent --head http://localhost
