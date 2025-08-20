# Day 04: Run Nginx Container (Port Mapping)

This project demonstrates how to run an **Nginx container** in Docker with port mapping.

---

## 📂 Project Structure
```
day04-nginx-container/
│── Dockerfile # Custom Nginx image
│── index.html # Sample web page
│── run-nginx.sh # Script to run container
│── README.md # Documentation
```

## 🚀 Steps to Run

### 1️⃣ Build Docker Image
```bash
docker build -t day04-nginx .
```
### 2️⃣ Run Nginx Container
```
./run-nginx.sh
```
**or manually:**  
```
docker run -d -p 8080:80 --name day04-nginx day04-nginx
```
### 3️⃣ Access in Browser

Open: http://localhost:8080
## 🛑 Stop and Remove Container
```
docker stop day04-nginx
docker rm day04-nginx
```
## ✅ Output

When you visit `http://localhost:8080`, you should see:
```
Nginx is running inside Docker!
Welcome to Day 04 of Docker learning.
```