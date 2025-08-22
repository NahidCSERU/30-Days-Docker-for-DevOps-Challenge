#!/bin/bash
# Day 06: Run MySQL with Environment Variables
# Author: Nahid Hasan
# Date: (22.08.2025)

echo "🚀 Starting MySQL container with environment variables..."

# Step 1: Build & Run MySQL
docker-compose up -d

# Step 2: Wait for MySQL to start
echo "⏳ Waiting for MySQL to initialize..."
sleep 15

# Step 3: Show running containers
echo "✅ Containers running:"
docker ps | grep mysql_env_demo

# Step 4: Test MySQL connection (App User)
echo "🔑 Trying to connect with app_user..."
docker exec -it mysql_env_demo mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE
