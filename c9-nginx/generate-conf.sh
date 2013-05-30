#! /bin/bash

cp c9-nginx/conf/nginx.conf.default c9-nginx/conf/nginx.conf

sed -i -e 's/YOUR_IP/'"$IP"'/g' c9-nginx/conf/nginx.conf
sed -i -e 's/YOUR_PORT/'"$PORT"'/g' c9-nginx/conf/nginx.conf
sed -i -e 's!YOUR_ROOT!'"$PWD"'!g' c9-nginx/conf/nginx.conf