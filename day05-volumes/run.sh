#!/bin/bash
# Day 05: Script to build and run Nginx with volume mount
# Author: <Nahid Hasan>
# Date: $(21/08/2025)

IMAGE_NAME="day05-nginx-volume"

# Build docker image
docker build -t $IMAGE_NAME .

# Run container with volume mount
docker run -d --name day05-nginx-container \
  -p 8080:80 \
  -v $(pwd)/index.html:/usr/share/nginx/html/index.html \
  $IMAGE_NAME
