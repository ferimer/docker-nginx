FROM tiangolo/nginx-rtmp

RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y ffmpeg jq  && \
    apt autoclean

COPY nginx.conf /etc/nginx/nginx.conf
COPY rtmp_proxy.sh /opt

WORKDIR /opt



