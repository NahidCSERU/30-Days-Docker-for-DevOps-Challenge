#!/bin/bash
# Day 07: Execute interactive shell into container
# Author: <Nahid Hasan>
# Date: $(/08/2025)

CONTAINER_NAME=$1

if [ -z "$CONTAINER_NAME" ]; then
  echo "Usage: ./scripts/exec_shell.sh <container_name>"
  exit 1
fi

docker exec -it $CONTAINER_NAME /bin/bash
