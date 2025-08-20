#!/bin/bash
# Day 04: Run Nginx Container with Port Mapping
# Author: Nahid Hasan
# Date: 20-08-2025

echo "🐳 Running Nginx container on port 8080 ..."
docker run -d -p 8080:80 --name day04-nginx nginx:latest

echo "🌐 Access it at: http://localhost:8080"
