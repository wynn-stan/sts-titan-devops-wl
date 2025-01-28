#!/usr/bin/sh

# Stop prometheus container
docker kill prometheus-container-test

# Stop Grafana container
docker kill grafana-container
