FROM debian:bullseye
RUN apt update && apt install curl php php-curl php-fpm php-bcmath php-gd php-soap php-zip php-curl php-mbstring php-mysqlnd php-gd php-xml php-intl php-zip -y
# RUN wget https://wordpress.org/latest.zip && unzip latest.zip -d /var/www/html/
# RUN chown -R www-data:www-data /var/www/html/wordpress/
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
# RUN ln -s /usr/share/doc/php7.4-fpm /usr/local/bin/php-fpm
# COPY conf /var/www/html/wordpress/wp-config.php

# Install required dependencies (e.g., PHP, MariaDB client, WordPress)
# RUN apt update && apt install -y mariadb-client wordpress && \
    # rm -rf /var/lib/apt/lists/*
EXPOSE 9000
# COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh
# CMD ["nginx", "-g", "daemon off;"]
# CMD ["php-fpm7.4"]
CMD ["sleep", "infinity"]
# ENTRYPOINT ["/entrypoint.sh"]
