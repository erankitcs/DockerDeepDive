cd src
hash=$(git log -1 --pretty=%H)
cd ../
echo $hash
sudo docker image build -t erankitcs/weather-app:$hash --build-arg APP_VERSION=2.0 .
sudo docker container run -d --name weather-app -p 8080:3000 erankitcs/weather-app:$hash