#!/usr/bin/env bash

docker-compose stop -t 60
docker-compose rm -f

ufw deny 25565/tcp
