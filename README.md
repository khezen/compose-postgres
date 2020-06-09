# Postgresql & PgAdmin powered by compose

## Requirements:

- docker >= 17.12.0+
- docker-compose

## Quick Start

- Clone or download this repository

```bash
cd service-dictionary-compose-postgres
docker-compose up -d
```

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

```bash
docker stop postgres_container pgadmin_container
```

## Removing the containers

```bash
docker rm pgadmin_container postgres_container
```

## Removing the volums

```bash
docker volume rm servicedictionarypostgrescompose_postgres servicedictionarypostgrescompose_pgadmin
```

## Common issues

- If you have network bridge issues make sure you're proxy is off. Or try the

```bash
docker network prune
```
