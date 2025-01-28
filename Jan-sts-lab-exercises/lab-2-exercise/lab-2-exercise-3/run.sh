#!/usr/bin/sh

# Starting Up a configured Prometheus
MSYS_NO_PATHCONV=1 docker run --rm -p 9090:9090 -v "$(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml" -d --name prometheus-container-test prom/prometheus && echo "Prometheus now running on localhost:9090"

# Starting Up grafana
docker run --rm -d -p 3000:3000 --name grafana-container grafana/grafana && echo "Grafana started up on localhost:3000"

