.PHONY: all build up down 

COMPOSE_FILE	=	srcs/docker-compose.yml
DOCKERFILES		=	srcs/requirements/nginx/Dockerfile
#					srcs/requirements/mariadb/Dockerfile
#					srcs/requirements/wordpress/Dockerfile

all:
		build up

build:	${COMPOSE_FILE} ${DOCKERFILES}
		docker-compose -f ${COMPOSE_FILE} build

up:		
		docker-compose -f ${COMPOSE_FILE} up -d

down:
		docker-compose -f ${COMPOSE_FILE} down

