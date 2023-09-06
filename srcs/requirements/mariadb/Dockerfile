FROM debian:bullseye
RUN apt update && apt install -y mariadb-server mariadb-client
RUN systemctl enable mariadb.service

EXPOSE 3306
CMD ["mysqld", "--user=mysql", "--console"]
# CMD ["mariadbd"]
