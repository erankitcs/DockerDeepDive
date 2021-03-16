### build docker image
docker image build -t USERNAME/lab-watchtower -f Dockerfile .

### Push image
docker login

docker image push USERNAME/lab-watchtower

### Create container
docker container run -d --name demo-app -p 80:3000 --restart always USERNAME/lab-watchtower

### Create Watch tower
docker run -d --name watchtower --restart always -v /var/run/docker.sock:/var/run/docker.sock v2tec/watchtower -i 30

### Update docker file 
RUN mkdir -p /var/test

### build again
docker build -t USERNAME/lab-watchtower -f Dockerfile .

### push 
docker image push USERNAME/lab-watchtower
### watch tower in action
docker ps