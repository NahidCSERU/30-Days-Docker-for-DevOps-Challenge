#!/usr/bin/env bash
# Day-08:  build docker image
# Author: <Nahid Hasan>
# Date: $(24/08/2025)

set -euo pipefail
IMAGE="${IMAGE_NAME:-day08-node:latest}"
docker build -t "$IMAGE" .
echo "Built image: $IMAGE"
