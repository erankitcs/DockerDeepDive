openssl rand -base64 20 > mysql_root_password.txt
docker secret create mysql_root_password mysql_root_password.txt

openssl rand -base64 20 > mysql_password.txt
docker secret create mysql_password mysql_password.txt

docker network create -d overlay mysql_private

docker service create \
     --name mysql_secrets \
     --replicas 1 \
     --network mysql_private \
     --mount type=volume,destination=/var/lib/mysql \
     --secret mysql_root_password \
     --secret mysql_password \
     -e MYSQL_ROOT_PASSWORD_FILE="/run/secrets/mysql_root_password" \
     -e MYSQL_PASSWORD_FILE="/run/secrets/mysql_password" \
     -e MYSQL_USER="myUser" \
     -e MYSQL_DATABASE="myDB" \
     mysql:5.7