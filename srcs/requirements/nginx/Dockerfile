FROM debian:latest
RUN apt update && apt install nginx -y && apt install ca-certificates -y

COPY nginx-selfsigned.crt /etc/ssl/certs
COPY nginx-selfsigned.key /etc/ssl/private
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
# or i could add daemon off; to the config
# CMD ["nginx"]
