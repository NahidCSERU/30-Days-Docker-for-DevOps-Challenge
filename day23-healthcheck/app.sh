#!/bin/sh
# Simple dummy web server using busybox httpd

echo "🚀 Starting simple web server..."
mkdir -p /www
echo "Hello from Day 23: Docker Healthcheck Demo!" > /www/index.html

# Start HTTP server
httpd -f -p 8080
