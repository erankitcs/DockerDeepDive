# Initialize the Swarm on manager node.
docker swarm init \
--advertise-addr MANAGER_PRIVATE_IP

# You will get docker join command similar to below. Run it on worker node.

docker swarm join --token tockenhere 54.152.45.222:2377

# Run below command to see nodes
docker node ls

# Run nginx 
docker service create -d --name nginx_service -p 8080:80 --replicas 2 nginx:latest

# Check docker service on master
docker service ls