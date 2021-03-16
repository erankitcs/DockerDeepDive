docker volume create portainer_data

docker container run -d --name portainer -p 8080:9000 \
--restart=always \
-v /var/run/docker.sock:/var/run/docker.sock \
-v portainer_data:/data portainer/portainer

#Login into Server IP:8080. Create your user account.
#Click on local.
#Click on containers.
#Click the Add container button.
#Enter lab_nginx as the container name.
#Use nginx:latest for the image.
#Click map additional ports and map port 8081 to 80 on the container.
#Click the Deploy container button.