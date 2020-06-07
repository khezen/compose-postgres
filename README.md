# Postgresql & PgAdmin powered by compose

## Requirements:

- docker >= 17.12.0+
- docker-compose

## Quick Start

- Clone or download this repository
- Go inside of directory, `cd service-dictionary-compose-postgres`
- Run this command `docker-compose up -d`

## Seed Data

- The `init.sql` file contains the basic seed data for the service-dictionary schema.

# Environments

## Access to PgAdmin:

- **URL:** `http://localhost:5050`
- **Username:** admin (as a default)
- **Password:** admin (as a default)

## Add a new server in PgAdmin:

- **Host name/address** `postgres`
- **Port** `5432`
- **Username** as `POSTGRES_USER`, by default: `postgres`
- **Password** as `POSTGRES_PASSWORD`, by default `changeme`

## Access to postgres:

- `localhost:5432`
- **Username:** postgres (as a default)
- **Password:** changeme (as a default)

# Docker Commands

## Stopping the containers

''' docker stop postgres_container pgadmin_container '''

## Removing the containers

''' docker rm pgadmin_container postgres_container '''

## Removing the volums

docker volume rm servicedictionarypostgrescompose_postgres servicedictionarypostgrescompose_pgadmin
