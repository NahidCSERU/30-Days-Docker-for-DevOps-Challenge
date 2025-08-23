# Day 7: Inspect Containers (logs, stats, exec)

This project demonstrates how to **inspect running containers** using logs, stats, and exec commands.

---

## 📌 Steps

### 1️⃣ Build & Run Container
```bash
docker build -t inspect-demo .
docker run -d --name demo -p 5000:5000 inspect-demo
```
### 2️⃣ Check Container Logs
```
./scripts/check_logs.sh demo
```

👉 Follows application logs (`print` from `app.py`).
### 3️⃣ Inspect Resource Usage
```
./scripts/check_stats.sh
```
👉 Shows CPU %, Memory, and Network usage.
### 4️⃣ Exec into Container
```
./scripts/exec_shell.sh demo
```
👉 Opens an interactive shell inside container.
## 📌 Endpoints

* `http://localhost:5000/` → Hello message

* `http://localhost:5000/loop` → Generates logs in console

## 📖 Learning Notes

* `docker logs` → View logs of container

* `docker stats` → Monitor real-time CPU, Memory usage

* `docker exec` → Run commands inside container

✅ With this repo you can easily demonstrate professional Docker container inspection techniques.