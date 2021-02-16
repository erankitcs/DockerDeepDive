sudo yum remove -y docker     docker-client     docker-client-latest     docker-common     docker-latest     docker-latest-logrotate          docker-logrotate     docker-engine
sudo yum install -y yum-utils   device-mapper-persistent-data   lvm2
sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
sudo yum -y install docker-ce
sudo systemctl start docker && sudo systemctl enable docker
sudo usermod -aG docker cloud_user
docker
docker version
exit
docker image ls
docker image pull nginx
docker image ls
docker image inspect 298ec0e28760
docker container ls
docker container run busybox
docker container ls
docker container ls -a
docker container ls -h
docker container run -h
docker container run --help
docker container run -P -d nginx
docker container ps 
docker container ls
docker container inpsect 353b7233b32a
docker container inspect 353b7233b32a
curl http://172.17.0.2
docker container inspect 353b7233b32a
docker container top 353b7233b32a
docker container attach 353b7233b32a
docker container ls
docker container ls
docker container ls -a
docker container start 353b7233b32a
docker container ls -a
docker container stop 353b7233b32a
docker container ls -a
docker container logs 353b7233b32a
docker container ls
docker container start 353b7233b32a
docker container ls
curl localhost:49155
docker container logs 353b7233b32a
docker container stats
docker container stats 353b7233b32a
ls -ltra
docker container exec -it 353b7233b32a /bin/bash
docker container ls
docker container exec -it 353b7233b32a ls /usr/share/nginx/html/
docker container pause 353b7233b32a
docker container ls
docker container unpause 353b7233b32a
docker container ls
docker container rm -f 353b7233b32a
docker container ls
docker container prune
docker container ls
docker container ls -a
history > docker_management.sh
