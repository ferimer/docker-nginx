FROM debian:latest

LABEL maintainer="Ferimer DevTeam <devteam@ferimer.es>"

RUN apt update && \
    apt install -y nginx-full && \
    apt dist-upgrade -y && \
    apt autoclean && \
    sed -i '/gzip_/ s/#\ //g' /etc/nginx/nginx.conf && \
    sed -i 's/user *nginx;/user www-data;/' /etc/nginx/nginx.conf && \
    mkdir -p /tmp/nginx/client-bodies

COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
