.PHONY: up down logs network createadm

up:
	docker-compose up -d

down:
	docker-compose down

logs:
	docker-compose logs keycloak | grep -i started

network:
	docker network ls | grep keycloak

createadm:
	docker exec local_keycloak /opt/jboss/keycloak/bin/add-user-keycloak.sh -u admin -p admin && docker restart local_keycloak