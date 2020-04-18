#!/bin/bash


for conf in `find /etc/nginx/conf.d/*.tmpl`; do
  new_name=`basename $conf | sed 's/.tmpl//g'`
  envsubst < $conf > /etc/nginx/conf.d/$new_name
done

exec nginx -g "daemon off;"