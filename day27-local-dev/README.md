# Day 27: Local Dev Environment using Docker

This project sets up a **local development environment** with:
- **Flask (Python) backend**
- **MySQL database**
- Managed by **Docker Compose**



## How to Run

```
# Build and start services
docker-compose up --build
```
Now your services will be running:

- **Backend:** `http://localhost:5000`

- **Database:** `http://localhost:3306`
## Test the Setup

- Open browser → `http://localhost:5000`

  👉 Should return: ✅ Local Dev Environment Running with Docker!

- DB Connection test → `http://localhost:5000/db`

  👉 Should return: 🗄️ DB Connected! Current time: <timestamp>

## Useful Commands
```
# Stop containers
docker-compose down

# Check logs
docker-compose logs -f

# Enter DB container
docker exec -it mysql_db mysql -u root -p
```
## Why This Project?

As a DevOps/Cloud Engineer, running multiple services locally in containers is essential for:

- Testing before deployment

- Keeping environments isolated

- Speeding up development