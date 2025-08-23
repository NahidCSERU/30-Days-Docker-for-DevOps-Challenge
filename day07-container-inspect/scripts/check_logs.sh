#!/bin/bash
# Day-07: Show logs of running container
# Author: <Nahid Hasan>
# Date: $(/08/2025)

CONTAINER_NAME=$1

if [ -z "$CONTAINER_NAME" ]; then
  echo "Usage: ./scripts/check_logs.sh <container_name>"
  exit 1
fi

docker logs -f $CONTAINER_NAME
