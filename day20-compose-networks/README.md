# Day 20: Networks in Docker Compose (bridge, host)

## 📌 Project Overview
This project demonstrates how to configure **different Docker networks** (`bridge` and `host`) in Docker Compose.

### 🔑 Concepts Covered
- Default bridge network in Compose
- Using custom bridge networks
- Using host network mode

---

## 📂 Project Files
- `docker-compose.bridge.yml` → Runs app + db in a custom bridge network
- `docker-compose.host.yml` → Runs app directly on host network
- `app/` → Simple Python Flask app
- `db/` → Dummy DB container (uses Alpine + netcat)

---

## 🚀 How to Run

### 1. Using Bridge Network
```
docker compose -f docker-compose.bridge.yml up --build
```
- App runs in `bridge-net`

- DB runs in `bridge-net`

- App connects to DB using container name (`db`)   

Check app:   
    ```
    curl http://localhost:5000
    ```
### 2. Using Host Network (Linux only)
```
docker compose -f docker-compose.host.yml up --build
```

- App runs directly on host network

- Accessible at `http://localhost:5000`

- No isolation (shares host network stack)   
## 🛠️ Clean Up
```
docker compose -f docker-compose.bridge.yml down
docker compose -f docker-compose.host.yml down
```
## 📊 Example Output

- **Bridge Mode:** App connects to DB using Docker DNS (db:5432)

- **Host Mode:** App runs on host network, accessible at localhost:5000 without Docker proxy.

This project is useful for learning **network isolation in Docker Compose.**