#!/bin/sh -eux

if [ -n "${WEBDAV_USERNAME:-}" ] && [ -n "${WEBDAV_PASSWORD:-}" ]; then
    htpasswd -cb /etc/nginx/webdavpasswd $WEBDAV_USERNAME $WEBDAV_PASSWORD
else
    echo "No htpasswd config done"
    sed -i 's%auth_basic "Restricted";% %g' /etc/nginx/conf.d/default.conf
    sed -i 's%auth_basic_user_file webdavpasswd;% %g' /etc/nginx/conf.d/default.conf
fi

if [ -n "${UID:-}" ]; then
    chmod go+w /dev/stderr /dev/stdout
    gosu $UID mkdir -p /tmp/nginx/client-bodies
    exec gosu $UID "$@"
else
    mkdir -p /tmp/nginx/client-bodies
    exec "$@"
fi 
