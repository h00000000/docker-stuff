#!/usr/bin/env bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
if [ ! "$PWD" = "$SCRIPTDIR" ];
then
  cd "$SCRIPTDIR" || exit
fi

docker-compose stop -t 60
docker-compose rm -f

ufw delete allow 25565/tcp
