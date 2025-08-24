#!/usr/bin/env bash
# Day-08: stop container
# Author: <Nahid Hasan>
# Date: $(24/08/2025)
set -euo pipefail
NAME="${CONTAINER_NAME:-day08-node}"
docker stop "$NAME" || true
