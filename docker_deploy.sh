#!/bin/bash

chmod +x docker_deploy.sh
docker stop spring_application || true
docker rm spring_application || true
docker build -t application .
docker run -p 8081:8081 -d --name spring_application application