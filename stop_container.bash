#!/bin/bash

source "${BASH_SOURCE%/*}/config"

exe docker stop $PG_CONTAINER_NAME
