FROM debian:bullseye
RUN apt update && apt install -y mariadb-server && service mariadb start
# RUN systemctl enable mariadb.service
# RUN mysql -u root -e "CREATE DATABASE wpdb;"
# RUN mysql -u root -e "GRANT ALL ON wpdb.* TO 'mfirdous'@'localhost' IDENTIFIED BY '123' WITH GRANT OPTION;"
# RUN mysql -u root -e "FLUSH PRIVILEGES;"
# RUN mysql -u root -e "UPDATE USER SET PASSWORD=PASSWORD("123") WHERE USER='root';"

EXPOSE 3306
CMD ["mysqld_safe"]
# CMD ["mariadbd"]
