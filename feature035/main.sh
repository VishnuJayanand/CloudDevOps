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

# 
cat > /etc/nginx/sites-available/fpdvso <<EOF

server {
    listen 81 default_server;
    listen [::]:81 default_server;
    root /var/www/html/fpdvso;
    index fpdvso.html;

    server_name fpdvso.ws.local;

    location / {
                try_files $uri $uri/ =404;
        }
    }
EOF

cat > /etc/nginx/sites-available/lsjhkz <<EOF
server {
    listen 82;
    listen [::]:82;
    root /var/www/html;
    index lsjhkz.html;

    server_name lsjhkz.ws.local;

    location / {
                try_files $uri $uri/ =404;
        }
    }
EOF

# linking
ln -s /etc/nginx/sites-available/fpdvso /etc/nginx/sites-enabled/;
ln -s /etc/nginx/sites-available/lsjhkz /etc/nginx/sites-enabled/;

# Nginx service restart
nginx -s reload;
service nginx start;
/etc/init.d/nginx restart;

# adding domain name in hosts file
#cat >> /etc/hosts <<EOF
#127.0.0.1  fpdvso.ws.local
#127.0.0.1  lsjhkz.ws.local
#EOF