# Day 16: Nginx + PHP App with Docker Compose

## 📌 Overview
This project demonstrates how to deploy a **PHP application** behind **Nginx** using **Docker Compose**.  
It’s a simple PHP app for DevOps practice, showcasing containerization, web server config, and Compose orchestration.

---

## 📂 Project Structure
```
day16-php-nginx/
├── docker-compose.yml
├── app/
│ ├── index.php
│ └── info.php
├── nginx/
│ └── default.conf
└── README.md
```
## 🚀 Usage

### 1. Clone the repo:
```
git clone https://github.com/NahidCSERU/30-Days-Docker-for-DevOps-Challenge.git
cd day16-php-nginx
```
### 2. Start containers:
```
docker-compose up -d
```
### 3. Visit in browser:
```
http://localhost
http://localhost/info.php
```
### 4. Stop containers:
```
docker-compose down
```
## 🛠️ Tools Used

- Docker

- Docker Compose

- Nginx

- PHP 8.2
## ✅ Sample Output

- `http://localhost` → "Hello, World from PHP!"

- `http://localhost/info.php` → PHP info page