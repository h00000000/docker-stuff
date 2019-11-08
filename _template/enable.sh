#!/usr/bin/env bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
if [ ! "$PWD" = "$SCRIPTDIR" ];
then
  cd "$SCRIPTDIR" || exit
fi

./disable.sh

# volume folder
#mkdir -p /opt/<VOLUME>

docker-compose up -d --no-recreate
docker-compose ps

# ufw rule
#ufw allow <PORT>/tcp
