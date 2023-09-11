FROM debian:bullseye

RUN apt update && apt install wget unzip curl php php-curl php-fpm php-bcmath php-gd php-soap php-zip php-curl php-mbstring php-mysqlnd php-gd php-xml php-intl php-zip -y
RUN apt install mariadb-client net-tools iputils-ping -y
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp-cli.phar
RUN mkdir /run/php
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
EXPOSE 9000
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
