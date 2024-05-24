#!/bin/bash

docker stop spring_application || true
docker rm spring_application || true
docker image rm application || true
docker build -t application .
docker run -p 8081:8080 -d --name spring_application application