#!/bin/bash
docker kill webserver > /dev/null 2>&1
docker rm webserver > /dev/null 2>&1
#docker build -t apacheam:v1
#docker-compose up -d
docker run -dit -p 80:80 -p 443:443 --name webserver apacheam:v1
