# Requirements:
* [docker](https://docs.docker.com/install//) installed
* [docker-compose](https://docs.docker.com/compose/install/) installed

## Steps
1. `docker-compose up`
2. Log in to pgAdmin panel [localhost:5050](http://localhost:5050/)
2. Create server

![Create server](doc/connection.PNG?raw=true)

(Host is taken from docker-compose.yml postgres service name)

## Additional info
**Postgres credentials are in docker-compose.yml**
* POSTGRES_USER: postgres
* POSTGRES_PASSWORD: toor



**pgAdmin credentials:**
* Email Address: pgadmin4@pgadmin.org
* Password: admin
