#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image order-service, dan memiliki tag latest
docker build -t ghcr.io/fahram/order-service:latest .

# Login ke Github Packages
echo $PASSWORD_GITHUB | docker login ghcr.io --username fahram --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/fahram/order-service:latest