define HELP

Usage:


endef

export HELP

-include .env.local
# export $(shell sed 's/=.*//' .env*)

all help:
	@echo "$$HELP"

docker-up:
	@docker-compose up -d

docker-stop:
	@docker stop postgres_container pgadmin_container

docker-clean:
	@docker rm pgadmin_container postgres_container
	@docker volume rm servicedictionarypostgrescompose_postgres servicedictionarypostgrescompose_pgadmin