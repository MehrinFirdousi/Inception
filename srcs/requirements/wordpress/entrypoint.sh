#!/bin/bash 

# Configure WordPress with environment variables (if needed) 

# wp config set DB_NAME $MYSQL_DATABASE 

# wp config set DB_USER $MYSQL_USER 

# wp config set DB_PASSWORD $MYSQL_PASSWORD 

# wp config set DB_HOST mariadb:3306 

wp core install --url=http://localhost --title="My WordPress Site" --admin_user=mfirdous --admin_password=mfirdous --admin_email=mfirdous@student.42abudhabi.ae

php-fpm -F 