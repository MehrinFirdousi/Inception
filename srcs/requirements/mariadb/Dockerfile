FROM debian:bullseye

ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

RUN apt update -y && apt install mariadb-server -y && apt install mariadb-client -y

RUN chown -R mysql:mysql /var/lib/mysql && \ 
    service mariadb restart && \
    echo -e "\ny\ny\n${MYSQL_ROOT_PASSWORD}\n${MYSQL_ROOT_PASSWORD}\ny\ny\ny\ny\n" | mysql_secure_installation && \
    mariadb -e "CREATE DATABASE IF NOT EXISTS wpdb DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci; \
                CREATE USER '${MYSQL_USER}'@'' IDENTIFIED BY '${MYSQL_PASSWORD}'; \
                GRANT ALL PRIVILEGES ON wpdb.* TO '${MYSQL_USER}'@''; \
                ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; \
                FLUSH PRIVILEGES;" && \
    service mariadb restart

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT [ "mysqld", "--defaults-file=/etc/mysql/mariadb.conf.d/50-server.cnf" ]
