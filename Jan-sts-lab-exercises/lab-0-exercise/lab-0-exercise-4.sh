#!/usr/bin/sh

echo 
echo "Create a docker container without starting it"
docker create -it --name docker-ubuntu-test-2 ubuntu echo "Hello from Ubuntu Docker"

echo
echo "Stop a running docker container"
docker start docker-ubuntu-test-2
docker stop docker-ubuntu-test-2

echo 
echo "Restart a docker container"
docker restart docker-ubuntu-test-2
docker stop docker-ubuntu-test-2

echo 
echo "Remove a docker container"
docker rm docker-ubuntu-test-2
