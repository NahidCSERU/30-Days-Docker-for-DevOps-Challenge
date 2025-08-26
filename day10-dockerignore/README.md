# 🚀 Day 10: .dockerignore in Docker

## 📌 Overview
In this project, I demonstrate the use of **.dockerignore** file to reduce Docker image size, improve build performance, and keep unwanted files out of the final image.  

This is part of my **[30 Days Docker for DevOps Challenge](https://github.com/NahidCSERU/30-Days-Docker-for-DevOps-Challenge)**.

---

## 📂 Project Structure
```
day10-dockerignore/
│── app/
│ └── app.py
│── requirements.txt
│── Dockerfile
│── .dockerignore
│── README.md
```
## ⚙️ How to Run

### 1️⃣ Build the Docker image
```
docker build -t day10-dockerignore .
```
### 2️⃣ Run the container
```
docker run -p 5000:5000 day10-dockerignore
```
### 3️⃣ Test in browser
Visit 👉 http://localhost:5000

You should see:
```
🚀 Day 10 - Docker .dockerignore Demo!
```
## 📑 Why .dockerignore is Important?

* Excludes unnecessary files (e.g., `.git`, `venv`, cache files)

* Makes **Docker image smaller**

* **Speeds up builds**

* Keeps your image **secure & clean**
## 🌟 Example

Without `.dockerignore`, your `.git` history, IDE configs, or even `venv/` might get copied into the image. That makes the image **huge** and unsafe.

Using `.dockerignore`, we only copy what’s needed: **app code + requirements**.

## 🏆 Learnings

* Always use `.dockerignore` in real-world projects

* Keep your Docker images lean and production-ready