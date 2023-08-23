.PHONY: all start stop sh

COMPOSE_FILE	=	srcs/docker-compose.yml
DOCKERFILES		=	srcs/requirements/nginx/Dockerfile
#					srcs/requirements/mariadb/Dockerfile
#					srcs/requirements/wordpress/Dockerfile

all:	start

start:	${COMPOSE_FILE} ${DOCKERFILES}
		docker-compose -f ${COMPOSE_FILE} build
		docker-compose -f ${COMPOSE_FILE} up -d

stop:
		docker-compose -f ${COMPOSE_FILE} down

sh:
		docker exec -it nginx /bin/bash

log:
		docker logs --tail 50 --follow --timestamps nginx
