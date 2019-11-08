#!/usr/bin/env bash

docker-compose stop -t 60
docker-compose rm -f

mkdir -p /opt/minecraft
chown -R 1000:1000 /opt/minecraft

ufw allow 25565/tcp

docker-compose up -d --no-recreate
docker-compose ps
