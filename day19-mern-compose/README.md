# Day 19: MERN Stack with Docker Compose

## 📌 Overview
This project demonstrates a **MERN Stack (MongoDB, Express, React, Node.js)** app using Docker Compose.

## 🛠️ Folder Structure
```
day19-mern-compose/
├── backend/ → Node.js + Express + MongoDB API
├── frontend/ → React frontend
├── docker-compose.yml
└── README.md
```
## 🚀 How to Run

1. Clone the repo:
```
git clone https://github.com/NahidCSERU/30-Days-Docker-for-DevOps-Challenge.git
cd day19-mern-compose
```
2. Start with Docker Compose:
```
docker-compose up --build
```
3. Open:

- Frontend → `http://localhost:3000`

- Backend → `http://localhost:5000`

- MongoDB → `localhost:27017`

## 🧪 Test
- Add an item from frontend input box

- Items will be stored in **MongoDB** and displayed on frontend

## ⚡ Notes
- Backend talks to MongoDB service via `mongo:27017`

- Frontend communicates with backend at `http://localhost:5000`

- Uses Docker volumes for MongoDB persistence