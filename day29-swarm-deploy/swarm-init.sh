#!/bin/bash
# Initialize Swarm master
# Author: <Nahid Hasan>
# Date: 14.09.2025

docker swarm init --advertise-addr $(hostname -I | awk '{print $1}')

# Create overlay network
docker network create --driver overlay webnet

echo "Swarm initialized and overlay network 'webnet' created!"
