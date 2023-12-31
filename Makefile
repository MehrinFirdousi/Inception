.PHONY: all start stop sh

COMPOSE_FILE	=	srcs/docker-compose.yml
DOCKERFILES		=	srcs/requirements/nginx/Dockerfile \
					srcs/requirements/mariadb/Dockerfile \
					srcs/requirements/wordpress/Dockerfile
VOLUMES			=	/home/${USER}/data/mdb \
					/home/${USER}/data/wp

all:	build start

build:	${COMPOSE_FILE} ${DOCKERFILES}
		mkdir -p ${VOLUMES}
		docker-compose -f ${COMPOSE_FILE} build

start:
		docker-compose -f ${COMPOSE_FILE} up -d

stop:
		docker-compose -f ${COMPOSE_FILE} stop

clean:
		docker-compose -f ${COMPOSE_FILE} down -v --rmi local

re:		stop clean build start

sh:
		docker exec -it nginx /bin/bash

wpsh:
		docker exec -it wordpress /bin/bash

dbsh:
		docker exec -it mariadb /bin/bash

nglog:
		docker logs --tail 50 --follow --timestamps nginx

wplog:
		docker logs --tail 50 --follow --timestamps wordpress

dblog:
		docker logs --tail 50 --follow --timestamps mariadb
