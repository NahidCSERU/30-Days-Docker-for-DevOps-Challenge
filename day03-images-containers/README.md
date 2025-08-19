# Day 3: Docker Images vs Containers

This project demonstrates the difference between **Docker Images** and **Docker Containers** using a simple Flask app.

---

## Project Structure
- `Dockerfile` → Builds the Docker image
- `app/app.py` → Simple Flask application
- `scripts/run_container.sh` → Build and run the container
- `scripts/list_images_containers.sh` → List images & running containers

---

## ▶️ How to Run

1. **Make scripts executable:**
```bash
chmod +x scripts/*.sh
```
2. **Build and run the container:**  
```
cd scripts  
./run_container.sh
``` 
3. **Check running containers and images:**
```
./list_images_containers.sh
```
4. **Open in browser:**
```
http://localhost:5000
```
**You should see:** "Hello from Docker Container!"
## 📝 Key Concepts

* **Docker Image** → Read-only template used to create containers

* **Docker Container** → Running instance of an image

* docker images → Lists all images on local machine

* docker ps → Lists running containers

## 💡 Real-Life DevOps Use Case

* Build consistent environments using Docker images

* Run isolated microservices as containers

* Easily spin up multiple containers for testing and deployment