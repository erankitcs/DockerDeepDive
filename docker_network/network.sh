## Create the frontend network
docker network create frontend

## Create the localhost network (Internal network)

docker network create localhost --internal

## Create a MySQL container
docker container run -d --name database --network localhost -e MYSQL_ROOT_PASSWORD=P4ssW0rd0! mysql:5.7

## Create an Nginx container
docker container run -d --name frontend-app --network frontend nginx:latest

## Connect frontend-app to the internal network
docker network connect localhost frontend-app

## Inspect container to verify
 docker container inspect frontend-app
