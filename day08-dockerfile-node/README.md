# Day 8 – Write First Dockerfile (simple Node.js app)

This repo shows a minimal Express app packaged in a small, secure Docker image.

## 🚀 Quick Start

### 1) Build
```
./scripts/build.sh
```
### 2) Run
```
./scripts/run.sh
```
### 3) Test
```
curl http://localhost:3000/health
curl http://localhost:3000/
```
## 🧱 What’s inside?

* **Node 20 Alpine** base image

* Non-root user

* `NODE_ENV=production` for lean installs

* Small `.dockerignore` to keep image size down

* Health & sample endpoints
## 🛠️ Build/Run manually
```
docker build -t day08-node:latest .
docker run -d --rm --name day08-node -p 3000:3000 day08-node:latest
```
## 🧪 Try endpoints
```
curl http://localhost:3000/health
curl -X POST http://localhost:3000/echo -H "content-type: application/json" -d '{"hello":"docker"}'
```
## 📦 Development Tips

* Add a `package-lock.json` and switch Dockerfile to `npm ci --omit=dev` for reproducible builds.

* For live-reload in dev, run locally with `npm run start:dev` (or use `nodemon` outside the container).

* Keep secrets out of the image; pass via `-e KEY=VALUE` or `--env-file`.
## 🧹 Stop / Clean
```
./scripts/stop.sh
# or
docker stop day08-node
```