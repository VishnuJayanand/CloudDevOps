#! /bin/bash

# Creating directories for webpages
mkdir -p /var/www/html/{fpdvso,lsjhkz}

# create static webpages
touch /var/www/html/fpdvso/index.html
cat > /var/www/html/fpdvso/index.html <<EOF
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

touch /var/www/html/lsjhkz/index.html
cat > /var/www/html/lsjhkz/index.html <<EOF
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
cat > /etc/nginx/sites-available/fpdvso <<EOF

server {
    listen 81 default_server;
    listen [::]:81 default_server;
    root /var/www/html/fpdvso;
    index index.html index.htm ;
    #The server name
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
    root /var/www/html/lsjhkz;
    index index.html index.htm ;
    #The server name
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
cat >> /etc/hosts <<EOF
127.0.0.1  fpdvso.ws.local
127.0.0.1  lsjhkz.ws.local
EOF