# Day 11: Docker Hub – Tagging and Pushing Image

This project demonstrates building a Docker image for a simple Flask app, tagging it, and pushing it to Docker Hub.

## Steps to Run

1. Build the Docker image and push to Docker Hub:
```
chmod +x push.sh
./push.sh
```
2. Verify on Docker Hub:

* Go to your Docker Hub account and check the repository day11-flask-app

3. Run locally:
```
docker run -p 5000:5000 nahidaws/day11-flask-app:v1.0
```
Visit `http://localhost:5000` to see the app running.
## Notes

* Replace `your-dockerhub-username` with your actual Docker Hub username.

* Increment the `TAG` for new versions.