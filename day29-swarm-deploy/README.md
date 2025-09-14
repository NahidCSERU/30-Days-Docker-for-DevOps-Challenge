# Day 29 - Docker Swarm Deployment

This project demonstrates deploying a **sample web app** using **Docker Swarm**.

## Features
- NGINX web server
- Simple HTML page
- Swarm cluster deployment with 3 replicas
- Overlay network for inter-node communication

## Usage

**1. Initialize Swarm:**
```
bash swarm-init.sh
```
**2. Build Docker image:**
```
docker build -t day29-webapp .
```

**3. Deploy the stack:**
```
docker stack deploy -c docker-compose.yml day29app
```
**4. Check services:**
```
docker service ls
```
**5. Open in browser:**
```
http://<node-ip>:8080
```
**6. Scale service (optional):**
```
docker service scale day29app_web=5
```