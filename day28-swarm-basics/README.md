# Day 28 – Docker Swarm Basics

## Overview
This project demonstrates basic Docker Swarm concepts including:
- Initializing a Swarm cluster
- Joining worker nodes
- Scaling services across nodes

Docker Swarm allows you to orchestrate Docker containers, manage services, and scale applications effortlessly.


## Prerequisites
- Docker installed on all nodes
- At least 2 machines (1 manager, 1 worker) or multiple terminal instances



## Setup

### 1. Initialize Swarm
```
bash scripts/swarm-init.sh
```
This will initialize the current machine as a Swarm manager.
### 2. Join Worker Nodes

```
bash scripts/swarm-join.sh <worker_token> <manager_ip>
```

Replace `<worker_token>` and `<manager_ip>` with your Swarm manager info.

### 3. Deploy Services

```
docker stack deploy -c docker-compose.yml myapp
```
### 4. Scale Services

```
bash scripts/swarm-scale.sh <service_name> <replicas>
```
Example:
```
bash scripts/swarm-scale.sh app1 5
```
## Scripts

- **swarm-init.sh** → Initializes Swarm manager

- **swarm-join.sh** → Joins worker node to the Swarm

- **swarm-scale.sh** → Scales a service up or down

## Key Commands

- `docker swarm init` → Initialize Swarm manager

- `docker swarm join --token <token>` → Join worker node

- `docker service ls` → List all running services

- `docker service scale <service>=<replicas>` → Scale service replicas

- `docker node ls` → List nodes in the Swarm