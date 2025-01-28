#!/usr/bin/sh

echo "Creating a docker volume"
docker volume create docker-volume-test

echo "Running Nginx with a volumne"
docker run -d --name nginx-starter -p 8080:8080 -v docker-volume-test:/usr/share/nginx/html nginx ls /usr/share/nginx/html

echo "Remove volumne"
docker rm nginx-starter
docker volume remove docker-volume-test
