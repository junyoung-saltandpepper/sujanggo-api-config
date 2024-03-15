#!/bin/zsh
docker-compose -f ./mysql/docker-compose.yml down
docker-compose -f ./mysql/docker-compose.yml up -d