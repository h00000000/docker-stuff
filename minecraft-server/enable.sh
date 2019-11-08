#!/usr/bin/env bash

docker-compose stop -t 60
docker-compose rm -f

mkdir -p /opt/minecraft/plugins/bStats/
echo "enabled: false" > /opt/minecraft/plugins/bStats/config.yml

ufw allow 25565/tcp

docker-compose up -d --no-recreate
docker-compose ps
