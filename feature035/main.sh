#! /bin/bash

# Creating directories for webpages
mkdir -p /var/www/public_html/{fpdvso,lsjhkz}

# create static webpages
cat > /var/www/public_html/fpdvso/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
</head>
<body>

<p>
    veojpsxwrnht
</p>

</body>
</html>
EOF

cat > /var/www/public_html/lsjhkz/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
</head>
<body>

<p>
    ejazutqepwtg
</p>

</body>
</html>
EOF

# 
cat > /etc/nginx/sites-available/fpdvso.conf <<EOF

server {
    listen 81 default_server;
    listen [::]:81 default_server;
    root /var/www/public_html/fpdvso;
    index index.html index.htm ;
    #The server name
    server_name fpdvso.ws.local;

    location / {
                try_files $uri $uri/ =404;
        }
    }
EOF

cat > /etc/nginx/sites-available/lsjhkz.conf <<EOF
server {
    listen 82;
    listen [::]:82;
    root /var/www/public_html/lsjhkz;
    index index.html index.htm ;
    #The server name
    server_name lsjhkz.ws.local;

    location / {
                try_files $uri $uri/ =404;
        }
    }
EOF

# linking
ln -s /etc/nginx/sites-available/fpdvso.conf /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-available/lsjhkz.conf /etc/nginx/sites-enabled/

# Nginx service restart
nginx -s reload
/etc/init.d/nginx restart

# adding domain name in hosts file
cat >> /etc/hosts <<EOF
127.0.0.1  fpdvso.ws.local
127.0.0.1  lsjhkz.ws.local
EOF