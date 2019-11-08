#!/usr/bin/env bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
if [ ! "$PWD" = "$SCRIPTDIR" ];
then
  cd "$SCRIPTDIR" || exit
fi

./disable.sh

docker-compose build
docker-compose --compatibility up -d --no-recreate
docker-compose ps

ufw allow 2022/tcp
