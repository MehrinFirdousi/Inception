FROM debian:bullseye
RUN apt update && apt install mariadb-server -y
RUN systemctl enable mariadb.service

# COPY nginx-selfsigned.crt /etc/ssl/certs
# COPY nginx-selfsigned.key /etc/ssl/private
# COPY nginx.conf /etc/nginx/nginx.conf
# EXPOSE 443
# CMD ["nginx", "-g", "daemon off;"]
