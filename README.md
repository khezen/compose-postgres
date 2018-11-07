# Postgresql & PgAdmin powered by compose


## Requirements:
* docker >= 17.12.0+
* docker-compose

## Quick Start
* Clone or download this repository
* Go inside of directory,  `cd compose-postgres`
* Run this command `docker-compose up -d`


## Environments
This Compose file uses several environment variables which are easy to miss. 

* `POSTGRES_USER` the default value is **postgres**
* `POSTGRES_PASSWORD` the default value is **changeme**
* `PGADMIN_PORT` the default value is **5060**
* `PGADMIN_DEFAULT_EMAIL` the default value is **pgadmin4@pgadmin.org**
* `PGADMIN_DEFAULT_PASSWORD` the default value is **admin**


## Access to PgAdmin: 
* **URL:** `http://localhost:5060`
* **Username:** pgadmin4@pgadmin.org (as a default)
* **Password:** admin (as a default)