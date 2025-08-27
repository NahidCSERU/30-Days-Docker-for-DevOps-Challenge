#!/bin/bash
# Author: <Nahid Hasan>
# Date: $(27/08/2025)

# Variables
IMAGE_NAME="nahidaws/day11-flask-app"
TAG="v1.0"

# 1. Build the Docker image
docker build -t $IMAGE_NAME:$TAG ./app

# 2. Login to Docker Hub (interactive)
docker login

# 3. Push the image
docker push $IMAGE_NAME:$TAG

echo "Docker image pushed: $IMAGE_NAME:$TAG"
