# Day 06: Environment Variables – Run MySQL with env vars

## 📌 Overview
In this demo, we use **Docker Compose** with an `.env` file and a `run.sh` script to configure & run a MySQL container.  
This is a common DevOps practice to keep **secrets outside code** for security and portability.

---

## 📂 Project Structure
```
day06-env-vars/
│── docker-compose.yml # Docker Compose configuration
│── .env # Environment variables
│── run.sh # Bash script to run project
│── README.md # Documentation
```
## ⚙️ How to Run

### 1. Clone the repository
```bash
git clone https://github.com/NahidCSERU/30-Days-Docker-for-DevOps-Challenge.git
cd day06-env-vars
```
### 2. Make script executable
```
chmod +x run.sh
```
### 3. Run the project
```
./run.sh
```
### 4. Verify MySQL is running
```
docker ps
```
### 5. Connect to MySQL manually
```
docker exec -it mysql_env_demo mysql -uapp_user -papp_pass123 app_db
```
## 🛠️ Environment Variables

The `.env` file defines:

* `MYSQL_ROOT_PASSWORD` → Root password for MySQL

* `MYSQL_DATABASE` → New database created at startup

* `MYSQL_USER` → Application user

* `MYSQL_PASSWORD` → Password for app user

## 📖 Why this is useful?

* Keeps **sensitive info outside code**

* Easy to manage multiple environments (dev, staging, prod)

* Clean & reusable DevOps workflow

With this setup, you now have a **production-like MySQL container setup** using environment variables and automation script.