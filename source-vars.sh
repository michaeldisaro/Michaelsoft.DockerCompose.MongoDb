#!/bin/sh

if [ ! -s ".vars" ]; then
  echo "Variables file not found!"
  echo "You have to create a .vars file containing the following variables:"
  echo "MONGO_CONTAINER_NAME"
  echo "MONGO_INITDB_DATABASE"
  echo "MONGO_INITDB_ROOT_USERNAME"
  echo "MONGO_INITDB_ROOT_PASSWORD"
  echo "MONGO_INITDB_DATABASE_USER_USERNAME"
  echo "MONGO_INITDB_DATABASE_USER_PASSWORD"
  echo "MONGO_INITDB_DATABASE_USER_ROLES"
  exit
fi

. ./.vars

if [ -z "$MONGO_CONTAINER_NAME" ]; then
  echo "Missing MONGO_CONTAINER_NAME variable in .vars!"
  exit
fi

if [ -z "$MONGO_INITDB_DATABASE" ]; then
  echo "Missing MONGO_INITDB_DATABASE variable in .vars!"
  exit
fi

if [ -z "$MONGO_INITDB_ROOT_USERNAME" ]; then
  echo "Missing MONGO_INITDB_ROOT_USERNAME variable in .vars!"
  exit
fi

if [ -z "$MONGO_INITDB_ROOT_PASSWORD" ]; then
  echo "Missing MONGO_INITDB_ROOT_PASSWORD variable in .vars!"
  exit
fi

if [ -z "$MONGO_INITDB_DATABASE_USER_USERNAME" ]; then
  echo "Missing MONGO_INITDB_DATABASE_USER_USERNAME variable in .vars!"
  exit
fi

if [ -z "$MONGO_INITDB_DATABASE_USER_PASSWORD" ]; then
  echo "Missing MONGO_INITDB_DATABASE_USER_PASSWORD variable in .vars!"
  exit
fi

if [ -z "$MONGO_INITDB_DATABASE_USER_ROLES" ]; then
  echo "Missing MONGO_INITDB_DATABASE_USER_ROLES variable in .vars!"
  exit
fi
