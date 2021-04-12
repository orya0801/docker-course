#!/bin/sh
for file in /usr/share/nginx/html/assets/env.*.js;
do
  if [ ! -f $file.template.js ]; then
    cp $file $file.template.js
  fi
  envsubst '${API_HOST} ${API_PORT} ${PROD_STATE}' < $file.template.js > $file
done
echo "Starting Nginx"
nginx -g 'daemon off;'