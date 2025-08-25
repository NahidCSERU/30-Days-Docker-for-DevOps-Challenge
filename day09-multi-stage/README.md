# Day 09 – Multi-Stage Dockerfile (Optimize Size)

This project demonstrates how to use **multi-stage builds** in Docker to optimize the size of a Node.js application image.  
Multi-stage builds allow you to separate the **build stage** and the **runtime stage**, keeping the final image lightweight and production-ready.

---

## 📂 Project Structure
```
day09-multi-stage/
│── src/
│ └── index.js
│── Dockerfile
│── .dockerignore
|── docker-compose.yml
├── package.json
├── package-lock.json
│── README.md
```

## 🐳 Dockerfile Explanation

We are using **two stages**:

1. **Builder Stage** – Install dependencies and build the app.  
2. **Runtime Stage** – Copy only the necessary files from the builder stage, keeping the final image small.

---

## 🚀 Getting Started

### 1️⃣ Clone the repo
```bash
git clone https://github.com/NahidCSERU/30-Days-Docker-for-DevOps-Challenge.git
cd day09-multi-stage
```
### 2️⃣ Build the Docker image
```
docker build -t day09-multi-stage .
```
### 3️⃣ Run the container
```
docker run -it --rm -p 3000:3000 day09-multi-stage
```
Now visit 👉 http://localhost:3000
## 📊 Compare Image Sizes

You can compare single-stage vs multi-stage builds:
```
# Build single-stage (not optimized)
docker build -t single-stage --target builder .

#Check image sizes
docker images
```
You’ll notice the **multi-stage final image is much smaller**.
## 📝 Example Output

When running the container, you should see:
```
Server running on http://localhost:3000
```

And when you visit the browser:
```
Hello from Multi-Stage Docker Build! 🚀
```
## 🔑 Key Takeaways

* Multi-stage builds reduce final image size.

* Only necessary files are included in the runtime stage.

* Best practice for production Docker images.

✅ With this project, you now have a GitHub-ready Node.js Multi-Stage Dockerfile demo that shows optimization in action.