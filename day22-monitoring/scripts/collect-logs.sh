#!/bin/bash
# Day-22: collect Docker container logs
# Author: <Nahid Hasan>
# Date: (07.09.2025)

OUTPUT_DIR="./logs"
mkdir -p $OUTPUT_DIR

echo "📂 Collecting Docker logs..."
for container in $(docker ps --format '{{.Names}}'); do
  echo "👉 Saving logs for $container"
  docker logs --tail 100 $container &> "$OUTPUT_DIR/${container}.log"
done

echo "✅ Logs collected in $OUTPUT_DIR/"
