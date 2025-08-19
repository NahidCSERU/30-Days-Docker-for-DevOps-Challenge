#!/bin/bash
# Day-02: Build image and run Docker container
# Author: <Nahid Hasan>
# Date: $(19/08/2025)

IMAGE_NAME="day03-flask-app"
CONTAINER_NAME="day03-flask-container"

# Build image
docker build -t $IMAGE_NAME ..

# Run container
docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME

echo "Container '$CONTAINER_NAME' is running. Visit http://localhost:5000"
