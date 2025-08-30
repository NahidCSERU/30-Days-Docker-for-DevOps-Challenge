# Day 14: Automate Build with Script (Docker Edition)

## 📌 Overview
This project demonstrates how to **automate the build process** using a shell script (`build.sh`)  
and containerize it with **Docker** for portable, reproducible builds.

---

## 📂 Project Structure
```
day14-build-script/
├── src/
│ └── main.c # Simple C program
├── build.sh # Build automation script
├── clean.sh # Cleaning script
├── Dockerfile # Dockerized build + runtime
└── README.md # Documentation
```
## ⚙️ Steps to Run

### 🔹 Build and Run Natively (Linux)
```
chmod +x build.sh clean.sh
./build.sh
```
### 🔹 Build and Run with Docker
```
# Build image

docker build -t day14-build-script .

# Run container

docker run --rm day14-build-script
```
## ✅ Example Output
```
==============================
🔹 Starting Build Process
==============================
🔹 Cleaning old build files...
🔹 Compiling source files...
🔹 Executing program...
🚀 Automated Build Successful inside Docker!
==============================
✅ Build Completed Successfully
==============================
🚀 Automated Build Successful inside Docker!
==============================
✅ Build Completed Successfully
==============================
```
## 🏗️ Why Docker?

- Ensures **consistent build environment** (no GCC mismatch issue)

- Portable – runs anywhere with Docker

- Separation of **build stage** and **runtime stage** (multi-stage builds)

- Lightweight final image


## 👨‍💻 Author: Nahid Hasan

📅 Day 14 – Linux Projects (Automated Build with Docker)