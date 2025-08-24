#!/usr/bin/env bash
# Day-08:  build docker image
# Author: <Nahid Hasan>
# Date: $(24/08/2025)
set -euo pipefail
IMAGE="${IMAGE_NAME:-day08-node:latest}"
NAME="${CONTAINER_NAME:-day08-node}"
PORT="${PORT:-3000}"
docker run -d --rm --name "$NAME" -p "$PORT:3000" "$IMAGE"
echo "Running: http://localhost:$PORT"
