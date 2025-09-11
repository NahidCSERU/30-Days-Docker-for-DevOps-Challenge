# Day 26: Reverse Proxy with Nginx + 2 Services

This project demonstrates how to set up an **Nginx reverse proxy** in front of two Flask services using **Docker Compose**.

---

## 📌 Architecture
- **Service A** → Flask app running on port 5000
- **Service B** → Flask app running on port 5000
- **Nginx Reverse Proxy** → Routes requests to respective services:
  - `http://localhost:8080/service-a` → Service A
  - `http://localhost:8080/service-b` → Service B

---

## 🚀 Setup

### 1. Clone repo
```
git clone https://github.com/NahidCSERU/30-Days-Docker-for-DevOps-Challenge.git
cd day26-reverse-proxy
```
### 2. Start services
```
docker-compose up --build
```
### 3. Access services

- Service A → http://localhost:8080/service-a

- Service B → http://localhost:8080/service-b
## 🛠️ Tech Stack

- **Flask** → Web framework for services

- **Nginx** → Reverse proxy

- **Docker Compose** → Container orchestration

## 📖 Summary

This setup shows how to use **Nginx as a reverse proxy** to route traffic between multiple backend services.
It’s a common pattern in **microservices** and **containerized environments**.