# Postgres DB for api.kelseywilliams.co
## Roles
The database creates three different roles: admin, worker, and readonly.
Admin is only used for setting up roles.  All database interactions should happen through worker or readonly.
## Setting up 
### - Docker network
Create a docker network named ```site``` or connect the docker-compose.yml to the network of your choosing.
### - Backups
Create a backups folder at /backup
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