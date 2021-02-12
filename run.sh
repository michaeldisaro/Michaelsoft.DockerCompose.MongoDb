#!/bin/sh
. ./source-vars.sh
docker container stop "$MONGO_CONTAINER_NAME" > /dev/null 2> /dev/null
docker container rm "$MONGO_CONTAINER_NAME" > /dev/null 2> /dev/null
sudo rm ./init-mongo.js
echo "db=db.getSiblingDB('$MONGO_INITDB_DATABASE');db.createUser({user:'$MONGO_INITDB_DATABASE_USER_USERNAME',pwd:'$MONGO_INITDB_DATABASE_USER_PASSWORD',roles:[{role:'$MONGO_INITDB_DATABASE_USER_ROLES',db:'$MONGO_INITDB_DATABASE'}]});" > ./init-mongo.js
sudo rm -rf /"$MONGO_CONTAINER_NAME"
sudo mkdir -p /"$MONGO_CONTAINER_NAME"/data
sudo mkdir -p /"$MONGO_CONTAINER_NAME"/tmp
sudo chmod 777 /"$MONGO_CONTAINER_NAME"/tmp
docker-compose --env-file=./.vars up -d
