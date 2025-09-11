# Day 25: CI/CD with GitHub Actions (Build & Push Image)

This project demonstrates a **CI/CD pipeline** using GitHub Actions to **build a Docker image** and **push it to Docker Hub** automatically when changes are pushed to the `main` branch.

---

## 📌 How It Works
1. **Flask App** → A simple web app running on port 5000.
2. **Dockerfile** → Defines how to containerize the app.
3. **GitHub Actions Workflow**:
   - Builds Docker image
   - Pushes image to Docker Hub

---

## 🚀 Setup

### 1. Clone repo
```
git clone https://github.com/NahidCSERU/30-Days-Docker-for-DevOps-Challenge.git
cd day25-github-actions
```
### 2. Configure GitHub Secrets

Go to **Repo → Settings → Secrets → Actions** and add:

`DOCKER_USERNAME` → Your Docker Hub username

`DOCKER_PASSWORD` → Your Docker Hub access token or password

### 3. Push Code
```
git add .
git commit -m "Initial commit - Day 25 CI/CD"
git push origin main
```
### 4. Verify Pipeline

Check **Actions tab** in GitHub. If successful, your image will be available on Docker Hub:
```
docker pull <your-docker-username>/day25-github-actions:latest
```
## 📖 Summary

- **GitHub Actions** automates the build & push process.

- Every commit to `main` triggers the pipeline.

- Docker images are stored in Docker Hub for deployment.

This is a real-world CI/CD example using GitHub Actions + Docker.