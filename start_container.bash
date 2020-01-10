#!/bin/bash

source "${BASH_SOURCE%/*}/config"

exe mkdir -p $PG_DATA_VOLUME_PATH
exe chmod 777 $PG_DATA_VOLUME_PATH

# Run container

exe docker run \
  --rm \
  --detach \
  -p $PG_EXPOSED_PORT:5432 \
  -e POSTGRES_USER=$PG_CUSTOM_SUPERUSER_NAME \
  -e POSTGRES_PASSWORD=$PG_CUSTOM_SUPERUSER_PASSWORD \
  --name=$PG_CONTAINER_NAME \
  --hostname=$PG_CONTAINER_HOSTNAME \
  --volume=$PG_DATA_VOLUME_PATH:/var/lib/postgresql/data \
  --network=$PG_NETWORK_NAME \
  postgres:$PG_VERSION
