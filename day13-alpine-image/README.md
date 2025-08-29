# Day 13: Alpine Based Images (Lightweight)

This project demonstrates the difference between **Ubuntu-based** and **Alpine-based** Docker images using a simple Flask app.

## Project Structure
```
day13-alpine-image/
├── app/
│ └── app.py
├── Dockerfile.ubuntu
├── Dockerfile.alpine
├── requirements.txt
└── README.md
```
## Build & Run

### Ubuntu-based image
```
docker build -t flask-ubuntu -f Dockerfile.ubuntu .
docker run -p 5000:5000 flask-ubuntu
```
Check in browser: http://localhost:5000

### Alpine-based image
```
docker build -t flask-alpine -f Dockerfile.alpine .
docker run -p 5000:5000 flask-alpine
```
Check in browser: http://localhost:5000

## Image Size Comparison
* **Ubuntu-based (python:3.10)** → ~350MB+

* **Alpine-based (python:3.10-alpine)** → ~50MB

✅ Same functionality, but Alpine is much smaller and faster to pull/deploy.

## Why Alpine?
* Lightweight & minimal

* Faster deployments (smaller size)

* Fewer security vulnerabilities

* Perfect for cloud & CI/CD pipelines
