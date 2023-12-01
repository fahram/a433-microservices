#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image karsajobs, dan memiliki tag latest
docker build -t karsajobs:latest .

# Login ke Github Packages
echo $PASSWORD_GITHUB | docker login ghcr.io --username fahram --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/fahram/karsajobs:latest