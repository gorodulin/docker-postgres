#!/bin/bash

source "${BASH_SOURCE%/*}/config"

exe docker logs -f $PG_CONTAINER_NAME
