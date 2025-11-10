# Postgres DB for api.kelseywilliams.co
## Roles
The database creates three different roles: admin, worker, and readonly.
Admin is only used for setting up roles.  All database interactions should happen through worker or readonly.
## Setting up 
### - Docker network
Create a docker network named ```site``` or connect the docker-compose.yml to the network of your choosing.
### - init script
Drop an 01-init.sql into the init folder in order to create tables at initialization
### - Backups
The database backups to the postgres_data docker volume
### - Secrets
Create a /secrets folder with the following structure
```
secrets
    ├── admin_pwd.txt
    ├── readonly_pwd.txt
    └── user_pwd.txt
```
each with a unique hash such as 
```
"d2789ff37d39811498092e66a02c33be0b7b5addded05cb63866648d80d261d6"
```