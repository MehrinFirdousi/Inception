#!/bin/bash 

# Configure WordPress with environment variables (if needed) 

wp config set DB_NAME $MYSQL_DATABASE 

wp config set DB_USER $MYSQL_USER 

wp config set DB_PASSWORD $MYSQL_PASSWORD 

wp config set DB_HOST mariadb:3306 

wget https://wordpress.org/latest.zip && unzip latest.zip -d /var/www/html/
chown -R www-data:www-data /var/www/html/wordpress/

php-fpm7.4 -F 