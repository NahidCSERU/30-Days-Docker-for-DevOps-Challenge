#!/bin/bash
# Usage: ./swarm-join.sh <worker_token> <manager_ip>
WORKER_TOKEN=$1
MANAGER_IP=$2
echo "Joining worker node to Swarm..."
docker swarm join --token $WORKER_TOKEN $MANAGER_IP:2377
