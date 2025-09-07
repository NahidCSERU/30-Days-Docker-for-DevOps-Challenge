#!/bin/bash
# Day-22: Script to monitor Docker container stats
# Author: <Nahid Hasan>
# Date: (07.09.2025)
OUTPUT_FILE="./logs/container-stats.txt"
mkdir -p ./logs

echo "📊 Monitoring Docker container stats..."
docker stats --no-stream --format "table {{.Container}}\t{{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}" > $OUTPUT_FILE

echo "✅ Stats saved in $OUTPUT_FILE"
cat $OUTPUT_FILE
