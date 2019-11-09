#!/usr/bin/env bash
set -e

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
if [ ! "$PWD" = "$SCRIPTDIR" ];
then
  cd "$SCRIPTDIR" || exit
fi

./disable.sh

docker-compose --compatibility up -d --no-recreate
docker-compose ps

ufw allow 8080/tcp
