FROM debian:bullseye

ARG DOMAIN
RUN apt update && apt install nginx -y && apt install ca-certificates -y && apt install nano -y
RUN apt install net-tools iputils-ping -y
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=AE/ST=AbuDhabi/L=AbuDhabi/O=42AbuDhabi/OU=./CN=$DOMAIN"
COPY conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
