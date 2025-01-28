#!/usr/bin/sh

echo "List of running containers"
docker ps

echo 
echo "List of all containers, running or stopped"
docker ps -a

echo 
echo "List of all docker images available"
docker images

echo 
echo "Pulling NGINX Image"
docker pull nginx

echo 
echo "Inspecting NGINX Image"
docker inspect nginx
