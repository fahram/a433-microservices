#!/bin/bash

docker build -t item-app:v1 .

docker images

docker tag item-app:v1 fahram/item-app:v1

echo $PASSWORD_DOCKER_HUB | docker login -u fahram --password-stdin

docker push fahram/item-app:v1