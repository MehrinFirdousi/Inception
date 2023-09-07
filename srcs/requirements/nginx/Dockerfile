FROM debian:bullseye
RUN apt update && apt install nginx -y && apt install ca-certificates -y && apt install nano -y
RUN apt install net-tools iputils-ping -y

# COPY nginx-selfsigned.crt /etc/ssl/certs
# COPY nginx-selfsigned.key /etc/ssl/private
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
# EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
