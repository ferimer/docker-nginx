FROM debian:latest

LABEL maintainer="Ferimer DevTeam <devteam@ferimer.es>"

RUN apt update && \
    apt install -y nginx-full apache2-utils && \
    apt dist-upgrade -y && \
    apt autoclean && \
    rm -rf /var/lib/apt/lists/* && \
    sed -i '/gzip_/ s/#\ //g' /etc/nginx/nginx.conf && \
    sed -i 's/user *nginx;/user www-data;/' /etc/nginx/nginx.conf && \
    rm /etc/nginx/sites-enabled/*

COPY entrypoint.sh /
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

STOPSIGNAL SIGQUIT

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
