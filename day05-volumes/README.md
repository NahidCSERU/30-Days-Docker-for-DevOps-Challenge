# Day 5 – Volume Mount Basics

## 📌 Project Overview
This project demonstrates **Docker Volume Mount** by serving a **local HTML file** inside an **Nginx container**.

## 📂 Repo Structure
```
day05-volumes/
│── Dockerfile # Custom Nginx setup
│── index.html # Local HTML to serve
│── run.sh # Build & Run script
│── README.md # Documentation
```
## 🚀 Steps to Run
### 1️⃣ Build Docker Image
```bash
docker build -t day05-nginx-volume .
```

### 2️⃣ Run Container with Volume Mount
```
docker run -d --name day05-nginx-container \
  -p 8080:80 \
  -v $(pwd)/index.html:/usr/share/nginx/html/index.html \
  day05-nginx-volume
```
### 3️⃣ Access the App
**Open browser:**
```
http://localhost:8080
```
You will see your **local HTML** file served by **Nginx inside Docker**.

### 📖 What You Learn
* How to **mount local files** into Docker containers

* Basics of **bind mounts vs volumes**

* Serving static content with **Nginx in Docker**

### ✅ Professional DevOps-ready project – No docker-compose used.