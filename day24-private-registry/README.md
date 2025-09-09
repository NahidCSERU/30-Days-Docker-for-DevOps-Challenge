# Day 24: Private Docker Registry Setup

This project demonstrates how to set up a **private Docker Registry** using Docker Compose.  
It allows you to push and pull Docker images securely in your own environment.

## 🔹 Features
- Private Docker Registry running on port `5000`
- Persistent storage for images
- Basic authentication (username/password)
- TLS support (optional)

## Run
```
docker-compose up -d
```
## Authentication

Create a password file (for user `admin`):
```
mkdir auth
docker run --rm --entrypoint htpasswd httpd:2 -Bbn admin mypassword > auth/htpasswd
```
## Push & Pull Images
```
# Tag an image
docker tag nginx:latest localhost:5000/nginx

# Login to registry
docker login localhost:5000

# Push image
docker push localhost:5000/nginx

# Pull image
docker pull localhost:5000/nginx
```
## Cleanup
```
docker-compose down -v
```
