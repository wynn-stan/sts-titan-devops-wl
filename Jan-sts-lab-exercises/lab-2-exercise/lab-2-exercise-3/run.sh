#!/usr/bin/sh

# build custom node app
docker build -t docker-node-app-test:v0.0 ./node-app-test-1

# Networks
docker network create prometheus-grafana-node-network

# Starting up node app container
docker run -p 8001:8001 --rm -d --network prometheus-grafana-node-network --name docker-node-container-test docker-node-app-test:v0.0

# Starting Up a configured Prometheus
MSYS_NO_PATHCONV=1 docker run --rm -p 9090:9090 --network prometheus-grafana-node-network -v "$(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml" -d --name prometheus-container-test prom/prometheus && echo "Prometheus now running on localhost:9090"

# Starting Up grafana
docker run --rm -d -p 3000:3000 --network prometheus-grafana-node-network --name grafana-container grafana/grafana && echo "Grafana started up on localhost:3000"