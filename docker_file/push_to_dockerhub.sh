docker login -u erankitcs
cd src
hash=$(git log -1 --pretty=%H)
cd ../
echo $hash
echo "Creating Docker image"
docker image build -t erankitcs/weather-app:$hash --build-arg VERSION=1.5 .
echo "Docker image tagging to latest."
docker image tag erankitcs/weather-app:$hash erankitcs/weather-app:latest
echo "Docker image puching into Docker hub."
docker image push erankitcs/weather-app:$hash
docker image push erankitcs/weather-app:latest