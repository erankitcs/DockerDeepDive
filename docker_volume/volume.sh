## Create the volume
docker volume create mysql_data

## Create a MySQL Container
docker container run --name app-database -d \
--mount type=volume,source=mysql_data,target=/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=P4ssW0rd0!  \
mysql:latest

## Verify 
docker container inspect app-database