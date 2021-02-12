#!/bin/sh
. ./source-vars.sh
docker container stop "$MONGO_CONTAINER_NAME" > /dev/null 2> /dev/null
docker container rm "$MONGO_CONTAINER_NAME" > /dev/null 2> /dev/null
docker image prune -a -f
docker volume prune -f
sudo rm -rf /"$MONGO_CONTAINER_NAME"
