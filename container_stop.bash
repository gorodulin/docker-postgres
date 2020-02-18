#!/bin/bash

source "${BASH_SOURCE%/*}/config"

exe docker update --restart=no $PG_CONTAINER_NAME
exe docker stop $PG_CONTAINER_NAME
exe docker rm $PG_CONTAINER_NAME
