#! /bin/bash

# create static webpages
touch /var/www/html/fpdvso.html;
echo '<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
</head>
<body>

<p>
    veojpsxwrnht
</p>

</body>
</html>' | tee -a /var/www/html/fpdvso.html;

touch /var/www/html/lsjhkz.html;
echo '<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
</head>
<body>

<p>
    ejazutqepwtg
</p>

</body>
</html>' | tee -a /var/www/html/lsjhkz.html;

# creating config files
touch /etc/nginx/sites-available/fpdvso;
echo 'server {
    listen 80;
    listen [::]:80;
    root /var/www/html/fpdvso;
    index fpdvso.html;

    server_name fpdvso.ws.local;

    location / {
                try_files $uri $uri/ =404;
        }
    }' | tee -a /etc/nginx/sites-available/fpdvso;

touch /etc/nginx/sites-available/lsjhkz;
echo 'server {
    listen 80;
    listen [::]:80;
    root /var/www/html/lsjhkz;
    index lsjhkz.html;

    server_name lsjhkz.ws.local;

    location / {
                try_files $uri $uri/ =404;
        }
    }' | tee -a /etc/nginx/sites-available/lsjhkz;

# linking
ln -s /etc/nginx/sites-available/fpdvso /etc/nginx/sites-enabled/;
ln -s /etc/nginx/sites-available/lsjhkz /etc/nginx/sites-enabled/;

# Nginx service restart
nginx -s reload;
service nginx start;

# adding domain name in hosts file
#cat >> /etc/hosts <<EOF
#127.0.0.1  fpdvso.ws.local
#127.0.0.1  lsjhkz.ws.local
#EOF