# Day 15 – Intro to Docker Compose (YAML Basics)

This project demonstrates the basics of **Docker Compose** using a simple multi-container setup:

- **Flask (Python)** web application

- **MySQL** database

- Orchestrated with **docker-compose.yml**

## 📂 Project Structure
```
day15-compose-basic/
│── docker-compose.yml
│── app/
│   ├── Dockerfile
│   ├── requirements.txt
│   └── app.py
└── db_data/   # Persistent MySQL data (volume)
```
## ⚡ Features

- Flask web application running inside a container

- MySQL database running as a separate container

- Persistent storage for database using Docker volumes

- Environment variables for service configuration

- Easy orchestration with `docker-compose`
## 🛠️ Setup & Run

### 1. Clone the repository
```
git clone https://github.com/NahidCSERU/30-Days-Docker-for-DevOps-Challenge.git
cd day15-compose-basic
```
### 2. Build and start services
```
docker-compose up --build
```
### 3. Access the application

- Flask app → http://localhost:5000

- Users route → http://localhost:5000/users

## 📌 Endpoints
- / → Returns a welcome message from Flask

- /users →

    - Creates a table (if not exists)

    - Inserts demo users

    - Fetches and returns user data from MySQL

## 🐳 Docker Compose Services
### Web (Flask)
- Port: `5000:5000`

- Connects to MySQL via environment variables

### Database (MySQL)
- Port: `3306:3306`

- Root password: `root`

- Default database: `mydb`

- Data persisted in `./db_data`

### 🔧 Useful Commands
- Start containers:
```
docker-compose up -d
```
- Stop containers:
```
docker-compose down
```
- Check running services:
```
docker ps
```
- View logs:
```
docker-compose logs -f
```
## 🎯 Learning Goals
- Understand YAML syntax for Docker Compose

- Learn how to define multiple services in a single docker-compose.yml

- Practice networking between containers

- Persist database data with Docker volumes

