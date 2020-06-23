#!/bin/bash
docker kill webserver > /dev/null 2>&1
docker rm webserver > /dev/null 2>&1
docker-compose up -d
