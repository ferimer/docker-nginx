FROM owasp/modsecurity-crs:nginx

LABEL maintainer="Ferimer DevTeam <devteam@ferimer.es>"
LABEL ferimer_service="WAF-nginx-proxy"

USER root
RUN rm /etc/nginx/templates/conf.d/modsecurity.conf.template /etc/nginx/templates/conf.d/logging.conf.template /etc/nginx/templates/conf.d/default.conf.template

EXPOSE 443
