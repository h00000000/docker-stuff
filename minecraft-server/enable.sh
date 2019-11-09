#!/usr/bin/env bash
set -e

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
if [ ! "$PWD" = "$SCRIPTDIR" ];
then
  cd "$SCRIPTDIR" || exit
fi

./disable.sh

mkdir -p /opt/minecraft/plugins/bStats/
echo "enabled: false" > /opt/minecraft/plugins/bStats/config.yml

docker-compose --compatibility up -d --no-recreate
docker-compose ps

ufw allow 25565/tcp
