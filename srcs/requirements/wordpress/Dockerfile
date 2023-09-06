FROM debian:bullseye
# RUN apt update && apt install php php-curl php-fpm php-bcmath php-gd php-soap php-zip php-curl php-mbstring php-mysqlnd php-gd php-xml php-intl php-zip -y
# RUN wget https://wordpress.org/latest.zip && unzip latest.zip -d /var/www/html/
# RUN chown -R www-data:www-data /var/www/html/wordpress/

COPY conf /var/www/html/wordpress/wp-config.php
# COPY nginx-selfsigned.key /etc/ssl/private
# COPY nginx.conf /etc/nginx/nginx.conf
# EXPOSE 443
# CMD ["nginx", "-g", "daemon off;"]

# Use Debian as the base image
FROM debian:bullseye-slim

# Install required dependencies (e.g., PHP, MariaDB client, WordPress)
RUN apt-get update && apt-get install -y php mariadb-client wordpress && \
    rm -rf /var/lib/apt/lists/*

# Expose the WordPress port
EXPOSE 80

# Start a simple script or entry point to configure and run WordPress
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
