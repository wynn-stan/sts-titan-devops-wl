#!/bin/sh

# Start Nginx with configurations
docker run -p 8080:80 -d -e NGINX_HOST=localhost --name web-server nginx

# Check container logs
docker logs web-server

# Exec into container and modify index.html with a mounted volumne
docker exec -it web-server sh -c "echo 'Modified HTML Document' > /usr/share/nginx/html/index.html && exit"

# Stop Web Server
docker stop web-server

# Start Container again
docker start web-server

# Remove container
docker stop web-server && docker rm web-server

# List containers to ensure it's removed
docker ps -a | grep web-server
