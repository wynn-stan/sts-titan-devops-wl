#!/usr/bin/sh

# Stop prometheus container
docker kill prometheus-container-test

# Stop Grafana container
docker kill grafana-container

# Stop node container
docker kill docker-node-container-test

# Remove network
docker network rm prometheus-grafana-node-network

