#!/bin/bash 

WPPATH="/var/www/html/wordpress/"
WP="wp-cli.phar --path=$WPPATH --allow-root"

mkdir -p $WPPATH

$WP core download
$WP config create --dbhost=mariadb:3306 --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD
$WP core install --url=$DOMAIN --title="My WordPress Site" --admin_name=$WP_ADMIN --admin_password=$WP_PASSWORD --admin_email=$WP_ADMIN_EMAIL
$WP user create jensown jensown@mehrin.com --role=contributor --user_pass=$NEW_USER_PASS

chown -R www-data:www-data $WPPATH

php-fpm7.4 -F
