# Day 23 – Docker Healthcheck in Dockerfile

This project demonstrates how to add a **HEALTHCHECK** to a Dockerfile.

##  What it does
- Builds a simple Alpine-based image with a minimal HTTP server
- Adds a `HEALTHCHECK` instruction that tests if the server is alive
- Exposes port `8080` and serves a test page

##  How to Run
```
# Build the image
docker build -t day23-healthcheck .

# Run the container
docker run -d --name healthcheck-demo -p 8080:8080 day23-healthcheck

# Check container health status
docker ps
```
##  Example Output

`docker ps` should show:
```
STATUS: healthy
```
If the server fails, Docker will show:
```
STATUS: unhealthy
```
##  Use Case

Docker healthchecks are essential in **DevOps pipelines** and **orchestration tools (Docker Compose, Kubernetes, ECS)** to ensure only healthy containers serve traffic.
