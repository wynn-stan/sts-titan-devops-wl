#!/usr/bin/sh

# Build the flask container
docker build -t docker-flask-test .

# Run the flask container
docker run --rm -d --name flask-container-test docker-flask-test

# Create a Bridge Network for the Flask and NGINX Containers
docker network create nginx-flask-bridge-network

# Connect the Flask Container
docker network connect nginx-flask-bridge-network flask-container-test

# Run the NGINX container and add the Bridge Network
MSYS_NO_PATHCONV=1 docker run --rm -p 8080:80 --network nginx-flask-bridge-network --name nginx-container-test -v "$(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro" nginx

# No need to map ports on the flask container. The Nginx container can access it's port inside the nginx-flask-bridge-network

# clean up
docker kill flask-container-test
docker network rm nginx-flask-bridge-network 
